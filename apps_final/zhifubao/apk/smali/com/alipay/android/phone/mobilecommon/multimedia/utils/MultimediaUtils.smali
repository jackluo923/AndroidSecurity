.class public Lcom/alipay/android/phone/mobilecommon/multimedia/utils/MultimediaUtils;
.super Ljava/lang/Object;


# static fields
.field private static DENSITYs:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/utils/MultimediaUtils;->DENSITYs:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPreferDensity(Landroid/content/Context;)F
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    sget-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/utils/MultimediaUtils;->DENSITYs:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    :goto_1
    return v0

    :cond_0
    sget-object v3, Lcom/alipay/android/phone/mobilecommon/multimedia/utils/MultimediaUtils;->DENSITYs:[F

    aget v3, v3, v0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/multimedia/utils/MultimediaUtils;->DENSITYs:[F

    aget v0, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static preferZoomPx(Landroid/content/Context;F)I
    .locals 1

    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/utils/MultimediaUtils;->getPreferDensity(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method
