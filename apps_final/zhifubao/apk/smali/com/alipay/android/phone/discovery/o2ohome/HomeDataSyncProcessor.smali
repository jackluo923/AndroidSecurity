.class public Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;
.super Ljava/lang/Object;
.source "HomeDataSyncProcessor.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# static fields
.field private static final SYNC_BIZ:Ljava/lang/String; = "MC-O2O-LCF"

.field private static final TAG:Ljava/lang/String; = "HomeDataSyncProcessor"


# instance fields
.field private listenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$IHomeDataUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$IHomeDataUpdate;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->listenerRef:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method


# virtual methods
.method protected handleMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 5

    .prologue
    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HomeDataSyncProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleMessage:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 114
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 131
    :goto_1
    return-void

    .line 116
    :cond_0
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "pl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-class v1, Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;

    .line 120
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$IHomeDataUpdate;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$IHomeDataUpdate;->onFoodCategoryDataChange(Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 128
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    goto :goto_1
.end method

.method public obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 104
    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 100
    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    return-object v0
.end method

.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 4

    .prologue
    .line 64
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 68
    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->command:Ljava/lang/String;

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->command:Ljava/lang/String;

    const-string/jumbo v1, "fullUpdate"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HomeDataSyncProcessor"

    const-string/jumbo v2, "onReceiveCommand"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 5

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HomeDataSyncProcessor"

    const-string/jumbo v2, "onReceiveMessage return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 47
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "HomeDataSyncProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start: handleMessage"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 55
    const-string/jumbo v2, "HomeDataSyncProcessorMC-O2O-LCF"

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerSync()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v1, "MC-O2O-LCF"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 85
    :cond_0
    return-void
.end method

.method public unregisterSync()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 94
    const-string/jumbo v1, "MC-O2O-LCF"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->unregisterBizCallback(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method
