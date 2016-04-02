.class Lcom/millennialmedia/android/MMWebView$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;

.field final synthetic val$adView:Lcom/millennialmedia/android/MMAdView;

.field final synthetic val$resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$6;->val$adView:Lcom/millennialmedia/android/MMAdView;

    iput-object p3, p0, Lcom/millennialmedia/android/MMWebView$6;->val$resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 2

    new-instance v0, Lcom/millennialmedia/android/MMAdView$BannerBounds;

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcom/millennialmedia/android/MMAdView$BannerBounds;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V

    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView$6;->setUnresizeParameters()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->modifyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method private setUnresizeParameters()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    # invokes: Lcom/millennialmedia/android/MMWebView;->hasDefaultResizeParams()Z
    invoke-static {v0}, Lcom/millennialmedia/android/MMWebView;->access$200(Lcom/millennialmedia/android/MMWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v0, v0, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v0, v0, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->val$adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$6;->val$resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView;->handleMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->val$resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMWebView$6;->handleMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    const-string v2, "javascript:MMJS.sdk.setState(\'resized\');"

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$6;->this$0:Lcom/millennialmedia/android/MMWebView;

    const-string v2, "resized"

    iput-object v2, v0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
