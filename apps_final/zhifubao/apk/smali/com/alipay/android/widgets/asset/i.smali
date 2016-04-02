.class final Lcom/alipay/android/widgets/asset/i;
.super Ljava/lang/Object;
.source "InsuranceDialogFragment.java"

# interfaces
.implements Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/i;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public final onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final onProgress(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/i;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->a(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method
