.class Lcom/millennialmedia/android/AdViewOverlayView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$1;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "Close button clicked."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$1;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->finishOverlayWithAnimation()V

    return-void
.end method
