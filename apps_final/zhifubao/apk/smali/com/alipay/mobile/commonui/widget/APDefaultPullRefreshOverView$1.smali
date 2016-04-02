.class Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->i:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->access$000(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->e:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->access$100(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->d:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->access$200(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->e:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->access$100(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->f:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->access$300(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->d:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->access$200(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->f:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->access$300(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->f:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->access$300(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
