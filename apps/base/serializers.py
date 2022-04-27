from rest_framework import serializers

class BuscarSerializer(serializers.Serializer):
    entrada = serializers.CharField(max_length=50, default="", required=False,allow_null=True)
    pagina = serializers.IntegerField(default=1, required=False,allow_null=True)
    cant_pagina = serializers.IntegerField(default=10, required=False,allow_null=True)
    
