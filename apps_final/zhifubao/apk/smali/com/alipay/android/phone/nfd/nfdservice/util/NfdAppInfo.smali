.class public Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

.field private static c:Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->b:Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

    if-nez v0, :cond_0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->b:Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->b:Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->f:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tokenResult == null, return mApdid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->f:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;Landroid/content/Context;)V

    const-string/jumbo v2, "NfdAppInfo.initApdId"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
