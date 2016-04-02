.class public abstract Lcom/alipay/mobile/framework/service/GeofenceService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract registerGeofenceTriggerListener(Ljava/lang/String;Lcom/alipay/mobile/framework/service/GeofenceService$OnGeofenceTriggerListener;)V
.end method

.method public abstract requestGeofenceTrigger()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestSyncGeofenceData()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract unRegisterGeofenceTriggerListener(Ljava/lang/String;Lcom/alipay/mobile/framework/service/GeofenceService$OnGeofenceTriggerListener;)V
.end method
