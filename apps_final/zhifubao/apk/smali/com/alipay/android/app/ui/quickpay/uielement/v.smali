.class final Lcom/alipay/android/app/ui/quickpay/uielement/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/v;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/v;->a:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/v;->a:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/v;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/v;->a:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;)V

    return-void
.end method
