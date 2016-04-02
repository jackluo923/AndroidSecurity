.class Lcom/adsdk/sdk/mraid/MraidDisplayController$2;
.super Lcom/adsdk/sdk/mraid/MraidView$BaseMraidListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidView$BaseMraidListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ViewState;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->close()V

    return-void
.end method
