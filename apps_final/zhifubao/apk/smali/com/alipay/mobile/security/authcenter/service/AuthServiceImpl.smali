.class public Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/AuthService;


# instance fields
.field a:Z

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private e:J

.field private f:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:J

    iput-boolean v2, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->h:Z

    return-void
.end method

.method private a()V
    .locals 7

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "AuthServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u767b\u5f55\u5b8c\u6210\u4e14\u767b\u5f55\u5931\u8d25\uff0c\u8bbe\u7f6e\u7b49\u5f85\u7ebf\u7a0b \u4e3a\u53d6\u6d88\u72b6\u6001 key="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    const-string/jumbo v4, "canceled"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, v1, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v0

    const-string/jumbo v1, "securityapp"

    const-string/jumbo v2, "security"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5f00\u59cb\u5524\u8d77\u767b\u9646\u754c\u9762"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000008"

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    .locals 7

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "innerAuth \u7ebf\u7a0b key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6dfb\u52a0\u7b49\u5f85\u7ebf\u7a0b key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "wait"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AuthServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u79fb\u9664\u7b49\u5f85\u7ebf\u7a0b key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "loginSource"

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginKey()V

    return-void
.end method

.method private declared-synchronized b(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rpc\u767b\u5f55\u524d\u68c0\u67e5\u5f53\u524d\u7528\u6237\u662f\u5426\u5df2\u7ecf\u767b\u5f55  loginContext.isSkipCheckIsLogin()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->i()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "syncRpcAuth"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "DirectAuth\u8bf7\u6c42\uff0c\u4e0d\u5224\u65ad\u767b\u5f55\uff0c\u76f4\u63a5\u5c1d\u8bd5\u514d\u767b"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "canceled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "N"

    const-string/jumbo v1, "canceled"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "rpc\u8bf7\u6c42\u5df2\u7ecf\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Y"

    const-string/jumbo v1, "rpc\u8bf7\u6c42\u5df2\u7ecf\u767b\u5f55"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->c(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    invoke-static {}, Lcom/alipay/mobile/common/utils/ThreadUtil;->checkMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "N"

    const-string/jumbo v1, "can\'t in main thread call Auth Service ."

    invoke-virtual {p0, v0, v1, v5}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "can\'t in main thread call Auth Service ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AuthServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5f00\u59cb\u767b\u5f55\u3002loginContext="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->c()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->g()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u68c0\u67e5\u662f\u5426\u53ef\u4ee5\u514d\u767b"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u514d\u767b\u6210\u529f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AuthServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "showAppflag ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "\u68c0\u67e5\u662f\u5426\u9700\u8981\u8bbe\u7f6e\u6216\u8005\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isLoginSucess="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " loginContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u767b\u5f55\u6210\u529f\u540e\u68c0\u67e5\u662f\u5426\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/security/authcenter/service/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/service/c;-><init>(Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u7b49\u5f85\u624b\u52bf\u91ca\u653e\u9501"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u624b\u52bf\u9501\u88ab\u91ca\u653e"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u767b\u5f55\u7ed3\u679c\u3002context="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    return v0

    :cond_3
    const-string/jumbo v0, "null"

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isSkipAutoLogin = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "isAutoLogin ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "E"

    invoke-virtual {p0, v1, v0, v5}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "\u5f53\u524d\u65e0\u514d\u767b\u7528\u6237\uff0c\u542f\u52a8\u767b\u5f55\u754c\u9762"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->c()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "loginId"

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->c()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "\u53ef\u4ee5\u514d\u767b\uff0c\u8c03\u7528\u514d\u767b\u670d\u52a1"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->f(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "Y"

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    const-string/jumbo v1, "N"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v2, "autoLoginRpc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fail-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "E"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v5}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Ljava/lang/Boolean;)V

    instance-of v2, v1, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/16 v2, 0x3ea

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\u7ebf\u7a0b\u767b\u9646RpcException(1002)\uff0c\u53d6\u6d88\u7b49\u5f85\u7ebf\u7a0b\u5e76\u629b\u51fa\u5f02\u5e38"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginState()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()V

    throw v1

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\u7ebf\u7a0b\u767b\u9646RpcException\uff0c\u53d6\u6d88\u7b49\u5f85\u7ebf\u7a0b\u5e76\u629b\u51fa\u5f02\u5e38"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()V

    throw v1
.end method

.method private declared-synchronized e(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "\u5ba2\u6237\u7aef\u542f\u52a8,\u9a8c\u8bc1\u5b8ctid\u540e\u514d\u767b,\u68c0\u67e5\u662f\u5426\u5df2\u7ecf\u6b63\u5e38\u767b\u5f55\u5b8c\u6210"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "autoLogin"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "rpc\u8bf7\u6c42\u5df2\u7ecf\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Y"

    const-string/jumbo v1, "rpc\u8bf7\u6c42\u5df2\u7ecf\u767b\u5f55"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "canceled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "rpc\u767b\u5f55\u6253\u5f00\u8d26\u5bc6\u754c\u9762\uff0c\u800c\u4e14\u7528\u6237\u53d6\u6d88\u767b\u5f55\u540e\u53d6\u6d88\u514d\u767b"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "N"

    const-string/jumbo v1, "rpc\u767b\u5f55\u6253\u5f00\u8d26\u5bc6\u754c\u9762\uff0c\u800c\u4e14\u7528\u6237\u53d6\u6d88\u767b\u5f55\u540e\u53d6\u6d88\u514d\u767b"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->f(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "Y"

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    const-string/jumbo v1, "N"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private f(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->c()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->k()Z

    move-result v6

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/ext/security/LoginService;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u514d\u767b\u670d\u52a1\u5f00\u59cb\u670d\u52a1\u5668\u54cd\u5e94"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const/16 v0, 0x3e8

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u514d\u767b\u670d\u52a1\u6210\u529f"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u67e5\u8be2\u7528\u6237\u4fe1\u606f\uff0c\u8fd4\u56de"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/UserInfoService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/UserInfoService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AuthServiceImpl"

    const-string/jumbo v4, "\u67e5\u8be2\u7528\u6237\u4fe1\u606f\u5f00\u59cb"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/UserInfoService;->queryUserInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "\u67e5\u8be2\u7528\u6237\u4fe1\u606f\u5b8c\u6210"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "\u767b\u5f55\u6210\u529f\u540e\uff0c\u8fd4\u56deuserId \u4e3a null "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Ljava/lang/Boolean;)V

    const-string/jumbo v0, "autoLoginRpc"

    const-string/jumbo v1, "fail-\u767b\u5f55\u6210\u529f\u540e\uff0c\u8fd4\u56deuserId \u4e3a null"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u514d\u767b\u5931\u8d25\u5904\u7406"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u514d\u767b\u670d\u52a1\u5931\u8d25 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getMemo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "autoLoginRpc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fail-status:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AuthServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6e05\u9664\u672c\u5730\u6240\u4ee5\u7528\u6236\u514d\u767b\u72c0\u614b userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->updateUserAutoLoginFlag(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginState(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "\u514d\u767b\u5931\u8d25\uff0c\u663e\u793a\u767b\u9646\u754c\u9762"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Ljava/lang/Boolean;)V

    move v0, v7

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "\u514d\u767b\u670d\u52a1\u5f00\u59cb\u670d\u52a1\u5668\u54cd\u5e94\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Ljava/lang/Boolean;)V

    const-string/jumbo v0, "autoLoginRpc"

    const-string/jumbo v1, "fail-userLoginResultBiz is null"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public auth()Z
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->auth(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public auth(Landroid/os/Bundle;)Z
    .locals 6

    const-string/jumbo v0, "auth"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "auth"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "auth \u68c0\u67e5\u5f53\u524d\u7528\u6237\u662f\u5426\u5df2\u7ecf\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/authcenter/service/d;

    invoke-direct {v1}, Lcom/alipay/mobile/security/authcenter/service/d;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "resetCookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AuthServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "auth - resetCookie:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->b(Z)V

    const-string/jumbo v0, "directAuth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AuthServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "auth - directAuth:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Z)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v0

    return v0
.end method

.method public autoAuth()Z
    .locals 7

    const-string/jumbo v0, "autoAuth"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->clearAuthLoginFlag()V

    invoke-static {}, Lcom/alipay/mobile/common/utils/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "can\'t in main thread call Auth Service ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AuthServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5ba2\u6237\u7aef\u514d\u767b\u8bf7\u6c42\u7ebf\u7a0b "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AuthServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6dfb\u52a0\u7b49\u5f85\u7ebf\u7a0b (\u514d\u767b\u767b\u5f55)key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "wait"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/alipay/mobile/security/authcenter/service/d;

    invoke-direct {v1}, Lcom/alipay/mobile/security/authcenter/service/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    :try_start_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AuthServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u79fb\u9664\u7b49\u5f85\u7ebf\u7a0b(\u514d\u767b\u767b\u5f55) key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "autoLoginRpc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fail-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "E"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->logLoginEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AuthServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u79fb\u9664\u7b49\u5f85\u7ebf\u7a0b(\u514d\u767b\u767b\u5f55) key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->g:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public cancelLogin()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->notifyUnlockLoginApp(ZZ)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000008"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clearAuthLoginFlag()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "setCurrentLoginState = false"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    return-void
.end method

.method public clearLoginUserInfo()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "clearLoginUserInfo = null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-void
.end method

.method public gestureGetUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v2

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginState()Z

    move-result v3

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move v2, v0

    :goto_2
    if-lt v2, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLoginUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "getLoginUserInfo..."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AuthServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "currentUserId: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "userInfo is not null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AuthServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isAutoLogin = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, "not null"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTaoBaoSsoFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->h:Z

    return v0
.end method

.method public getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 5

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AuthServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "currentUserId: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "isLogin is true"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "getUserInfo mUserInfo is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->clearAuthLoginFlag()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0

    :cond_2
    const-string/jumbo v0, "not null"

    goto :goto_0
.end method

.method public isLogin()Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginState()Z

    move-result v0

    return v0
.end method

.method public logLoginEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v1, "UC-ZHAQ-54"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "loginResult"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const-string/jumbo v2, "event"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void
.end method

.method public logLoginKey()V
    .locals 3

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CurrentLoginUserId"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_3

    const-string/jumbo v1, "userInfo"

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "isAutoLogin"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "GestureSkipStr"

    const-string/jumbo v2, "null"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GesturePwd"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const-string/jumbo v0, "isSkipAutoLogin"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "isLogin"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->isLogin()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v0, "CurrentLoginUserId"

    const-string/jumbo v1, "true"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "GestureSkipStr"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "GesturePwd"

    const-string/jumbo v1, "true"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "userInfo"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "isAutoLogin"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "GestureSkipStr"

    const-string/jumbo v1, "null"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "GesturePwd"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public logLoginStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v1, "UC-ZHAQ-53"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "callLogin"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:J

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const-string/jumbo v2, "event"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void
.end method

.method public notifyUnlockGestureApp()V
    .locals 4

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u91ca\u653e\u624b\u52bf\u754c\u9762\u9501"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyUnlockLoginApp(ZZ)V
    .locals 4

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u91ca\u653e\u767b\u5f55\u754c\u9762\u9501"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public queryLatelyLoginUser()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u67e5\u8be2\u6700\u8fd1\u4e00\u6b21\u767b\u5f55\u7528\u6237\u4fe1\u606f"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u67e5\u8be2\u51fa\u5f53\u524d\u767b\u5f55\u7528\u6237\u72b6\u6001"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u67e5\u8be2\u51fa\u5f53\u524d\u767b\u5f55\u7528\u6237 currentUserLoginId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "AuthServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u67e5\u8be2\u51fa\u5f53\u524d\u767b\u5f55\u7528\u6237 currentUserId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    if-eqz v3, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "AuthServiceImpl"

    const-string/jumbo v4, "\u5f53\u524d\u7528\u6237\u5df2\u7ecf\u767b\u5f55\u72b6\u6001 \uff0c\u67e5\u8be2\u5f53\u524d\u7528\u6237\u8be6\u7ec6\u4fe1\u606f"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "StackTrace"

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AuthServiceImpl"

    const-string/jumbo v3, "\u5f53\u524d\u65e0\u767b\u9646\u7528\u6237\uff0c\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public rpcAuth()Z
    .locals 6

    const-string/jumbo v0, "rpcAuth"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "rpc\u8bf7\u6c42\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "rpcAuth"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->clearAuthLoginFlag()V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getReleaseType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getReleaseType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getReleaseType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_3

    const-string/jumbo v0, "###"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v2, "UC-ZHAQ-56"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v2, "loginTrace"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rpcAuthTrace = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const-string/jumbo v2, "event"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    new-instance v0, Lcom/alipay/mobile/security/authcenter/service/d;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/service/d;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getLoginUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/d;->f()V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v0

    return v0

    :cond_3
    :try_start_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "###"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setTaoBaoSsoFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->h:Z

    return-void
.end method

.method public showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    .locals 3

    const-string/jumbo v0, "showActivityLogin"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->clearAuthLoginFlag()V

    new-instance v0, Lcom/alipay/mobile/security/authcenter/service/d;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/service/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Landroid/os/Bundle;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/d;->h()V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/d;->j()V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/d;->d()V

    const-string/jumbo v1, "isSkipAutoLogin"

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v0

    return v0
.end method
