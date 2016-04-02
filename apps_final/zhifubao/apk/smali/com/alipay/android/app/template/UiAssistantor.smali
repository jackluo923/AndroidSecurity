.class public Lcom/alipay/android/app/template/UiAssistantor;
.super Ljava/lang/Object;
.source "UiAssistantor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;I)V
    .locals 10

    .prologue
    .line 18
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/alipay/android/app/template/UiAssistantor;->loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public static loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, p7

    .line 29
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x2

    new-array v3, v0, [I

    const/4 v0, 0x0

    aput p2, v3, v0

    const/4 v0, 0x1

    aput p3, v3, v0

    .line 31
    invoke-static {}, Lcom/alipay/android/app/template/TemplateImageLoader;->getInstance()Lcom/alipay/android/app/template/TemplateImageLoader;

    move-result-object v0

    move-object v1, p0

    move v4, p6

    move-object v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/TemplateImageLoader;->loadNetImage(Landroid/view/View;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;I)V

    .line 34
    :cond_0
    return-void

    :cond_1
    move-object v2, p1

    goto :goto_0
.end method

.method public static openWeb(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 40
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v2, "showTitleBar"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    const-string/jumbo v2, "showToolBar"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 46
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 49
    return-void
.end method
