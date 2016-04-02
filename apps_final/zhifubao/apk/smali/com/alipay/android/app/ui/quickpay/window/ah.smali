.class final Lcom/alipay/android/app/ui/quickpay/window/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/ag;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/ah;->a:Lcom/alipay/android/app/ui/quickpay/window/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ah;->a:Lcom/alipay/android/app/ui/quickpay/window/ag;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/ag;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->b(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V

    return-void
.end method
