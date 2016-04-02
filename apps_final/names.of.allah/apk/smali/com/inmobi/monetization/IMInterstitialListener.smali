.class public interface abstract Lcom/inmobi/monetization/IMInterstitialListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onDismissInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
.end method

.method public abstract onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V
.end method

.method public abstract onInterstitialInteraction(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInterstitialLoaded(Lcom/inmobi/monetization/IMInterstitial;)V
.end method

.method public abstract onLeaveApplication(Lcom/inmobi/monetization/IMInterstitial;)V
.end method

.method public abstract onShowInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
.end method
