.class public Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;
.super Ljava/lang/Object;


# instance fields
.field private adPositionInterval:I

.field private firstAdPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "First ad position cannot be negative!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rows of original content between ads cannot be lower than 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->firstAdPosition:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->adPositionInterval:I

    return-void
.end method

.method private adsAlreadyShown(I)I
    .locals 4

    iget v0, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->firstAdPosition:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->firstAdPosition:I

    sub-int v0, p1, v0

    int-to-double v0, v0

    iget v2, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->adPositionInterval:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private countAdsWithinContent(I)I
    .locals 5

    iget v0, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->firstAdPosition:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->adPositionInterval:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->firstAdPosition:I

    sub-int v1, p1, v1

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    iget v1, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->firstAdPosition:I

    sub-int v1, p1, v1

    div-int v0, v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->firstAdPosition:I

    sub-int v1, p1, v1

    int-to-double v1, v1

    int-to-double v3, v0

    div-double v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public calculateShiftedCount(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->countAdsWithinContent(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public calculateShiftedPosition(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->adsAlreadyShown(I)I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public isAdPosition(I)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->firstAdPosition:I

    if-ge p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->firstAdPosition:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/adsdk/sdk/nativeads/BaseAdapterUtil;->adPositionInterval:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
