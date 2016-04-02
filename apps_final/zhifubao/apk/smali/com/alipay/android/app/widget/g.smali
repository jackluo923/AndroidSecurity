.class final Lcom/alipay/android/app/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/widget/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/widget/CustomAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/widget/g;->a:Lcom/alipay/android/app/widget/CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/widget/g;->a:Lcom/alipay/android/app/widget/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/widget/g;->a:Lcom/alipay/android/app/widget/CustomAlertDialog;

    invoke-static {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->b(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/widget/g;->a:Lcom/alipay/android/app/widget/CustomAlertDialog;

    invoke-static {v2}, Lcom/alipay/android/app/widget/CustomAlertDialog;->a(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
