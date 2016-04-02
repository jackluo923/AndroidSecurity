.class public Lcom/alipay/android/phone/home/ads/AdsImageLoader;
.super Ljava/lang/Object;
.source "AdsImageLoader.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private c:Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;

.field private d:I

.field private e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/home/ads/Advert;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "AdsImageLoader"

    iput-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->b:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 30
    iput-object v2, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->c:Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->d:I

    .line 41
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->g:Z

    .line 51
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->g:Z

    .line 52
    iput-object p1, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->h:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private a()Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->b:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->b:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->b:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ads/AdsImageLoader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ads/AdsImageLoader;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->b(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ads/AdsImageLoader;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->f:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V
    .locals 4

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->d:I

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "load icons success and current num "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/home/ads/AdsImageLoader;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->f:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 2

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->d:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->c:Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->c:Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/home/ads/AdsImageLoader;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V
    .locals 4

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->d:I

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "load icons failed and current num "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/home/ads/AdsImageLoader;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;II)V
    .locals 7

    .prologue
    .line 67
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->d:I

    if-lez v0, :cond_2

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a:Ljava/lang/String;

    const-string/jumbo v2, "already running should new another instance"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    iput-object p2, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->c:Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;

    .line 78
    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->d:I

    .line 79
    iput-object p1, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->e:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ready to download and size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    .line 82
    iget-object v1, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 83
    add-int/lit8 v2, v1, 0x1

    if-lez p3, :cond_3

    if-gtz p4, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a()Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v4

    iget-object v5, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    new-instance v6, Lcom/alipay/android/phone/home/ads/a;

    invoke-direct {v6, p0, v0, v1}, Lcom/alipay/android/phone/home/ads/a;-><init>(Lcom/alipay/android/phone/home/ads/AdsImageLoader;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;I)V

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move v1, v2

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a()Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v4

    iget-object v5, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    new-instance v6, Lcom/alipay/android/phone/home/ads/a;

    invoke-direct {v6, p0, v0, v1}, Lcom/alipay/android/phone/home/ads/a;-><init>(Lcom/alipay/android/phone/home/ads/AdsImageLoader;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;I)V

    invoke-virtual {v4, v5, v6, p3, p4}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move v1, v2

    goto :goto_1
.end method
