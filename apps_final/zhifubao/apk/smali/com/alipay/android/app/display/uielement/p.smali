.class final Lcom/alipay/android/app/display/uielement/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/android/app/display/event/MspEventArgs;

.field final synthetic c:Lcom/alipay/android/app/display/uielement/BaseElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/BaseElement;ILcom/alipay/android/app/display/event/MspEventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/p;->c:Lcom/alipay/android/app/display/uielement/BaseElement;

    iput p2, p0, Lcom/alipay/android/app/display/uielement/p;->a:I

    iput-object p3, p0, Lcom/alipay/android/app/display/uielement/p;->b:Lcom/alipay/android/app/display/event/MspEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/p;->c:Lcom/alipay/android/app/display/uielement/BaseElement;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/display/uielement/BaseElement;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/p;->c:Lcom/alipay/android/app/display/uielement/BaseElement;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/display/uielement/BaseElement;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/display/uielement/p;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/p;->c:Lcom/alipay/android/app/display/uielement/BaseElement;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/p;->b:Lcom/alipay/android/app/display/event/MspEventArgs;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    :cond_0
    return-void
.end method
