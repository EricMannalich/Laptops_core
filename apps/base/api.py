from django.contrib.postgres.search import SearchQuery, SearchVector
from rest_framework import generics, status, viewsets
from rest_framework.response import Response
from rest_framework.views import APIView

from apps.base.serializers import *

CANT_MIN_PAGINA = 5

def paginacion(model, pagina = 1, cant_pagina = CANT_MIN_PAGINA):
    model = model.all()[pagina * cant_pagina - cant_pagina:pagina * cant_pagina]
    return model

def chek_paginacion_int(pagina, cant_pagina):
    if pagina:
        if pagina < 1:
            pagina = 1
    else:
        pagina = 1
    if cant_pagina:
        if cant_pagina < CANT_MIN_PAGINA:
            cant_pagina = CANT_MIN_PAGINA
    else:
        cant_pagina = CANT_MIN_PAGINA
    return pagina, cant_pagina

def chek_paginacion_str(request_pagina, request_cant_pagina):
    pagina = 1
    cant_pagina = CANT_MIN_PAGINA
    if request_pagina:
        if request_pagina.isdigit():
            pagina = int(request_pagina)
    if request_cant_pagina:
        if request_cant_pagina.isdigit():
            cant_pagina = int(request_cant_pagina)
    pagina, cant_pagina = chek_paginacion_int(pagina,cant_pagina)
    return pagina, cant_pagina

class GeneralViewSet(viewsets.ModelViewSet):
    serializer_class = None

    def get_data(self, model):
        return self.serializer_class(model, many = True).data

    def get_queryset(self):
        return self.get_serializer().Meta.model.objects.filter(state = True)

    def destroy(self,request,pk=None):
        model = self.serializer_class().Meta.model.objects.filter(id = pk).first()
        if model:
            model.state = False
            model.save()
            return Response({'message': 'Eliminado correctamente!'}, status = status.HTTP_200_OK)
        return Response({'error': 'No encontrado!'}, status = status.HTTP_400_BAD_REQUEST)

class GeneraListPageAPIView(APIView):
    serializer_class = None
    serializer_model = None

    def get_queryset(self):
        return self.serializer_model().Meta.model.objects.filter(state = True)

    def get_data(self, model):
        return self.serializer_model(model, many = True).data

    def buscar(self, model, entrada):
        if entrada:
            if entrada != "null":
                model = model.annotate(search=SearchVector('nombre', 'sinopsis')).filter(search=SearchQuery(entrada, search_type='websearch'))
        return model
