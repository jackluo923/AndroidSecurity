.class final Lcom/alipay/android/app/ui/quickpay/window/ae;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/ae;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/ae;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ae;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/ae;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    return-void
.end method
