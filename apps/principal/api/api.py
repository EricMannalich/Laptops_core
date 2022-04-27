import datetime

from django.contrib.postgres.search import SearchQuery, SearchVector
from rest_framework import status
from rest_framework.response import Response

from apps.principal.api.serializers import *
from apps.principal.models import *
from apps.principal.views import *
from apps.base.api import *
from apps.base.serializers import *

class CPUViewSet(GeneralViewSet):
    serializer_class = CPUSerializer

class GPUViewSet(GeneralViewSet):
    serializer_class = GPUSerializer

class RAMViewSet(GeneralViewSet):
    serializer_class = RAMSerializer

class Disco_DuroViewSet(GeneralViewSet):
    serializer_class = Disco_DuroSerializer

class MonitorViewSet(GeneralViewSet):
    serializer_class = MonitorSerializer

class LaptopViewSet(GeneralViewSet):
    serializer_class = LaptopSerializer

class LaptopListApiView(GeneraListPageAPIView):
    serializer_class = BuscarSerializer
    serializer_model = LaptopSerializer

    def get(self, request):
        entrada = request.GET.get('entrada')
        request_pagina = request.GET.get('pagina')
        request_cant_pagina = request.GET.get('cant_pagina')
        puntuacion = request.GET.get('puntuacion')
        orden = request.GET.get('orden')
        pagina, cant_pagina = chek_paginacion_str(request_pagina,request_cant_pagina)
        model = self.get_queryset()
        model = self.buscar(model, entrada)
        if model:
            count = model.count()
            if (orden):
                if (orden == "nombre_ascendente"):
                    model = model.order_by('nombre')
                elif (orden == "nombre_descendente"):
                    model = model.order_by('-nombre')
            model = paginacion(model, pagina, cant_pagina)
            data = self.get_data(model)
            return Response({'count':count, 'data': data}, status = status.HTTP_200_OK)
        return Response({'error': 'No encontrado!'}, status = status.HTTP_400_BAD_REQUEST)

class GameViewSet(GeneralViewSet):
    serializer_class = GameSerializer

class RendimientoViewSet(GeneralViewSet):
    serializer_class = RendimientoSerializer