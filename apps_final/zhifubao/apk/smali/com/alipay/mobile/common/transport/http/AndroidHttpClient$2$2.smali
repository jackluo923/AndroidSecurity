.class Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2$2;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2$2;->this$1:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 2

    .prologue
    .line 233
    const-wide/32 v0, 0x2bf20

    return-wide v0
.end method
