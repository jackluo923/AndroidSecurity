.class final Lcom/alipay/android/app/assist/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/template/TemplatePasswordService;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear(I)V
    .locals 0

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->clear(I)V

    return-void
.end method

.method public final getText(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onTextChanged(ILjava/lang/String;III)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->onTextChanged(ILjava/lang/String;III)V

    return-void
.end method
