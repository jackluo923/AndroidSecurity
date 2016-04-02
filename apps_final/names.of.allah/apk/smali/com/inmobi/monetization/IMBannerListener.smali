.class public interface abstract Lcom/inmobi/monetization/IMBannerListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onBannerInteraction(Lcom/inmobi/monetization/IMBanner;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V
.end method

.method public abstract onBannerRequestSucceeded(Lcom/inmobi/monetization/IMBanner;)V
.end method

.method public abstract onDismissBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
.end method

.method public abstract onLeaveApplication(Lcom/inmobi/monetization/IMBanner;)V
.end method

.method public abstract onShowBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
.end method
