.class public interface abstract Lcom/inmobi/androidsdk/BannerViewListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onAdRequestCompleted(Lcom/inmobi/androidsdk/BannerView;)V
.end method

.method public abstract onAdRequestFailed(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
.end method

.method public abstract onBannerInteraction(Lcom/inmobi/androidsdk/BannerView;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/androidsdk/BannerView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDismissAdScreen(Lcom/inmobi/androidsdk/BannerView;)V
.end method

.method public abstract onLeaveApplication(Lcom/inmobi/androidsdk/BannerView;)V
.end method

.method public abstract onShowAdScreen(Lcom/inmobi/androidsdk/BannerView;)V
.end method
