.class final Lcom/alipay/android/app/ui/quickpay/util/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->a(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->b:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->a(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->b:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->getMonthStr(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->a(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->b(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->b(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->c(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->e(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->c(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->d(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->f(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/a;->a:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->e(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ValueChanged:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v3, v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
