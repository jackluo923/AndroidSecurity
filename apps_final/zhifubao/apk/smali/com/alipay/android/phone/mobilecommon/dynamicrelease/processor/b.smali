.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;
.super Ljava/lang/Object;
.source "DynamicReleaseProcessor.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/Config;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addExtHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getTransport()Lcom/alipay/mobile/common/transport/Transport;
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;)V

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->access$500(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final giveResponseHeader(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public final isCompress()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    return v0
.end method
