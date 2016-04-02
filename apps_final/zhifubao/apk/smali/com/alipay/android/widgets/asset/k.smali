.class final Lcom/alipay/android/widgets/asset/k;
.super Ljava/lang/Object;
.source "InsuranceDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/k;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/k;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->b(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Lcom/alipay/mobile/commonui/widget/APCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/k;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->b(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Lcom/alipay/mobile/commonui/widget/APCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setChecked(Z)V

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/k;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->b(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Lcom/alipay/mobile/commonui/widget/APCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
