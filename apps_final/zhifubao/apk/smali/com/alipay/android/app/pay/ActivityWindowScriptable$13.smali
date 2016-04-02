.class Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/script/ILoadingScriptable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->e(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13$1;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-static {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->d(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13$2;-><init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
