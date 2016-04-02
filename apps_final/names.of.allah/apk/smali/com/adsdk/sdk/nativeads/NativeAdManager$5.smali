.class Lcom/adsdk/sdk/nativeads/NativeAdManager$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$5;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$5;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdManager;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$7(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Lcom/adsdk/sdk/nativeads/NativeAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsdk/sdk/nativeads/NativeAdListener;->adFailedToLoad()V

    return-void
.end method
