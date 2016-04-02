.class final Lcom/alipay/android/app/hardwarepay/base/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/base/f;->c:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/base/f;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/app/hardwarepay/base/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/f;->c:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->h(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/base/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/f;->c:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->h(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/hardwarepay/base/f;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
