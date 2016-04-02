.class final Lcom/alipay/android/app/display/uielement/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UICheckBox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/z;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/z;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->f(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/z;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/z;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->f(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/UICheckBox;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
