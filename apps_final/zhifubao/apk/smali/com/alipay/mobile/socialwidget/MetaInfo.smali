.class public Lcom/alipay/mobile/socialwidget/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 14
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 15
    const-string/jumbo v1, "SocialRouteApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 16
    const-class v1, Lcom/alipay/mobile/socialwidget/SocialRouteApp;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 17
    const-string/jumbo v1, "20000252"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 18
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/MetaInfo;->addApplication(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 20
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 21
    const-class v1, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$SdkLoadPipeline;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 22
    const-class v1, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$SdkLoadPipeline;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 23
    const-string/jumbo v1, "com.alipay.mobile.client.STARTED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 24
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 26
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 27
    const-class v1, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ChatLoadPipeline;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 28
    const-class v1, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ChatLoadPipeline;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 29
    const-string/jumbo v1, "com.alipay.mobile.PORTAL_IDLE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 30
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 31
    return-void
.end method
