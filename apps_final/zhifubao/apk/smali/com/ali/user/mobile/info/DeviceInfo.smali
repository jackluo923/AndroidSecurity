.class public Lcom/ali/user/mobile/info/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static a:Lcom/ali/user/mobile/info/DeviceInfo;

.field private static b:Ljava/lang/Object;


# instance fields
.field private c:Landroid/telephony/TelephonyManager;

.field private d:Landroid/util/DisplayMetrics;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/DeviceInfo;->b:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/info/DeviceInfo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/info/DeviceInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ali/user/mobile/info/DeviceInfo;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/info/DeviceInfo;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/info/DeviceInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ali/user/mobile/info/DeviceInfo;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/info/DeviceInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/ali/user/mobile/info/DeviceInfo;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance()Lcom/ali/user/mobile/info/DeviceInfo;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/ali/user/mobile/info/DeviceInfo;->a:Lcom/ali/user/mobile/info/DeviceInfo;

    if-nez v0, :cond_1

    .line 76
    sget-object v1, Lcom/ali/user/mobile/info/DeviceInfo;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/info/DeviceInfo;->a:Lcom/ali/user/mobile/info/DeviceInfo;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/DeviceInfo;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/DeviceInfo;->a:Lcom/ali/user/mobile/info/DeviceInfo;

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_1
    sget-object v0, Lcom/ali/user/mobile/info/DeviceInfo;->a:Lcom/ali/user/mobile/info/DeviceInfo;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getHeightPix()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->d:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_1

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->d:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->d:Landroid/util/DisplayMetrics;

    .line 135
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->d:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 108
    const-string/jumbo v0, "000000000000000"

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "000000000000000"

    goto :goto_0
.end method

.method public getMobileBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getUA()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtDid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object v1, Lcom/ali/user/mobile/info/DeviceInfo;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/info/DeviceInfo;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->g:Ljava/lang/String;

    return-object v0

    .line 161
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUtDidAsync()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getWidthPix()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->d:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_1

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->d:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->d:Landroid/util/DisplayMetrics;

    .line 124
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->d:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->i:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->i:Landroid/content/Context;

    .line 46
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 45
    iput-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->c:Landroid/telephony/TelephonyManager;

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/info/DeviceInfo$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/info/DeviceInfo$1;-><init>(Lcom/ali/user/mobile/info/DeviceInfo;)V

    .line 53
    const-string/jumbo v2, "aliuser_DeviceInfo_initClientID"

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/info/DeviceInfo$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/info/DeviceInfo$2;-><init>(Lcom/ali/user/mobile/info/DeviceInfo;)V

    .line 68
    const-string/jumbo v2, "aliuser_DeviceInfo_DeviceInfo_initUtdid"

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    :cond_0
    return-void
.end method

.method public isRooted()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 85
    .line 87
    :try_start_0
    const-string/jumbo v1, "ro.secure"

    invoke-static {v1}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_1

    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    if-eqz v1, :cond_0

    const-string/jumbo v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
