.class final Lcom/alipay/android/app/ui/quickpay/keyboard/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;ZLandroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->c:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    iput-boolean p2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->a:Z

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->c:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/widget/EditText;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b()Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil$1;->b:[I

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b()Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->c:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->b:Landroid/view/ViewGroup;

    const-string/jumbo v1, "mini_keepbackground_layout"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->c:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->j(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->c:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->b:Landroid/view/ViewGroup;

    const-string/jumbo v1, "mini_layout_parent"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->c:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->j(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->c:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->b:Landroid/view/ViewGroup;

    const-string/jumbo v1, "mini_keeppre_layout"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/c;->c:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->j(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
