.class final Lcom/alipay/android/app/ui/quickpay/uielement/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/o;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/o;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/p;->a:Lcom/alipay/android/app/ui/quickpay/uielement/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/p;->a:Lcom/alipay/android/app/ui/quickpay/uielement/o;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/p;->a:Lcom/alipay/android/app/ui/quickpay/uielement/o;

    iget-object v2, v2, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->c(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;ILcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    return-void
.end method
