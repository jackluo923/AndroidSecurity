.class Lcom/adsdk/sdk/banner/AdView$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidView$MraidListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;

.field private final synthetic val$listener:Lcom/adsdk/sdk/AdListener;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;Lcom/adsdk/sdk/AdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$8;->this$0:Lcom/adsdk/sdk/banner/AdView;

    iput-object p2, p0, Lcom/adsdk/sdk/banner/AdView$8;->val$listener:Lcom/adsdk/sdk/AdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ViewState;)V
    .locals 3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$8;->val$listener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$8;->val$listener:Lcom/adsdk/sdk/AdListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/AdListener;->adClosed(Lcom/adsdk/sdk/Ad;Z)V

    :cond_0
    return-void
.end method

.method public onExpand(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$8;->val$listener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$8;->val$listener:Lcom/adsdk/sdk/AdListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/AdListener;->adClicked()V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$8;->val$listener:Lcom/adsdk/sdk/AdListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/AdListener;->adShown(Lcom/adsdk/sdk/Ad;Z)V

    :cond_0
    return-void
.end method

.method public onFailure(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$8;->val$listener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$8;->val$listener:Lcom/adsdk/sdk/AdListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/AdListener;->noAdFound()V

    :cond_0
    return-void
.end method

.method public onReady(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$8;->val$listener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$8;->val$listener:Lcom/adsdk/sdk/AdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/AdListener;->adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V

    :cond_0
    return-void
.end method
