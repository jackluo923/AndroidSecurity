.class Lcom/mobfox/adapter/MobFoxAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/AdListener;


# instance fields
.field final synthetic this$0:Lcom/mobfox/adapter/MobFoxAdapter;


# direct methods
.method constructor <init>(Lcom/mobfox/adapter/MobFoxAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked()V
    .locals 2

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    # getter for: Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/mobfox/adapter/MobFoxAdapter;->access$2(Lcom/mobfox/adapter/MobFoxAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    # getter for: Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/mobfox/adapter/MobFoxAdapter;->access$2(Lcom/mobfox/adapter/MobFoxAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/d;->onClick(Lcom/google/ads/mediation/c;)V

    :cond_0
    return-void
.end method

.method public adClosed(Lcom/adsdk/sdk/Ad;Z)V
    .locals 2

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    # getter for: Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/mobfox/adapter/MobFoxAdapter;->access$2(Lcom/mobfox/adapter/MobFoxAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    # getter for: Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/mobfox/adapter/MobFoxAdapter;->access$2(Lcom/mobfox/adapter/MobFoxAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/d;->onDismissScreen(Lcom/google/ads/mediation/c;)V

    :cond_0
    return-void
.end method

.method public adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    # getter for: Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/mobfox/adapter/MobFoxAdapter;->access$2(Lcom/mobfox/adapter/MobFoxAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    # getter for: Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/mobfox/adapter/MobFoxAdapter;->access$2(Lcom/mobfox/adapter/MobFoxAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/d;->onReceivedAd(Lcom/google/ads/mediation/c;)V

    :cond_0
    return-void
.end method

.method public adShown(Lcom/adsdk/sdk/Ad;Z)V
    .locals 2

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    # getter for: Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/mobfox/adapter/MobFoxAdapter;->access$2(Lcom/mobfox/adapter/MobFoxAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    # getter for: Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/mobfox/adapter/MobFoxAdapter;->access$2(Lcom/mobfox/adapter/MobFoxAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/d;->onPresentScreen(Lcom/google/ads/mediation/c;)V

    :cond_0
    return-void
.end method

.method public noAdFound()V
    .locals 3

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    # getter for: Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/mobfox/adapter/MobFoxAdapter;->access$2(Lcom/mobfox/adapter/MobFoxAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    # getter for: Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/mobfox/adapter/MobFoxAdapter;->access$2(Lcom/mobfox/adapter/MobFoxAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/adapter/MobFoxAdapter$1;->this$0:Lcom/mobfox/adapter/MobFoxAdapter;

    sget-object v2, Lcom/google/ads/b;->b:Lcom/google/ads/b;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/d;->onFailedToReceiveAd(Lcom/google/ads/mediation/c;Lcom/google/ads/b;)V

    :cond_0
    return-void
.end method
