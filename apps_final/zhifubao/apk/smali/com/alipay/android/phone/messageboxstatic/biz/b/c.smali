.class public Lcom/alipay/android/phone/messageboxstatic/biz/b/c;
.super Ljava/lang/Object;
.source "SyncProcessor.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# instance fields
.field private c:Lcom/alipay/android/phone/messageboxstatic/biz/c;

.field private d:Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/c;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->c:Lcom/alipay/android/phone/messageboxstatic/biz/c;

    .line 32
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/overdue/OverdueServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->d:Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/messageboxstatic/biz/b/c;)Lcom/alipay/android/phone/messageboxstatic/biz/c;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->c:Lcom/alipay/android/phone/messageboxstatic/biz/c;

    return-object v0
.end method

.method public static a()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->b:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 40
    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 36
    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->b:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 42
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->b:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "msgData = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a:Ljava/lang/String;

    .line 115
    const-string/jumbo v2, "extract follow msg faild  becouse msgData is empty"

    .line 114
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    .line 118
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 123
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v4, :cond_1

    .line 140
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ret = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 141
    goto :goto_0

    .line 125
    :cond_1
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v5, "pl"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "pl string "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-class v5, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;

    invoke-static {v0, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a:Ljava/lang/String;

    const-string/jumbo v7, "extract follow msg faild data faild "

    invoke-interface {v5, v6, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 135
    :catch_1
    move-exception v0

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a:Ljava/lang/String;

    const-string/jumbo v4, "extract follow msg faild data faild "

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alipay/android/phone/messageboxstatic/biz/b/c;)Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->d:Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Ljava/util/List;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a:Ljava/lang/String;

    const-string/jumbo v2, "message extract result is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 5

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a:Ljava/lang/String;

    const-string/jumbo v2, "process syncMsg is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a:Ljava/lang/String;

    const-string/jumbo v2, "longLinkSyncService is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncMessage = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;

    invoke-direct {v1, p0, p1, v0}, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;-><init>(Lcom/alipay/android/phone/messageboxstatic/biz/b/c;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
