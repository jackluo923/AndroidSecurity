.class final Lcom/alipay/android/app/hardwarepay/bracelet/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Landroid/content/Context;ILandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->b:Landroid/content/Context;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->c:I

    iput-object p5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->b:Landroid/content/Context;

    iget v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->c:I

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->properties:Ljava/util/Properties;
    invoke-static {v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$100(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Landroid/content/Context;ILjava/util/Properties;)I

    move-result v1

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->d:Landroid/app/Activity;

    # invokes: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->dismissProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0, v2}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$500(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;)V

    const/16 v0, 0x7e

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->showDialogForService(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    invoke-virtual {v2}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->b()[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x69

    if-eq v1, v3, :cond_1

    const/16 v3, 0x6a

    if-eq v1, v3, :cond_1

    const/16 v3, 0x7f

    if-eq v1, v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    aget-object v3, v2, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->d:Landroid/app/Activity;

    new-instance v3, Lcom/alipay/android/app/hardwarepay/bracelet/g;

    invoke-direct {v3, p0, v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/g;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/f;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    aget-object v0, v2, v4

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->c:I

    const-string/jumbo v1, "query"

    invoke-static {v0, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method
