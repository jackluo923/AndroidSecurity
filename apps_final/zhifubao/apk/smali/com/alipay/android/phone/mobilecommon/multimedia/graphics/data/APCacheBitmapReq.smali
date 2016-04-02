.class public Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APCacheBitmapReq;
.super Ljava/lang/Object;


# instance fields
.field public cutScaleType:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

.field public height:I

.field public loadFromDiskCache:Z

.field public path:Ljava/lang/String;

.field public plugin:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;

.field public srcSize:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;->KEEP_RATIO:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APCacheBitmapReq;->cutScaleType:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APCacheBitmapReq;->loadFromDiskCache:Z

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APCacheBitmapReq;->path:Ljava/lang/String;

    iput p2, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APCacheBitmapReq;->width:I

    iput p3, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APCacheBitmapReq;->height:I

    return-void
.end method
