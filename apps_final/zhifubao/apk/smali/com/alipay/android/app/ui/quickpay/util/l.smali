.class final Lcom/alipay/android/app/ui/quickpay/util/l;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/l;->c:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/util/l;->a:Landroid/view/View;

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/util/l;->b:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/util/m;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/util/m;-><init>(Lcom/alipay/android/app/ui/quickpay/util/l;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
