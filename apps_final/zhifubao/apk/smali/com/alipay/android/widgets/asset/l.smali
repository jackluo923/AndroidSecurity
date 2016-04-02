.class final Lcom/alipay/android/widgets/asset/l;
.super Ljava/lang/Object;
.source "InsuranceDialogFragment.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/l;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallFailed()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public final onPayFailed(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 218
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "InsuranceDialogFragment"

    const-string/jumbo v2, "onPayFailed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/l;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->c(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Lcom/alipay/android/widgets/asset/listener/PayResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/l;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->c(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Lcom/alipay/android/widgets/asset/listener/PayResultListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/widgets/asset/listener/PayResultListener;->a(Z)V

    .line 222
    :cond_0
    return-void
.end method

.method public final onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    .locals 3

    .prologue
    .line 210
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "InsuranceDialogFragment"

    const-string/jumbo v2, "onPaySuccess"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/l;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->c(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Lcom/alipay/android/widgets/asset/listener/PayResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/l;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->c(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Lcom/alipay/android/widgets/asset/listener/PayResultListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/android/widgets/asset/listener/PayResultListener;->a(Z)V

    .line 214
    :cond_0
    return-void
.end method
