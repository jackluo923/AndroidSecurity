.class final Lcom/alipay/android/app/ui/quickpay/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/b;->a:Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/b;->a:Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/b;->a:Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method
