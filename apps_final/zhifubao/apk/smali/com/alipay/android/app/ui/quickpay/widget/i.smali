.class final Lcom/alipay/android/app/ui/quickpay/widget/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/i;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/i;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->b:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/widget/EditText;)V

    return-void
.end method
