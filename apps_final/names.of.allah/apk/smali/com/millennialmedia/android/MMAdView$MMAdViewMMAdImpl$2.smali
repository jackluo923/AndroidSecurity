.class Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget v0, v0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v0

    int-to-float v1, v0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$2;->this$1:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v0

    int-to-float v1, v0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
