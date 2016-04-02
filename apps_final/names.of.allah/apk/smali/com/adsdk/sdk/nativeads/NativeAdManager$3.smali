.class Lcom/adsdk/sdk/nativeads/NativeAdManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

.field private final synthetic val$clickUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$3;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    iput-object p2, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$3;->val$clickUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$3;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # invokes: Lcom/adsdk/sdk/nativeads/NativeAdManager;->notifyAdClicked()V
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$5(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$3;->val$clickUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$3;->val$clickUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$3;->val$clickUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$3;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$6(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
