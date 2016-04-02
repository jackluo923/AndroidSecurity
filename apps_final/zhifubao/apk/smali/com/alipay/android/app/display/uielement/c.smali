.class final Lcom/alipay/android/app/display/uielement/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/app/display/uielement/BaseEditElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/c;->b:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    iput-boolean p2, p0, Lcom/alipay/android/app/display/uielement/c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/c;->b:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/c;->b:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    iget-boolean v1, p0, Lcom/alipay/android/app/display/uielement/c;->a:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomEditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/c;->b:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    iget-boolean v1, p0, Lcom/alipay/android/app/display/uielement/c;->a:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomEditText;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/c;->b:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V

    :cond_0
    return-void
.end method
