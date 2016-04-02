.class final Lcom/alipay/android/app/display/uielement/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UIButton;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIButton;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/v;->b:Lcom/alipay/android/app/display/uielement/UIButton;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/v;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/v;->b:Lcom/alipay/android/app/display/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIButton;->a(Lcom/alipay/android/app/display/uielement/UIButton;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/v;->b:Lcom/alipay/android/app/display/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIButton;->a(Lcom/alipay/android/app/display/uielement/UIButton;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/v;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/v;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    new-instance v0, Lcom/alipay/android/app/display/uielement/w;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Click:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/w;-><init>(Lcom/alipay/android/app/display/uielement/v;Lcom/alipay/android/app/display/event/EventType;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/v;->b:Lcom/alipay/android/app/display/uielement/UIButton;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/UIButton;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method
