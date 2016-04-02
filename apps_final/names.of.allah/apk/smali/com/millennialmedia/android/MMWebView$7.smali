.class Lcom/millennialmedia/android/MMWebView$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;

.field final synthetic val$adView:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$7;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method handleUnresize()V
    .locals 3

    const/16 v2, -0x32

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    # invokes: Lcom/millennialmedia/android/MMWebView;->hasDefaultResizeParams()Z
    invoke-static {v0}, Lcom/millennialmedia/android/MMWebView;->access$200(Lcom/millennialmedia/android/MMWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v1, v1, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v1, v1, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput v2, v0, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput v2, v0, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$7;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->handleUnresize()V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView$7;->handleUnresize()V

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    const-string v2, "javascript:MMJS.sdk.setState(\'default\');"

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    const-string v2, "default"

    iput-object v2, v0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$7;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->invalidate()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
