.class public Lcom/nostra13/universalimageloader/core/download/HttpClientImageDownloader;
.super Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.source "HttpClientImageDownloader.java"


# instance fields
.field private httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/download/HttpClientImageDownloader;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 19
    return-void
.end method


# virtual methods
.method protected getStreamFromNetwork(Ljava/net/URI;)Ljava/io/InputStream;
    .locals 5
    .param p1, "imageUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 24
    .local v2, "httpRequest":Lorg/apache/http/client/methods/HttpGet;
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/download/HttpClientImageDownloader;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 25
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 26
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 27
    .local v0, "bufHttpEntity":Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v0}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    return-object v4
.end method
