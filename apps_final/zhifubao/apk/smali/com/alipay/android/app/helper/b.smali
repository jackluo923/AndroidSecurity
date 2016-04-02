.class final Lcom/alipay/android/app/helper/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/helper/PayHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/helper/PayHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/helper/b;->a:Lcom/alipay/android/app/helper/PayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/helper/b;->a:Lcom/alipay/android/app/helper/PayHelper;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->a(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/helper/PayHelper;->a(Lcom/alipay/android/app/helper/PayHelper;Lcom/alipay/android/app/IAlixPay;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/helper/b;->a:Lcom/alipay/android/app/helper/PayHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/helper/PayHelper;->a(Lcom/alipay/android/app/helper/PayHelper;Lcom/alipay/android/app/IAlixPay;)V

    return-void
.end method
