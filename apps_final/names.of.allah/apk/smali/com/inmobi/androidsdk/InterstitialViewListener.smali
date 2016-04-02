.class public interface abstract Lcom/inmobi/androidsdk/InterstitialViewListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onAdRequestFailed(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
.end method

.method public abstract onAdRequestLoaded(Lcom/inmobi/androidsdk/InterstitialView;)V
.end method

.method public abstract onDismissAdScreen(Lcom/inmobi/androidsdk/InterstitialView;)V
.end method

.method public abstract onIncentCompleted(Lcom/inmobi/androidsdk/InterstitialView;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/androidsdk/InterstitialView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInterstitialInteraction(Lcom/inmobi/androidsdk/InterstitialView;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/androidsdk/InterstitialView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLeaveApplication(Lcom/inmobi/androidsdk/InterstitialView;)V
.end method

.method public abstract onShowAdScreen(Lcom/inmobi/androidsdk/InterstitialView;)V
.end method
