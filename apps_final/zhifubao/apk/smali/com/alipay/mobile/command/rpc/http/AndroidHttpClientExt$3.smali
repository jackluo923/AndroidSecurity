.class Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$3;->a:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 2

    const-wide/32 v0, 0x2bf20

    return-wide v0
.end method
