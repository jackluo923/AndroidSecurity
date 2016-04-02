.class Lcom/adsdk/sdk/nativeads/NativeAdManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

.field private final synthetic val$ad:Lcom/adsdk/sdk/nativeads/NativeAd;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;Lcom/adsdk/sdk/nativeads/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$4;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    iput-object p2, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$4;->val$ad:Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$4;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdManager;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$7(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Lcom/adsdk/sdk/nativeads/NativeAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$4;->val$ad:Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdListener;->adLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V

    return-void
.end method
