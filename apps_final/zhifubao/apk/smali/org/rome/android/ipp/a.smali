.class final Lorg/rome/android/ipp/a;
.super Ljava/lang/Object;
.source "IppFacade.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lorg/rome/android/ipp/IppFacade;


# direct methods
.method constructor <init>(Lorg/rome/android/ipp/IppFacade;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/rome/android/ipp/a;->a:Lorg/rome/android/ipp/IppFacade;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 176
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 177
    invoke-static {}, Lorg/rome/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Service Connected ComponentName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lorg/rome/android/ipp/a;->a:Lorg/rome/android/ipp/IppFacade;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/rome/android/ipp/IppFacade;->a(Lorg/rome/android/ipp/IppFacade;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lorg/rome/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v1

    .line 183
    const-string/jumbo v2, "Illegal Service Abandoned"

    .line 182
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/rome/android/ipp/a;->a:Lorg/rome/android/ipp/IppFacade;

    invoke-static {}, Lorg/rome/android/ipp/IppFacade;->b()Z

    .line 188
    invoke-static {p2}, Lorg/rome/android/ipp/binder/aidl/IppInterface$Stub;->a(Landroid/os/IBinder;)Lorg/rome/android/ipp/binder/aidl/IppInterface;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/rome/android/ipp/d;

    iget-object v3, p0, Lorg/rome/android/ipp/a;->a:Lorg/rome/android/ipp/IppFacade;

    .line 195
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/rome/android/ipp/d;-><init>(Lorg/rome/android/ipp/IppFacade;Lorg/rome/android/ipp/binder/aidl/IppInterface;Ljava/lang/String;)V

    .line 194
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lorg/rome/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Service Disconnected"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method
