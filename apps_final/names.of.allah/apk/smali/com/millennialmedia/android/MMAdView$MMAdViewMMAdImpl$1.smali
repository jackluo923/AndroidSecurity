.class Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;
.super Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

.field final synthetic val$this$0:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;->val$this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->isTransitionAnimated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->animateTransition()V

    :cond_0
    return-void
.end method
