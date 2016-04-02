.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/c/e;
.super Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public final addExtHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 0

    return-void
.end method

.method public final getTransport()Lcom/alipay/mobile/common/transport/Transport;
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->c()Lcom/alipay/mobile/common/transport/Transport;

    move-result-object v0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdUrlUtil;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
