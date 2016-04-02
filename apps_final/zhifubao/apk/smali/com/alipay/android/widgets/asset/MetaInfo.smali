.class public Lcom/alipay/android/widgets/asset/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 15
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 16
    const-string/jumbo v1, "20000004"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v1

    const-string/jumbo v2, "AssetApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    .line 17
    const-string/jumbo v2, "com.alipay.android.widgets.asset.AssetApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 18
    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/MetaInfo;->addApplication(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 20
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 21
    const-string/jumbo v1, "20000243"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v1

    const-string/jumbo v2, "AssetApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    .line 22
    const-string/jumbo v2, "com.alipay.android.widgets.asset.AssetApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 23
    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/MetaInfo;->addApplication(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 25
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 26
    const-class v1, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver$StartUpRunnable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 27
    const-class v1, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver$StartUpRunnable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 28
    const-string/jumbo v1, "com.alipay.mobile.client.STARTED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 29
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setWeight(I)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 30
    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 32
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 33
    const-class v1, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 34
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 35
    const-string/jumbo v3, "com.alipay.security.login"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 36
    const-string/jumbo v3, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 37
    const-string/jumbo v3, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    aput-object v3, v1, v2

    .line 34
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 38
    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 39
    return-void
.end method
