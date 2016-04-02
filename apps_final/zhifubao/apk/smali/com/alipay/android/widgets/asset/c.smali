.class final Lcom/alipay/android/widgets/asset/c;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.source "AssetAnalyzeActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
        "<",
        "Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

.field private b:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 306
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/c;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    .line 307
    invoke-static {p1}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 308
    invoke-virtual {p0, v1}, Lcom/alipay/android/widgets/asset/c;->setShowNetworkErrorView(Z)V

    .line 309
    invoke-virtual {p0, v1}, Lcom/alipay/android/widgets/asset/c;->setShowProgressDialog(Z)V

    .line 310
    const-class v0, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/c;->b:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;

    .line 311
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/c;)Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/c;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    return-object v0
.end method


# virtual methods
.method public final varargs synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthAnalysisReq;

    invoke-direct {v0}, Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthAnalysisReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/c;->b:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthAnalysisManager;->queryWealthAnalysis(Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthAnalysisReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    move-result-object v0

    return-object v0
.end method

.method public final varargs synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1
    check-cast p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AssetAnalyzeActivity"

    const-string/jumbo v3, "onRPCFinish"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/c;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    invoke-static {v1, p1}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;)V

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const-string/jumbo v1, "refresh"

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->success:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/alipay/android/widgets/asset/d;

    invoke-direct {v1, p0, p1, v0}, Lcom/alipay/android/widgets/asset/d;-><init>(Lcom/alipay/android/widgets/asset/c;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/android/widgets/asset/c;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/alipay/android/widgets/asset/c;->showNetworkErrorTip([Ljava/lang/Object;)V

    goto :goto_0
.end method
