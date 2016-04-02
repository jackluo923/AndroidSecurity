.class Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;
.super Lcom/adsdk/sdk/mraid/MraidProperty;


# instance fields
.field private final mScreenHeight:I

.field private final mScreenWidth:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidProperty;-><init>()V

    iput p1, p0, Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;->mScreenWidth:I

    iput p2, p0, Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;->mScreenHeight:I

    return-void
.end method

.method public static createWithSize(II)Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;

    invoke-direct {v0, p0, p1}, Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "screenSize: { width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
