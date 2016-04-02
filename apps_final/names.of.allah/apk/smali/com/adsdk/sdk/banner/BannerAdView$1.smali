.class Lcom/adsdk/sdk/banner/BannerAdView$1;
.super Landroid/webkit/WebView;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/BannerAdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/BannerAdView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView$1;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView$1;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView$1;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView$1;->this$0:Lcom/adsdk/sdk/banner/BannerAdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/banner/BannerAdView;->access$0(Lcom/adsdk/sdk/banner/BannerAdView;Z)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
