.class Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    iput-object p2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {v1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;->val$message:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$11;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
