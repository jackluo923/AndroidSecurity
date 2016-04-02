.class final Lcom/alipay/android/app/ui/quickpay/keyboard/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/e;->b:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/e;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/e;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method
