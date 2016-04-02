.class final Lcom/alipay/android/app/ui/quickpay/widget/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/l;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/l;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/l;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;

    # invokes: Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->a()V
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->access$200(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V

    return-void
.end method
