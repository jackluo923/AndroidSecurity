.class public final Lcom/alipay/mmmbbbxxx/a/a;
.super Ljava/lang/Object;
.source "MsgboxAppContextHelper.java"


# direct methods
.method public static a()Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    goto :goto_0
.end method
