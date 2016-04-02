.class Lorg/apache/http/impl/client/HttpRedirect;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpRedirect.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private method:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/net/URI;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 50
    const-string v0, "HEAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "HEAD"

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpRedirect;->method:Ljava/lang/String;

    .line 55
    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/HttpRedirect;->setURI(Ljava/net/URI;)V

    .line 56
    return-void

    .line 53
    :cond_0
    const-string v0, "GET"

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpRedirect;->method:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpRedirect;->method:Ljava/lang/String;

    return-object v0
.end method
