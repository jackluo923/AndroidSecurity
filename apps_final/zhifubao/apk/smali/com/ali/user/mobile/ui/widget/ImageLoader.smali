.class public Lcom/ali/user/mobile/ui/widget/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field static final DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field static final DEFAULT_READ_TIMEOUT:I = 0x4e20

.field private static a:Lcom/ali/user/mobile/ui/widget/ImageLoader;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/mobile/ui/widget/ImageLoader;->a:Lcom/ali/user/mobile/ui/widget/ImageLoader;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/ui/widget/ImageLoader;->d:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v1, Lcom/ali/user/mobile/ui/widget/ImageLoader;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    sput-object p1, Lcom/ali/user/mobile/ui/widget/ImageLoader;->b:Landroid/content/Context;

    const-string/jumbo v0, "aliuserAlbum"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "AliuserImageLoader"

    const-string/jumbo v2, "mContext.getExternalFilesDir = null"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/mobile/ui/widget/ImageLoader;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "aliuserAlbum"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/ui/widget/ImageLoader;->c:Ljava/lang/String;

    .line 75
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/ali/user/mobile/ui/widget/ImageLoader;->c:Ljava/lang/String;

    const-string/jumbo v3, "http"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v2, 0xa00000

    invoke-static {v0, v2, v3}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v1

    return-void

    .line 74
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/ui/widget/ImageLoader;->c:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;
    .locals 2

    .prologue
    .line 202
    if-eqz p0, :cond_0

    .line 203
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->imageDownloadCallback:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;

    if-eqz v1, :cond_0

    .line 205
    check-cast v0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/ui/widget/ImageLoader;Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;
    .locals 1

    .prologue
    .line 201
    invoke-static {p1}, Lcom/ali/user/mobile/ui/widget/ImageLoader;->a(Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public static dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/http/HttpResponseCache;->flush()V

    .line 173
    :cond_0
    sput-object v2, Lcom/ali/user/mobile/ui/widget/ImageLoader;->a:Lcom/ali/user/mobile/ui/widget/ImageLoader;

    .line 174
    sput-object v2, Lcom/ali/user/mobile/ui/widget/ImageLoader;->c:Ljava/lang/String;

    .line 175
    sput-object v2, Lcom/ali/user/mobile/ui/widget/ImageLoader;->b:Landroid/content/Context;

    .line 176
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/ui/widget/ImageLoader;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/ali/user/mobile/ui/widget/ImageLoader;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/ui/widget/ImageLoader;->a:Lcom/ali/user/mobile/ui/widget/ImageLoader;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/ali/user/mobile/ui/widget/ImageLoader;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/ui/widget/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/ui/widget/ImageLoader;->a:Lcom/ali/user/mobile/ui/widget/ImageLoader;

    .line 65
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/ui/widget/ImageLoader;->a:Lcom/ali/user/mobile/ui/widget/ImageLoader;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public downLoad(Ljava/lang/String;Landroid/view/View;Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 128
    invoke-static {p2}, Lcom/ali/user/mobile/ui/widget/ImageLoader;->a(Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    # getter for: Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->access$2(Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->cancel(Z)Z

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 129
    new-instance v0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;-><init>(Lcom/ali/user/mobile/ui/widget/ImageLoader;Ljava/lang/String;Landroid/view/View;Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;)V

    .line 130
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 136
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 135
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 138
    return-void
.end method
