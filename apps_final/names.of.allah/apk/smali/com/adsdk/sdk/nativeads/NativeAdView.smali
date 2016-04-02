.class public Lcom/adsdk/sdk/nativeads/NativeAdView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private adView:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private impressionReported:Z

.field private listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

.field private trackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/nativeads/NativeAd;Lcom/adsdk/sdk/nativeads/NativeViewBinder;Lcom/adsdk/sdk/nativeads/NativeAdListener;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->getAdLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/adsdk/sdk/nativeads/NativeAd;->getTrackers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->trackers:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    invoke-virtual {p0, p2, p3}, Lcom/adsdk/sdk/nativeads/NativeAdView;->fillAdView(Lcom/adsdk/sdk/nativeads/NativeAd;Lcom/adsdk/sdk/nativeads/NativeViewBinder;)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/nativeads/NativeAdView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/nativeads/NativeAdView;)Lcom/adsdk/sdk/nativeads/NativeAdListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    return-object v0
.end method

.method private notifyImpression()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/nativeads/NativeAdView$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/nativeads/NativeAdView$1;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private trackImpression(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/adsdk/sdk/nativeads/NativeAdView$2;

    invoke-direct {v0, p0, p1}, Lcom/adsdk/sdk/nativeads/NativeAdView$2;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdView;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->impressionReported:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->impressionReported:Z

    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/NativeAdView;->notifyImpression()V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->trackers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;

    iget-object v2, v0, Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;->type:Ljava/lang/String;

    const-string v3, "impression"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/nativeads/NativeAdView;->trackImpression(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fillAdView(Lcom/adsdk/sdk/nativeads/NativeAd;Lcom/adsdk/sdk/nativeads/NativeViewBinder;)V
    .locals 5

    invoke-virtual {p2}, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->getTextAssetsBindingsKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->getImageAssetsBindingsKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->getIdForTextAsset(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v3, "rating"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->getTextAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setRating(F)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot fill view for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->getTextAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->getIdForImageAsset(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    :try_start_2
    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->getImageAsset(Ljava/lang/String;)Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;

    move-result-object v3

    iget-object v3, v3, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot fill view for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
