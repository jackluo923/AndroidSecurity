.class public final Lcom/alipay/mobile/rome/syncservice/a/b;
.super Ljava/lang/Object;
.source "LinkSyncUserInfo.java"


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;

    .line 53
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/alipay/mobile/rome/syncservice/a/b;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sput-object p0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a()V

    .line 40
    :cond_0
    sput-object p0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v1

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    sput-object p0, Lcom/alipay/mobile/rome/syncservice/a/b;->b:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 80
    const-string/jumbo v1, ""

    .line 83
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 86
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 89
    if-nez v0, :cond_0

    .line 90
    const-string/jumbo v0, "sync_service_LinkSyncUserInfo"

    const-string/jumbo v2, "getUserIdCurrent: [authService null ]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-object v1

    .line 93
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 102
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string/jumbo v2, "sync_service_LinkSyncUserInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getUserIdCurrent: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
