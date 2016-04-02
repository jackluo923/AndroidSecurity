.class Lcom/adsdk/sdk/mraid/MraidView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$1;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$1;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView;->mViewGestureDetector:Lcom/adsdk/sdk/mraid/ViewGestureDetector;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView;->access$5(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/ViewGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adsdk/sdk/mraid/ViewGestureDetector;->sendTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
