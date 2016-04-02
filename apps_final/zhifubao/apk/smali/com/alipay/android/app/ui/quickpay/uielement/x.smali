.class final Lcom/alipay/android/app/ui/quickpay/uielement/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/x;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/x;->a:Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/x;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/x;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/x;->a:Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V

    return-void
.end method
