.class Lcom/adsdk/sdk/nativeads/NativeAdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/nativeads/NativeAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdView;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdView;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/NativeAdView;->access$0(Lcom/adsdk/sdk/nativeads/NativeAdView;)Lcom/adsdk/sdk/nativeads/NativeAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsdk/sdk/nativeads/NativeAdListener;->impression()V

    return-void
.end method
