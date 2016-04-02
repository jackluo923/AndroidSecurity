.class Lcom/adsdk/sdk/mraid/MraidBrowser$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$3;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$3;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    # getter for: Lcom/adsdk/sdk/mraid/MraidBrowser;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->access$2(Lcom/adsdk/sdk/mraid/MraidBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$3;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    # getter for: Lcom/adsdk/sdk/mraid/MraidBrowser;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->access$2(Lcom/adsdk/sdk/mraid/MraidBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method
