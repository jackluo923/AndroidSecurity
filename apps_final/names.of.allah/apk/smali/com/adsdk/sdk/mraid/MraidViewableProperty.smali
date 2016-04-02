.class Lcom/adsdk/sdk/mraid/MraidViewableProperty;
.super Lcom/adsdk/sdk/mraid/MraidProperty;


# instance fields
.field private final mViewable:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidProperty;-><init>()V

    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidViewableProperty;->mViewable:Z

    return-void
.end method

.method public static createWithViewable(Z)Lcom/adsdk/sdk/mraid/MraidViewableProperty;
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidViewableProperty;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidViewableProperty;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "viewable: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidViewableProperty;->mViewable:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
