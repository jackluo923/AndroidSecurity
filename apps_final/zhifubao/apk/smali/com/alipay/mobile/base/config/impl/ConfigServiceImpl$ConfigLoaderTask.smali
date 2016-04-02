.class Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;
.super Ljava/lang/Thread;
.source "ConfigServiceImpl.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$1;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "start to load config"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 86
    const-class v2, Lcom/alipay/mobileapp/biz/rpc/switches/ClientSwitchConfigService;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobileapp/biz/rpc/switches/ClientSwitchConfigService;

    .line 87
    new-instance v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;

    invoke-direct {v3}, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;-><init>()V

    .line 88
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v4

    .line 90
    const-string/jumbo v2, "android"

    iput-object v2, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->systemType:Ljava/lang/String;

    .line 91
    invoke-virtual {v4}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    :goto_0
    iput-object v2, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->clientVersion:Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v5, "reserveConfigKeyUserId"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->userId:Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v5, "reserveConfigKeyResponseTime"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->lastResponseTime:Ljava/lang/String;

    .line 94
    invoke-virtual {v4}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->channelId:Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getDefImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->imei:Ljava/lang/String;

    .line 96
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;->utdid:Ljava/lang/String;

    .line 98
    invoke-interface {v1, v3}, Lcom/alipay/mobileapp/biz/rpc/switches/ClientSwitchConfigService;->getSwitchesAfterLogin(Lcom/alipay/mobileapp/core/model/switches/SwitchInfoReq;)Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;

    move-result-object v3

    .line 99
    iget-boolean v1, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->success:Z

    if-eqz v1, :cond_7

    .line 102
    iget-boolean v1, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->increment:Z

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "reserveConfigKeyUserId"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "reserveConfigKeyUserId"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "reserveConfigKeyResponseTime"

    iget-object v4, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->responseTime:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    iget-object v1, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 113
    iget-object v1, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 114
    iget-object v1, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "reserveConfigKeyResponseTime"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "reserveConfigKeyUserId"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 118
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v5, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 145
    :catch_0
    move-exception v1

    .line 146
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    :goto_2
    return-void

    .line 91
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    :cond_4
    iget-object v1, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->deleteKeys:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->deleteKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 127
    iget-object v1, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->deleteKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "delete="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 131
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, v3, Lcom/alipay/mobileapp/core/model/switches/SwitchInfoResp;->switches:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->refreshSharedSwitch(Landroid/content/Context;Ljava/util/Map;)V

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 140
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.alipay.mobile.client.CONFIG_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_2

    .line 143
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fail to load commmon config"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
