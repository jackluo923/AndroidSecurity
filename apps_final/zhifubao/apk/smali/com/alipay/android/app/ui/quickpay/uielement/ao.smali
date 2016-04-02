.class final Lcom/alipay/android/app/ui/quickpay/uielement/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/uielement/an;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/an;Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ao;->c:Lcom/alipay/android/app/ui/quickpay/uielement/an;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ao;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ao;->b:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ao;->c:Lcom/alipay/android/app/ui/quickpay/uielement/an;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/an;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ao;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ao;->b:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    return-void
.end method
