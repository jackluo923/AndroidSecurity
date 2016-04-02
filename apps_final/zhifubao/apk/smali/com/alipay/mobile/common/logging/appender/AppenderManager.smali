.class public Lcom/alipay/mobile/common/logging/appender/AppenderManager;
.super Ljava/lang/Object;
.source "AppenderManager.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/appender/Appender;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/common/logging/LogContextImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V
    .locals 13

    .prologue
    const-wide/16 v11, 0x3

    const-wide/16 v9, 0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b:Lcom/alipay/mobile/common/logging/LogContextImpl;

    .line 22
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v8, "applog"

    new-instance v0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;

    const-string/jumbo v2, "applog"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;JJ)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v8, "logcat"

    new-instance v0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;

    const-string/jumbo v2, "logcat"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;JJ)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v8, "trafficLog"

    new-instance v0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;

    const-string/jumbo v2, "trafficLog"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xf

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;JJ)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "userbehavor"

    new-instance v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    const-string/jumbo v3, "userbehavor"

    invoke-direct {v2, p1, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "autouserbehavor"

    new-instance v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    const-string/jumbo v3, "autouserbehavor"

    invoke-direct {v2, p1, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "exception"

    new-instance v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    const-string/jumbo v3, "exception"

    invoke-direct {v2, p1, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "sdkmonitor"

    new-instance v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    const-string/jumbo v3, "sdkmonitor"

    invoke-direct {v2, p1, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "performance"

    new-instance v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    const-string/jumbo v3, "performance"

    invoke-direct {v2, p1, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "romesync"

    new-instance v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    const-string/jumbo v3, "romesync"

    invoke-direct {v2, p1, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "network"

    new-instance v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    const-string/jumbo v3, "network"

    invoke-direct {v2, p1, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "webapp"

    new-instance v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    const-string/jumbo v3, "webapp"

    invoke-direct {v2, p1, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "footprint"

    new-instance v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    const-string/jumbo v3, "footprint"

    invoke-direct {v2, p1, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "crash"

    new-instance v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    const-string/jumbo v3, "crash"

    invoke-direct {v2, p1, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "alivereport"

    new-instance v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    const-string/jumbo v3, "alivereport"

    invoke-direct {v2, p1, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 6

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 55
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/logging/appender/Appender;

    .line 56
    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/logging/appender/Appender;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 62
    :cond_2
    :try_start_2
    const-string/jumbo v1, "flush"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/logging/appender/Appender;

    .line 65
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/appender/Appender;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    :cond_4
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/appender/Appender;->c()V

    goto :goto_1

    .line 72
    :cond_5
    const-string/jumbo v1, "upload"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 73
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/logging/appender/Appender;

    .line 75
    instance-of v2, v1, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    if-eqz v2, :cond_6

    .line 76
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    move-object v2, v0

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/appender/Appender;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 78
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e()V

    goto :goto_2

    .line 85
    :cond_7
    const-string/jumbo v1, "refreshSession"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :try_start_3
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->k()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 88
    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
