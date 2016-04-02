.class Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$1;
.super Ljava/lang/Object;
.source "PhoneCashierAuthUtil.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;


# instance fields
.field private final synthetic a:Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;


# direct methods
.method constructor <init>(Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$1;->a:Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallFailed()V
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhoneCashierAuthUtil"

    const-string/jumbo v2, "onInstallFailed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$1;->a:Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;

    invoke-interface {v0}, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;->onFailure()V

    .line 82
    return-void
.end method

.method public onPayFailed(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhoneCashierAuthUtil"

    const-string/jumbo v2, "onPayFailed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$1;->a:Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;

    invoke-interface {v0}, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;->onFailure()V

    .line 76
    return-void
.end method

.method public onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->getResultCode()I

    move-result v0

    const/16 v1, 0x2328

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil;->getPwdTokenFromMemo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$1;->a:Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;

    invoke-interface {v1, v0}, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;->onSuccess(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$1;->a:Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;

    invoke-interface {v0}, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;->onFailure()V

    goto :goto_0
.end method
