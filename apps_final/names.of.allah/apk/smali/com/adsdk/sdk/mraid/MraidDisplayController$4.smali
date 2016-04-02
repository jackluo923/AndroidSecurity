.class Lcom/adsdk/sdk/mraid/MraidDisplayController$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mediaScannerConnection:Landroid/media/MediaScannerConnection;

.field private pictureInputStream:Ljava/io/InputStream;

.field private pictureOutputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

.field private uri:Ljava/net/URI;

.field private final synthetic val$pictureStoragePath:Ljava/io/File;

.field private final synthetic val$uriString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    iput-object p2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->val$uriString:Ljava/lang/String;

    iput-object p3, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->val$pictureStoragePath:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MraidDisplayController$4;)Lcom/adsdk/sdk/mraid/MraidDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    return-object v0
.end method

.method private loadPictureIntoGalleryApp(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;Ljava/lang/String;Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;)V

    new-instance v1, Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    # invokes: Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$5(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;->access$1(Lcom/adsdk/sdk/mraid/MraidDisplayController$MoPubMediaScannerConnectionClient;Landroid/media/MediaScannerConnection;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->val$uriString:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->uri:Ljava/net/URI;

    invoke-static {}, Lcom/adsdk/sdk/mraid/HttpClientFactory;->create()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->uri:Ljava/net/URI;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->pictureInputStream:Ljava/io/InputStream;

    sget-object v1, Lcom/adsdk/sdk/mraid/ResponseHeader;->LOCATION:Lcom/adsdk/sdk/mraid/ResponseHeader;

    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/adsdk/sdk/mraid/ResponseHeader;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->uri:Ljava/net/URI;

    :cond_0
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->uri:Ljava/net/URI;

    # invokes: Lcom/adsdk/sdk/mraid/MraidDisplayController;->getFileNameForUriAndHttpResponse(Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$6(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->val$pictureStoragePath:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->pictureOutputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->pictureInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->pictureOutputStream:Ljava/io/OutputStream;

    invoke-static {v1, v2}, Lcom/adsdk/sdk/mraid/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->loadPictureIntoGalleryApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->pictureInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/Streams;->closeStream(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->pictureOutputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/Streams;->closeStream(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    # getter for: Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$2(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidDisplayController$4$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$4$1;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->pictureInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/Streams;->closeStream(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->pictureOutputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->pictureInputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/Streams;->closeStream(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;->pictureOutputStream:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/Streams;->closeStream(Ljava/io/Closeable;)V

    throw v0
.end method
