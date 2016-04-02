.class Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$CurlLogger;->this$0:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$1;)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$CurlLogger;-><init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$CurlLogger;->this$0:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    # getter for: Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->e:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->access$300(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->access$400(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 466
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->access$600(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    .line 468
    :cond_0
    return-void
.end method
