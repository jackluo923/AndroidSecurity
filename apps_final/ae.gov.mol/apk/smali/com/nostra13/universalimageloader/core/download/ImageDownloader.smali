.class public abstract Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# static fields
.field protected static final BUFFER_SIZE:I = 0x2000

.field protected static final PROTOCOL_FILE:Ljava/lang/String; = "file"

.field protected static final PROTOCOL_FTP:Ljava/lang/String; = "ftp"

.field protected static final PROTOCOL_HTTP:Ljava/lang/String; = "http"

.field protected static final PROTOCOL_HTTPS:Ljava/lang/String; = "https"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStream(Ljava/net/URI;)Ljava/io/InputStream;
    .locals 2
    .param p1, "imageUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ftp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStreamFromNetwork(Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v1

    .line 31
    :goto_0
    return-object v1

    .line 28
    :cond_1
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStreamFromFile(Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStreamFromOtherSource(Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method protected getStreamFromFile(Ljava/net/URI;)Ljava/io/InputStream;
    .locals 3
    .param p1, "imageUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method protected abstract getStreamFromNetwork(Ljava/net/URI;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getStreamFromOtherSource(Ljava/net/URI;)Ljava/io/InputStream;
    .locals 1
    .param p1, "imageUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
