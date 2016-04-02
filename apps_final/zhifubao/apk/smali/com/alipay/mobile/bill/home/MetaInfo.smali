.class public Lcom/alipay/mobile/bill/home/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 16
    const-string/jumbo v0, "BillHomeReceiver"

    const-string/jumbo v1, "start static metainfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 19
    const-class v1, Lcom/alipay/mobile/bill/home/BillHomeReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 20
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 21
    const-string/jumbo v2, "com.alipay.security.login"

    aput-object v2, v1, v3

    .line 20
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 23
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/bill/home/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 27
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 28
    const-class v1, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 29
    const-class v1, Lcom/alipay/mobile/bill/home/service/BillHomeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 30
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 31
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/bill/home/MetaInfo;->addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 32
    return-void
.end method
