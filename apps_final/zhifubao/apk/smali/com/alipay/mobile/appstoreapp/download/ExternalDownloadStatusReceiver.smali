.class public Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExternalDownloadStatusReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalDownloadStatusReceiver"

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static callbackData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->ajc$preClinit()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 30
    sput-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "ExternalDownloadStatusReceiver.java"

    const-class v2, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.mobile.appstoreapp.download.ExternalDownloadStatusReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "paramContext:paramIntent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static isDownloadTaskExists(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    if-nez p0, :cond_0

    move v0, v1

    .line 134
    :goto_0
    return v0

    .line 133
    :cond_0
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 134
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static final synthetic onReceive_aroundBody0(Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 36
    .line 37
    const-string/jumbo v0, "downloadUrl"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz v2, :cond_9

    .line 40
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 42
    :goto_0
    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_1
    return-void

    .line 46
    :cond_1
    const-string/jumbo v0, "downloadRequest"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    .line 48
    const-string/jumbo v3, "status"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    const-string/jumbo v4, "prepare"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    .line 51
    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onPrepare(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V

    goto :goto_2

    .line 56
    :cond_2
    const-string/jumbo v4, "downloading"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    const-string/jumbo v2, "progress"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    .line 60
    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onProgress(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;I)V

    goto :goto_3

    .line 65
    :cond_3
    const-string/jumbo v4, "finish"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "ExternalDownloadStatusReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "receive downloaded : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v3, "filePath"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 72
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->unRegisterCallbacks(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 69
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    .line 70
    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onFinish(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V

    goto :goto_4

    .line 76
    :cond_5
    const-string/jumbo v4, "fail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 78
    const-string/jumbo v3, "errorMsg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string/jumbo v4, "errorCode"

    .line 79
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 84
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->unRegisterCallbacks(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 81
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    .line 82
    invoke-interface {v1, v0, v4, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V

    goto :goto_5

    .line 88
    :cond_7
    const-string/jumbo v4, "cancel"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 92
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->unRegisterCallbacks(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 89
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    .line 90
    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V

    goto :goto_6

    :cond_9
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private static final synthetic onReceive_aroundBody1$advice(Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 87
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 88
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->onReceive_aroundBody0(Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 93
    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v5, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public static registerCallback(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V
    .locals 2

    .prologue
    .line 108
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 109
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    :goto_0
    sget-object v1, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    return-void

    .line 112
    :cond_1
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 114
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static unRegisterCallbacks(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->onReceive_aroundBody1$advice(Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    return-void
.end method
