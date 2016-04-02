.class final Lcom/alipay/android/app/display/uielement/u;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UIButton;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIButton;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/u;->a:Lcom/alipay/android/app/display/uielement/UIButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/u;->a:Lcom/alipay/android/app/display/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIButton;->a(Lcom/alipay/android/app/display/uielement/UIButton;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/u;->a:Lcom/alipay/android/app/display/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIButton;->a(Lcom/alipay/android/app/display/uielement/UIButton;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    return-void
.end method
