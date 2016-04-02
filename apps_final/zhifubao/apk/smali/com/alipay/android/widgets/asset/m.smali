.class final Lcom/alipay/android/widgets/asset/m;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.source "InsuranceDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
        "<",
        "Lcom/alipay/mobilewealth/biz/service/gw/result/home/ApplyOpenASIResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

.field private b:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V
    .locals 1

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/m;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>()V

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/m;->setShowNetworkErrorView(Z)V

    .line 237
    const-class v0, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/m;->b:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;

    .line 238
    return-void
.end method


# virtual methods
.method public final varargs synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1
    new-instance v1, Lcom/alipay/mobilewealth/biz/service/gw/request/home/ApplyOpenASIReq;

    invoke-direct {v1}, Lcom/alipay/mobilewealth/biz/service/gw/request/home/ApplyOpenASIReq;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/request/home/ApplyOpenASIReq;->renewal:Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "InsuranceDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "brenewal:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/alipay/mobilewealth/biz/service/gw/request/home/ApplyOpenASIReq;->renewal:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/m;->b:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;

    invoke-interface {v0, v1}, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;->applyOpenAccSecurInsure(Lcom/alipay/mobilewealth/biz/service/gw/request/home/ApplyOpenASIReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/ApplyOpenASIResult;

    move-result-object v0

    return-object v0
.end method

.method public final varargs synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/ApplyOpenASIResult;

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/ApplyOpenASIResult;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/m;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/ApplyOpenASIResult;->tradeNo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->a(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/m;->a:Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method
