.class final Lcom/alipay/android/app/ui/quickpay/window/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/c;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/d;->a:Lcom/alipay/android/app/ui/quickpay/window/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/d;->a:Lcom/alipay/android/app/ui/quickpay/window/c;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/c;->c:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Z)V

    return-void
.end method
