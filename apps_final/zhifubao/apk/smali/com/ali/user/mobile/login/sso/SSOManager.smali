.class public Lcom/ali/user/mobile/login/sso/SSOManager;
.super Ljava/lang/Object;
.source "SSOManager.java"


# static fields
.field private static e:Lcom/ali/user/mobile/login/sso/SSOManager;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/ali/user/mobile/login/sso/SSOFacade;

.field private d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

.field private f:Lcom/ali/user/mobile/login/sso/SSOInfo;

.field private g:Ljava/util/concurrent/locks/Lock;

.field private h:Ljava/util/concurrent/locks/Condition;

.field ssoLoginDone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v0, "SSOManager.login"

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->a:Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->f:Lcom/ali/user/mobile/login/sso/SSOInfo;

    .line 130
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    .line 131
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->h:Ljava/util/concurrent/locks/Condition;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->ssoLoginDone:Z

    .line 58
    iput-object p1, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->b:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/ali/user/mobile/login/sso/SSOFacade;

    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/login/sso/SSOFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->c:Lcom/ali/user/mobile/login/sso/SSOFacade;

    .line 60
    new-instance v0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->b:Landroid/content/Context;

    .line 61
    new-instance v2, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getSsoRequestParam()Lcom/ali/user/mobile/login/sso/SSORequestParam;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;-><init>(Lcom/ali/user/mobile/login/sso/SSORequestParam;)V

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;-><init>(Landroid/content/Context;Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;)V

    .line 60
    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    .line 62
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ali/user/mobile/login/sso/SSOInfo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->ssoLoginDone:Z

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 139
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->b:Landroid/content/Context;

    new-instance v3, Lcom/ali/user/mobile/login/sso/SSOManager$1;

    invoke-direct {v3, p0, p1}, Lcom/ali/user/mobile/login/sso/SSOManager$1;-><init>(Lcom/ali/user/mobile/login/sso/SSOManager;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->loginWithType(Ljava/lang/String;ZLandroid/content/Context;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V

    .line 192
    :goto_0
    iget-boolean v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->ssoLoginDone:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->f:Lcom/ali/user/mobile/login/sso/SSOInfo;

    return-object v0

    .line 193
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    :try_start_2
    const-string/jumbo v1, "SSOManager.login"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 199
    throw v0
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/login/sso/SSOManager;Lcom/ali/user/mobile/login/sso/SSOInfo;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->f:Lcom/ali/user/mobile/login/sso/SSOInfo;

    return-void
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->h:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSOManager;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/ali/user/mobile/login/sso/SSOManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/login/sso/SSOManager;->e:Lcom/ali/user/mobile/login/sso/SSOManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/ali/user/mobile/login/sso/SSOManager;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/sso/SSOManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/login/sso/SSOManager;->e:Lcom/ali/user/mobile/login/sso/SSOManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/login/sso/SSOManager;->e:Lcom/ali/user/mobile/login/sso/SSOManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 260
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "createSsoToken"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->c:Lcom/ali/user/mobile/login/sso/SSOFacade;

    .line 264
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getAlipaySsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getTaobaoSsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 263
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/sso/SSOFacade;->createSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/login/sso/SSOInfo;Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 266
    if-nez v4, :cond_2

    move v3, v7

    .line 267
    :goto_0
    if-eqz v3, :cond_1

    .line 268
    :try_start_2
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/AliUserInit;->isAppDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, v4, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->taobaoSsoToken:Ljava/lang/String;
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    :try_start_3
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v6, "ssotoken.txt"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 271
    :cond_0
    :goto_1
    :try_start_6
    const-string/jumbo v0, "SSOManager.login"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "writeSsoToken, result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    iget-boolean v0, v4, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->success:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "\u521b\u5efa\u7684alipaySsoToken:"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v4, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->alipaySsoToken:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->alipaySsoToken:Ljava/lang/String;

    iget-object v1, v4, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->loginId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/ali/user/mobile/login/sso/SSOManager;->writeAlipaySsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "\u521b\u5efa\u7684taobaoSsoToken:"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v4, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->taobaoSsoToken:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->taobaoSsoToken:Ljava/lang/String;

    iget-object v1, v4, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->nick:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/ali/user/mobile/login/sso/SSOManager;->writeTaobaoSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 281
    :cond_1
    :goto_2
    :try_start_7
    const-string/jumbo v0, "SSOManager.login"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "createSsoToken result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 282
    monitor-exit p0

    return v3

    .line 266
    :cond_2
    :try_start_8
    iget-boolean v3, v4, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->success:Z
    :try_end_8
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 269
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v1, :cond_0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 273
    :catch_2
    move-exception v0

    move v1, v3

    .line 274
    :goto_4
    :try_start_c
    const-string/jumbo v2, "SSOManager.login"

    const-string/jumbo v3, "RpcException when createSsoToken"

    invoke-static {v2, v3, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CONNECTERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move v3, v1

    goto :goto_2

    .line 269
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_3

    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_3
    :goto_6
    :try_start_e
    throw v0
    :try_end_e
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 276
    :catch_3
    move-exception v0

    .line 277
    :goto_7
    :try_start_f
    const-string/jumbo v1, "SSOManager.login"

    const-string/jumbo v2, "Exception when createSsoToken"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_2

    .line 260
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 269
    :catch_4
    move-exception v1

    :try_start_10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_1

    .line 276
    :catch_6
    move-exception v0

    move v3, v7

    goto :goto_7

    .line 273
    :catch_7
    move-exception v0

    move v1, v7

    goto :goto_4

    .line 269
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_3
.end method

.method public getAlipaySsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->alipayAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->a(Ljava/lang/String;)Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSsoLoginWrapper()Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    return-object v0
.end method

.method public getTaobaoSsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->taobaoAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->a(Ljava/lang/String;)Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v0

    return-object v0
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "\u6ce8\u9500\u652f\u4ed8\u5b9d\u548c\u6dd8\u5b9dssotoken"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->logoutAlipay()V

    .line 74
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->logoutTaobao()V

    .line 75
    return-void
.end method

.method public logout(Lcom/ali/user/mobile/login/sso/SSOInfo;)V
    .locals 3

    .prologue
    .line 78
    const-string/jumbo v0, "SSOManager.login"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "logout ssoInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    iget-object v1, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->accountType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/sso/SSOManager;->logout(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    :cond_0
    return-void
.end method

.method public logout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 85
    const-string/jumbo v1, "SSOManager.login"

    const-string/jumbo v2, "\u6ce8\u9500sso, nick:%s, accountType:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v1, p1, p2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->logout(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 92
    :goto_0
    const-string/jumbo v1, "SSOManager.login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6ce8\u9500sso\u7ed3\u679c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v2, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logoutAlipay()V
    .locals 2

    .prologue
    .line 100
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "logoutAlipay"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getAlipaySsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->logout(Lcom/ali/user/mobile/login/sso/SSOInfo;)V

    .line 102
    return-void
.end method

.method public logoutTaobao()V
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "logoutTaobao"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getTaobaoSsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->logout(Lcom/ali/user/mobile/login/sso/SSOInfo;)V

    .line 110
    return-void
.end method

.method public declared-synchronized shareTaobaoSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 240
    monitor-enter p0

    .line 242
    :try_start_0
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v2, "\u5199\u5165sso token, type:%s, nike:%s, img:%s, token:%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 243
    iget-object v5, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v5}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->taobaoAccountType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    .line 242
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v2, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->taobaoAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->shareSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 251
    :goto_0
    :try_start_1
    const-string/jumbo v1, "SSOManager.login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeTaobaoSsoToken\u7ed3\u679c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    monitor-exit p0

    return v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    :try_start_2
    const-string/jumbo v2, "SSOManager.login"

    const-string/jumbo v3, "shareSsoToken exception"

    invoke-static {v2, v3, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public verifyAlipaySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;Lcom/ali/user/mobile/login/sso/SSoVerifyListener;)V
    .locals 6

    .prologue
    .line 338
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->c:Lcom/ali/user/mobile/login/sso/SSOFacade;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/sso/SSOFacade;->verifySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;

    move-result-object v1

    .line 340
    if-nez v1, :cond_1

    .line 341
    if-eqz p2, :cond_0

    .line 342
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/ali/user/mobile/login/sso/SSoVerifyListener;->onFail(Landroid/os/Bundle;)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 346
    const-string/jumbo v0, "memo"

    iget-object v3, v1, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->memo:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v0, "resultCode"

    iget-object v3, v1, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v0, "ssoInfo"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 350
    iget-boolean v0, v1, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->success:Z

    if-eqz v0, :cond_2

    .line 351
    if-eqz p2, :cond_0

    .line 352
    invoke-interface {p2, v2}, Lcom/ali/user/mobile/login/sso/SSoVerifyListener;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    .line 354
    :cond_2
    const-string/jumbo v0, "1002"

    iget-object v3, v1, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    if-eqz p2, :cond_0

    .line 356
    const-string/jumbo v0, "https://www.alipay.com/webviewbridge?type=sso"

    .line 358
    :try_start_0
    const-string/jumbo v3, "GBK"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 363
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    iget-object v4, v1, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->h5Url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 365
    iget-object v1, v1, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->h5Url:Ljava/lang/String;

    const-string/jumbo v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const-string/jumbo v1, "&loginId="

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    const-string/jumbo v4, "&appName="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ali/user/mobile/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    const-string/jumbo v4, "&callbackUrl="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    const-string/jumbo v1, "url"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-interface {p2, v2}, Lcom/ali/user/mobile/login/sso/SSoVerifyListener;->onUserConfirm(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 360
    :catch_0
    move-exception v3

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 365
    :cond_3
    const-string/jumbo v1, "?loginId="

    goto :goto_2

    .line 375
    :cond_4
    if-eqz p2, :cond_0

    .line 376
    invoke-interface {p2, v2}, Lcom/ali/user/mobile/login/sso/SSoVerifyListener;->onFail(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public verifyAlipaySsoToken(Lcom/ali/user/mobile/login/sso/SSoVerifyListener;)V
    .locals 2

    .prologue
    .line 321
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "alipaySsoLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getAlipaySsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    invoke-virtual {p0, v0, p1}, Lcom/ali/user/mobile/login/sso/SSOManager;->verifyAlipaySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;Lcom/ali/user/mobile/login/sso/SSoVerifyListener;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "\u6ca1\u6709\u89e3\u6790\u5230sso token\uff0c\u542f\u52a8\u8d26\u5bc6\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-eqz p1, :cond_0

    .line 328
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ali/user/mobile/login/sso/SSoVerifyListener;->onFail(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public verifySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->c:Lcom/ali/user/mobile/login/sso/SSOFacade;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/sso/SSOFacade;->verifySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;

    move-result-object v0

    return-object v0
.end method

.method public verifyTaobaoSsoToken()Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;
    .locals 2

    .prologue
    .line 296
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "verifyTaobaoSsoToken"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getTaobaoSsoInfo()Lcom/ali/user/mobile/login/sso/SSOInfo;

    move-result-object v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->verifyTaobaoSsoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    move-result-object v0

    return-object v0
.end method

.method public verifyTaobaoSsoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;
    .locals 3

    .prologue
    .line 304
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->c:Lcom/ali/user/mobile/login/sso/SSOFacade;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/sso/SSOFacade;->verifyTaobaoSsoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;->success:Z

    if-eqz v0, :cond_1

    .line 307
    new-instance v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;-><init>()V

    .line 308
    iget-object v2, v1, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;->headImg:Ljava/lang/String;

    iput-object v2, v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->headImg:Ljava/lang/String;

    .line 309
    iget-boolean v2, v1, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;->directLogin:Z

    iput-boolean v2, v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->isDirectLogin:Z

    .line 310
    iget-object v2, v1, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;->loginToken:Ljava/lang/String;

    iput-object v2, v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->loginToken:Ljava/lang/String;

    .line 311
    iget-object v1, v1, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;->taobaoNick:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->taobaoNick:Ljava/lang/String;

    .line 317
    :goto_0
    return-object v0

    .line 315
    :cond_0
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "\u6ca1\u6709\u83b7\u53d6\u5230\u6216\u8005\u975e\u6cd5\u7684ssoInfo"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized writeAlipaySsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 212
    monitor-enter p0

    .line 214
    :try_start_0
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v2, "\u5199\u5165sso token, type:%s, nike:%s, userid:%s, img:%s, token:%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 215
    iget-object v5, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v5}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->alipayAccountType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p1, v3, v4

    .line 214
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v2, p0, Lcom/ali/user/mobile/login/sso/SSOManager;->d:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->alipayAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, p2, p4, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->shareSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 223
    :goto_0
    :try_start_1
    const-string/jumbo v1, "SSOManager.login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeAlipaySsoToken\u7ed3\u679c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    monitor-exit p0

    return v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    :try_start_2
    const-string/jumbo v2, "SSOManager.login"

    const-string/jumbo v3, "shareSsoToken exception"

    invoke-static {v2, v3, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeTaobaoSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ali/user/mobile/login/sso/SSOManager;->shareTaobaoSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
