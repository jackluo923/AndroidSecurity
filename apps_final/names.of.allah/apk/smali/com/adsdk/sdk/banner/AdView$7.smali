.class Lcom/adsdk/sdk/banner/AdView$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;

.field private final synthetic val$listener:Lcom/adsdk/sdk/AdListener;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;Lcom/adsdk/sdk/AdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$7;->this$0:Lcom/adsdk/sdk/banner/AdView;

    iput-object p2, p0, Lcom/adsdk/sdk/banner/AdView$7;->val$listener:Lcom/adsdk/sdk/AdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClosed()V
    .locals 3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->val$listener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->val$listener:Lcom/adsdk/sdk/AdListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/AdListener;->adClosed(Lcom/adsdk/sdk/Ad;Z)V

    :cond_0
    return-void
.end method

.method public onBannerExpanded()V
    .locals 3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->val$listener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->val$listener:Lcom/adsdk/sdk/AdListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/AdListener;->adClicked()V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->val$listener:Lcom/adsdk/sdk/AdListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/AdListener;->adShown(Lcom/adsdk/sdk/Ad;Z)V

    :cond_0
    return-void
.end method

.method public onBannerFailed()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->loadCustomEventBanner()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$10(Lcom/adsdk/sdk/banner/AdView;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$11(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/customevents/CustomEventBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$12(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/banner/BannerAdView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->this$0:Lcom/adsdk/sdk/banner/AdView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$7;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;
    invoke-static {v1}, Lcom/adsdk/sdk/banner/AdView;->access$12(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/banner/BannerAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$13(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->addMRAIDBannerView()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$14(Lcom/adsdk/sdk/banner/AdView;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->notifyNoAd()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$15(Lcom/adsdk/sdk/banner/AdView;)V

    goto :goto_0
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->val$listener:Lcom/adsdk/sdk/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$7;->val$listener:Lcom/adsdk/sdk/AdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/AdListener;->adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V

    :cond_0
    return-void
.end method
