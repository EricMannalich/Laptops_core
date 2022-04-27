from rest_framework import serializers
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer

from apps.users.models import User

class CustomTokenObtainPairSerializer(TokenObtainPairSerializer):
    pass


class CustomUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'image' )
    

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        exclude = ('groups','user_permissions',)
    
    def create(self,validated_data):
        user = User(**validated_data)
        user.set_password(validated_data['password'])
        user.save()
        return user
    
    def update(self,instance,validated_data):
        updated_user = super().update(instance,validated_data)
        updated_user.set_password(validated_data['password'])
        updated_user.save()
        return updated_user

class UserUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('username', 'email', 'first_name', 'last_name', 'image')

class UserListSerializer(serializers.ModelSerializer):
    class Meta:
        model = User

    def to_representation(self,instance):
        return {
            'id': instance['id'],
            'username': instance['username'],
            'email': instance['email'],
            'image': instance['image'] if instance['image'] != '' else ''
        }


