.class public final Lcom/alipay/pushsdk/AliPushInterface;
.super Ljava/lang/Object;
.source "AliPushInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 79
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".push.action.NOTIFICATION_CLICKED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v1, "k"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v1, "ext"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v0, "AliPushInterface"

    const-string/jumbo v1, "activeReport() startService!"

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static checkDevice(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 19
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Device must be at least API Level 5 (instead of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_0
    return-void
.end method

.method public static delUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/alipay/pushsdk/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/b;->j(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "0"

    invoke-static {p0, v0}, Lcom/alipay/pushsdk/AliPushInterface;->startPush(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static setChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/alipay/pushsdk/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/b;->b(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static setClientId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/alipay/pushsdk/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/b;->e(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .prologue
    .line 91
    sput-boolean p0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    .line 93
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->refreshDebugMode()V

    .line 94
    return-void
.end method

.method public static setMsptid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/alipay/pushsdk/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/b;->g(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static setProductId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/alipay/pushsdk/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/b;->c(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static setPushState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/alipay/pushsdk/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/b;->h(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/alipay/pushsdk/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/b;->i(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static setUtdid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/alipay/pushsdk/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/b;->f(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static setVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/alipay/pushsdk/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/b;->d(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static showDefaultMsg(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/alipay/pushsdk/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0}, Lcom/alipay/pushsdk/b;->a()V

    .line 99
    return-void
.end method

.method public static startPush(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/alipay/pushsdk/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/b;->a(Ljava/lang/String;)V

    .line 31
    return-void
.end method
