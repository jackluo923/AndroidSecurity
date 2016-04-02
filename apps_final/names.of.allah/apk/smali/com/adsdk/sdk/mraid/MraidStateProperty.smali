.class Lcom/adsdk/sdk/mraid/MraidStateProperty;
.super Lcom/adsdk/sdk/mraid/MraidProperty;


# instance fields
.field private final mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView$ViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidProperty;-><init>()V

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidStateProperty;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    return-void
.end method

.method public static createWithViewState(Lcom/adsdk/sdk/mraid/MraidView$ViewState;)Lcom/adsdk/sdk/mraid/MraidStateProperty;
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidStateProperty;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidStateProperty;-><init>(Lcom/adsdk/sdk/mraid/MraidView$ViewState;)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidStateProperty;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
