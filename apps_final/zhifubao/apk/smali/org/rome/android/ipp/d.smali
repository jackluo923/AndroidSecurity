.class final Lorg/rome/android/ipp/d;
.super Ljava/lang/Object;
.source "IppFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lorg/rome/android/ipp/binder/aidl/IppInterface;

.field private b:Ljava/lang/String;

.field private synthetic c:Lorg/rome/android/ipp/IppFacade;


# direct methods
.method public constructor <init>(Lorg/rome/android/ipp/IppFacade;Lorg/rome/android/ipp/binder/aidl/IppInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lorg/rome/android/ipp/d;->c:Lorg/rome/android/ipp/IppFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p2, p0, Lorg/rome/android/ipp/d;->a:Lorg/rome/android/ipp/binder/aidl/IppInterface;

    .line 210
    iput-object p3, p0, Lorg/rome/android/ipp/d;->b:Ljava/lang/String;

    .line 211
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 216
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 217
    invoke-static {}, Lorg/rome/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v1

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IppFacade:invokCallBack! justHasBeenKilled:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    iget-object v3, p0, Lorg/rome/android/ipp/d;->c:Lorg/rome/android/ipp/IppFacade;

    invoke-static {v3}, Lorg/rome/android/ipp/IppFacade;->b(Lorg/rome/android/ipp/IppFacade;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 221
    const-string/jumbo v1, "justHasBeenKilled"

    iget-object v2, p0, Lorg/rome/android/ipp/d;->c:Lorg/rome/android/ipp/IppFacade;

    invoke-static {v2}, Lorg/rome/android/ipp/IppFacade;->b(Lorg/rome/android/ipp/IppFacade;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    iget-object v1, p0, Lorg/rome/android/ipp/d;->a:Lorg/rome/android/ipp/binder/aidl/IppInterface;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/rome/android/ipp/binder/aidl/IppInterface;->a(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lorg/rome/android/ipp/d;->c:Lorg/rome/android/ipp/IppFacade;

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Lorg/rome/android/ipp/IppFacade;->b(Lorg/rome/android/ipp/IppFacade;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 243
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 228
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 229
    invoke-static {}, Lorg/rome/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v2

    .line 230
    const-string/jumbo v3, "BrotherService has just been killed! To ReStart BrotherService right away!"

    .line 228
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lorg/rome/android/ipp/d;->c:Lorg/rome/android/ipp/IppFacade;

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Lorg/rome/android/ipp/IppFacade;->b(Lorg/rome/android/ipp/IppFacade;Ljava/lang/String;)V

    .line 234
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/rome/android/ipp/e;

    iget-object v3, p0, Lorg/rome/android/ipp/d;->c:Lorg/rome/android/ipp/IppFacade;

    iget-object v4, p0, Lorg/rome/android/ipp/d;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/rome/android/ipp/e;-><init>(Lorg/rome/android/ipp/IppFacade;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 236
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lorg/rome/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 238
    :catch_1
    move-exception v0

    .line 239
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lorg/rome/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 240
    :catch_2
    move-exception v0

    .line 241
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lorg/rome/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
