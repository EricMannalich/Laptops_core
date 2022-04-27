from rest_framework.routers import DefaultRouter

from apps.principal.api.api import *

router = DefaultRouter()
router.register(r'cpu',CPUViewSet, basename = 'cpu')
router.register(r'gpu',GPUViewSet, basename = 'gpu')
router.register(r'ram',RAMViewSet, basename = 'ram')
router.register(r'disco_duro',Disco_DuroViewSet, basename = 'disco_duro')
router.register(r'monitor',MonitorViewSet, basename = 'monitor')
router.register(r'laptop',LaptopViewSet, basename = 'laptop')
router.register(r'game',GameViewSet, basename = 'game')
router.register(r'rendimiento',RendimientoViewSet, basename = 'rendimiento')
urlpatterns = router.urls