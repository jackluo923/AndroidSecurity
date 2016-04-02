.class public Lcom/ali/user/mobile/info/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field public static final TAOBAO_SSO_MTOP_APP_KEY_DEV:Ljava/lang/String; = "4272"

.field public static final TAOBAO_SSO_MTOP_APP_KEY_ONLINE:Ljava/lang/String; = "12501616"

.field private static a:Lcom/ali/user/mobile/info/AppInfo;

.field private static b:Ljava/lang/Object;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

.field private i:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/AppInfo;->b:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "alipay"

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->i:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    if-nez v0, :cond_0

    .line 81
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->i:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->i:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    return-object v0
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/info/AppInfo;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initApdid exception, mApdid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/ali/user/mobile/info/AppInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "com.eg.android.AlipayGphoneRC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "AppInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\u94b1\u5305\u8fdb\u7a0b,send appinfo broadcast"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ali.user.mobile.info.AppInfo.ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "apdid"

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "AppInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " push\u8fdb\u7a0b"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 390
    const/4 v1, 0x0

    .line 392
    :try_start_0
    const-string/jumbo v0, "android.ddm.DdmHandleAppName"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 393
    const-string/jumbo v2, "getAppName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 394
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 399
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 401
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 402
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 410
    :cond_1
    :goto_1
    return-object v1

    .line 396
    :catch_0
    move-exception v0

    const-string/jumbo v0, "AppInfo"

    const-string/jumbo v2, "error invoke android.ddm.DdmHandleAppName.getAppName"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 404
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 405
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getInstance()Lcom/ali/user/mobile/info/AppInfo;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/ali/user/mobile/info/AppInfo;->a:Lcom/ali/user/mobile/info/AppInfo;

    if-nez v0, :cond_1

    .line 62
    sget-object v1, Lcom/ali/user/mobile/info/AppInfo;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/info/AppInfo;->a:Lcom/ali/user/mobile/info/AppInfo;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/ali/user/mobile/info/AppInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/AppInfo;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/AppInfo;->a:Lcom/ali/user/mobile/info/AppInfo;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/ali/user/mobile/info/AppInfo;->a:Lcom/ali/user/mobile/info/AppInfo;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/info/AppInfo;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    .line 196
    :goto_0
    return-object v0

    .line 195
    :cond_0
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tokenResult == null, return mApdid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApdidAsync()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getApdidAsync:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "exception getApdidAsync, mApdid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getApdidExt(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 259
    const-string/jumbo v0, "apdid"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.ali.user.mobile.info.AppInfo"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string/jumbo v1, "AppInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getApdidExt:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-object v0
.end method

.method public getApdidToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/info/AppInfo;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    .line 217
    :goto_0
    return-object v0

    .line 216
    :cond_0
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tokenResult == null, return mApdidToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApdidTokenAsync()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getApdidTokenAsync:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string/jumbo v1, "AppInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AppDataProvider\u8fd4\u56de\u7684appKey:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_0
    return-object v0

    .line 276
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v1, "exception getAppKey, AppDataProvider\u6ca1\u6709appkey"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 277
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    new-instance v1, Lcom/taobao/securityjni/StaticDataStore;

    new-instance v2, Landroid/content/ContextWrapper;

    iget-object v3, p0, Lcom/ali/user/mobile/info/AppInfo;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v1, v0}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey(Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AppInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getAppKeyInternal:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    return-object v0
.end method

.method public getMspClientKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getMspClientKey()Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMspImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getMspImei()Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMspImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getMspImsi()Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMspTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getMspTid()Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getProductId()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    return-object v0
.end method

.method public getSdkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string/jumbo v0, "aliusersdk"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string/jumbo v0, "1.1.3.0"

    return-object v0
.end method

.method public getSsoRequestParam()Lcom/ali/user/mobile/login/sso/SSORequestParam;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getSsoRequestParam()Lcom/ali/user/mobile/login/sso/SSORequestParam;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getTid()Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getUmid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/info/AppInfo;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    .line 239
    :goto_0
    return-object v0

    .line 238
    :cond_0
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tokenResult == null, return mUmidToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUmidAsync()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getUmidAsync:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "exception getUmidAsync, mUmidToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getVImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getVImei()Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getVImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getVImsi()Ljava/lang/String;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getWalletClientKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getWalletClientKey()Ljava/lang/String;

    move-result-object v0

    .line 344
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getWalletTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->c:Landroid/content/Context;

    .line 72
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/info/AppInfo;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/info/AppInfo$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/info/AppInfo$1;-><init>(Lcom/ali/user/mobile/info/AppInfo;Landroid/content/Context;)V

    const-string/jumbo v2, "AppInfo.initUmidToken"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method public isAlipayApp()Z
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->isAlipayApp()Z

    move-result v0

    .line 183
    :cond_0
    return v0
.end method

.method public isUseSso()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/ali/user/mobile/dataprovider/AppDataProvider;->isUseSso()Z

    move-result v0

    .line 350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->d:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setDataProvider(Lcom/ali/user/mobile/dataprovider/AppDataProvider;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo;->h:Lcom/ali/user/mobile/dataprovider/AppDataProvider;

    .line 365
    return-void
.end method
