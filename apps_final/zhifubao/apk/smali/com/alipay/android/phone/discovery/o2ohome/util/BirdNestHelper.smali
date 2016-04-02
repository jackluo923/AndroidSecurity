.class public Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;
.super Ljava/lang/Object;
.source "BirdNestHelper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->context:Landroid/content/Context;

    .line 24
    const-class v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 25
    return-void
.end method


# virtual methods
.method public buildTemplate(Ljava/util/Map;Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper$OnTemplatePrepareFinish;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper$OnTemplatePrepareFinish;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v3}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->handleBirdResponse(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 32
    const-string/jumbo v3, "O2OHOME"

    const-string/jumbo v4, "BirdNest_Rsp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-static {v3, v4, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorLogHelper;->performance(Ljava/lang/String;Ljava/lang/String;J)V

    .line 35
    :cond_0
    if-eqz p2, :cond_1

    .line 36
    invoke-interface {p2, v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper$OnTemplatePrepareFinish;->onFinish(Ljava/util/Map;)V

    .line 38
    :cond_1
    return-void
.end method

.method public getBirdParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
