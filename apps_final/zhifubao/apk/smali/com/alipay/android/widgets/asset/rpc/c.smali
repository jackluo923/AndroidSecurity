.class final Lcom/alipay/android/widgets/asset/rpc/c;
.super Ljava/lang/Object;
.source "WealthHomeRpcExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

.field private final synthetic b:[Ljava/lang/Object;

.field private final synthetic c:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;[Ljava/lang/Object;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/rpc/c;->a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    iput-object p2, p0, Lcom/alipay/android/widgets/asset/rpc/c;->b:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/android/widgets/asset/rpc/c;->c:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;

    iput-boolean p4, p0, Lcom/alipay/android/widgets/asset/rpc/c;->d:Z

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 135
    const-string/jumbo v0, "LOGON"

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/c;->a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/c;->b:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string/jumbo v0, "AHOME"

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/c;->a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/c;->b:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/c;->c:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->fixModules:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/c;->c:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->fixModules:Ljava/util/Map;

    const-string/jumbo v1, "WEALTH_HOME_TOTAL_ASSET"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    .line 140
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    const-string/jumbo v2, "tipMsg"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 143
    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    const-string/jumbo v2, "tipMsg"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    const/4 v2, 0x0

    .line 143
    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/c;->a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->a(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/c;->c:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;

    iget-boolean v2, p0, Lcom/alipay/android/widgets/asset/rpc/c;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;Z)V

    .line 148
    const-string/jumbo v0, "AHOME"

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/c;->a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/c;->b:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome-rpc"

    const-string/jumbo v2, "send broadcasttttttttttttttt"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/c;->a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->b(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.android.phone.wealth.home.rpcfinish"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 155
    :cond_1
    return-void
.end method
