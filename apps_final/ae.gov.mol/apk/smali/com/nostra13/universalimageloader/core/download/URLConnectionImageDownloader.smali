.class public Lcom/nostra13/universalimageloader/core/download/URLConnectionImageDownloader;
.super Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.source "URLConnectionImageDownloader.java"


# static fields
.field public static final DEFAULT_HTTP_CONNECT_TIMEOUT:I = 0x1388

.field public static final DEFAULT_HTTP_READ_TIMEOUT:I = 0x4e20


# instance fields
.field private connectTimeout:I

.field private readTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    const/16 v0, 0x1388

    const/16 v1, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/nostra13/universalimageloader/core/download/URLConnectionImageDownloader;-><init>(II)V

    .line 28
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;-><init>()V

    .line 31
    iput p1, p0, Lcom/nostra13/universalimageloader/core/download/URLConnectionImageDownloader;->connectTimeout:I

    .line 32
    iput p2, p0, Lcom/nostra13/universalimageloader/core/download/URLConnectionImageDownloader;->readTimeout:I

    .line 33
    return-void
.end method


# virtual methods
.method public getStreamFromNetwork(Ljava/net/URI;)Ljava/io/InputStream;
    .locals 5
    .param p1, "imageUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 38
    .local v0, "conn":Ljava/net/URLConnection;
    iget v1, p0, Lcom/nostra13/universalimageloader/core/download/URLConnectionImageDownloader;->connectTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 39
    iget v1, p0, Lcom/nostra13/universalimageloader/core/download/URLConnectionImageDownloader;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 40
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method
