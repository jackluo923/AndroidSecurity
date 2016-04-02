.class final Lcom/alipay/android/app/ui/quickpay/window/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/af;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/af;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/window/af;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/af;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/af;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->e(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/af;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->d(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/af;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/af;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->b(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Ljava/lang/String;)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/af;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/af;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->e(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/af;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->d(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
