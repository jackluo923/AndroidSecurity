.class Lcom/millennialmedia/android/MMWebView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;

.field final synthetic val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$finalContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$3;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$3;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p3, p0, Lcom/millennialmedia/android/MMWebView$3;->val$baseUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/millennialmedia/android/MMWebView$3;->val$finalContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$3;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-boolean v0, v0, Lcom/millennialmedia/android/HandShake;->hardwareAccelerationEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$3;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->enableHardwareAcceleration()V

    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$3;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/millennialmedia/android/MMLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->removeVideo()V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$3;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$3;->val$baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$3;->val$finalContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/android/MMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$3;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->disableAllAcceleration()V

    goto :goto_0
.end method
