.class final Lcom/alipay/android/app/display/uielement/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/app/display/uielement/bm;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/bm;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/bn;->b:Lcom/alipay/android/app/display/uielement/bm;

    iput-boolean p2, p0, Lcom/alipay/android/app/display/uielement/bn;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bn;->b:Lcom/alipay/android/app/display/uielement/bm;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/bm;->a(Lcom/alipay/android/app/display/uielement/bm;)Landroid/widget/RadioButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bn;->b:Lcom/alipay/android/app/display/uielement/bm;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/bm;->a(Lcom/alipay/android/app/display/uielement/bm;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/display/uielement/bn;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bn;->b:Lcom/alipay/android/app/display/uielement/bm;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/bm;->a(Lcom/alipay/android/app/display/uielement/bm;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/display/uielement/bn;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    :cond_0
    return-void
.end method
