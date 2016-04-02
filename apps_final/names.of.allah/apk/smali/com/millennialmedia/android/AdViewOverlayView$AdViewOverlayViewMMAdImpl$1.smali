.class Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$1;
.super Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

.field final synthetic val$this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;Lcom/millennialmedia/android/AdViewOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$1;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

    iput-object p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$1;->val$this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$1;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    # invokes: Lcom/millennialmedia/android/AdViewOverlayView;->removeProgressBar()V
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)V

    return-void
.end method
