.class final Lcom/alipay/android/app/ui/quickpay/uielement/h;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/h;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/h;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/h;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/h;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/h;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/h;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onTick(J)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/h;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/h;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/h;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mini_countdown_info"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
