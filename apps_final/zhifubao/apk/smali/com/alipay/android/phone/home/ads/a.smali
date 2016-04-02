.class final Lcom/alipay/android/phone/home/ads/a;
.super Ljava/lang/Object;
.source "AdsImageLoader.java"

# interfaces
.implements Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ads/AdsImageLoader;

.field private b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/home/ads/AdsImageLoader;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;I)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/android/phone/home/ads/a;->a:Lcom/alipay/android/phone/home/ads/AdsImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/alipay/android/phone/home/ads/a;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 113
    iput p3, p0, Lcom/alipay/android/phone/home/ads/a;->c:I

    .line 114
    return-void
.end method


# virtual methods
.method public final onCancel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/a;->a:Lcom/alipay/android/phone/home/ads/AdsImageLoader;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/a;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a(Lcom/alipay/android/phone/home/ads/AdsImageLoader;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V

    .line 120
    return-void
.end method

.method public final onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/a;->a:Lcom/alipay/android/phone/home/ads/AdsImageLoader;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/a;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a(Lcom/alipay/android/phone/home/ads/AdsImageLoader;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V

    .line 126
    return-void
.end method

.method public final onProgress(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/a;->a:Lcom/alipay/android/phone/home/ads/AdsImageLoader;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a(Lcom/alipay/android/phone/home/ads/AdsImageLoader;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "load icon succeed "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz p2, :cond_2

    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/a;->a:Lcom/alipay/android/phone/home/ads/AdsImageLoader;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->b(Lcom/alipay/android/phone/home/ads/AdsImageLoader;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/a;->a:Lcom/alipay/android/phone/home/ads/AdsImageLoader;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a(Lcom/alipay/android/phone/home/ads/AdsImageLoader;Ljava/util/List;)V

    .line 148
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/home/ads/Advert;

    invoke-direct {v0}, Lcom/alipay/android/phone/home/ads/Advert;-><init>()V

    .line 149
    iget v1, p0, Lcom/alipay/android/phone/home/ads/a;->c:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ads/Advert;->setIndex(I)V

    .line 150
    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/a;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ads/Advert;->setId(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/a;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ads/Advert;->setUrl(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/a;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ads/Advert;->setImageUrl(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/a;->a:Lcom/alipay/android/phone/home/ads/AdsImageLoader;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->c(Lcom/alipay/android/phone/home/ads/AdsImageLoader;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->rotationTime:I

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/a;->a:Lcom/alipay/android/phone/home/ads/AdsImageLoader;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->c(Lcom/alipay/android/phone/home/ads/AdsImageLoader;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v1

    iget v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->rotationTime:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ads/Advert;->setLoopTime(J)V

    .line 156
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/home/ads/Advert;->setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 157
    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/a;->a:Lcom/alipay/android/phone/home/ads/AdsImageLoader;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->b(Lcom/alipay/android/phone/home/ads/AdsImageLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/a;->a:Lcom/alipay/android/phone/home/ads/AdsImageLoader;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/a;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->b(Lcom/alipay/android/phone/home/ads/AdsImageLoader;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/a;->a:Lcom/alipay/android/phone/home/ads/AdsImageLoader;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/a;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a(Lcom/alipay/android/phone/home/ads/AdsImageLoader;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V

    goto :goto_0
.end method
