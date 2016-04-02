.class Lcom/adsdk/sdk/mraid/MraidAbstractController;
.super Ljava/lang/Object;


# instance fields
.field private final mMraidView:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidAbstractController;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    return-void
.end method


# virtual methods
.method public getMraidView()Lcom/adsdk/sdk/mraid/MraidView;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAbstractController;->mMraidView:Lcom/adsdk/sdk/mraid/MraidView;

    return-object v0
.end method
