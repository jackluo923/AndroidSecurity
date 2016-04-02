.class final Lcom/alipay/android/app/ui/quickpay/uielement/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/n;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/n;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/n;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ScanFinger:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v3, v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V

    return-void
.end method
