.class public Lcom/nostra13/universalimageloader/core/assist/ImageSize;
.super Ljava/lang/Object;
.source "ImageSize.java"


# static fields
.field private static final TO_STRING_PATTERN:Ljava/lang/String; = "%sx%s"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->width:I

    .line 17
    iput p2, p0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->height:I

    .line 18
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    const-string v0, "%sx%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
