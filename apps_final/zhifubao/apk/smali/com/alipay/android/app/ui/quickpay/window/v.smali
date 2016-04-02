.class final Lcom/alipay/android/app/ui/quickpay/window/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/v;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/v;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/v;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/v;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/v;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomToast;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
