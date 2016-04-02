.class final Lcom/alipay/android/app/ui/quickpay/window/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/m;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/m;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/m;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/m;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
