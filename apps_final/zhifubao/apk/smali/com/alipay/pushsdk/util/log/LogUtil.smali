.class public Lcom/alipay/pushsdk/util/log/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static CONFIGURE_ENABLE:Z

.field public static LOG_LEVEL:I

.field public static LOG_LEVEL_DEBUG:I

.field public static LOG_LEVEL_DETAIL:I

.field public static LOG_LEVEL_ERROR:I

.field public static LOG_LEVEL_INFO:I

.field public static LOG_LEVEL_WARNING:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    .line 12
    sput v1, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL:I

    .line 14
    sput v1, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_ERROR:I

    .line 15
    const/4 v0, 0x2

    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_WARNING:I

    .line 16
    const/4 v0, 0x3

    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_INFO:I

    .line 17
    const/4 v0, 0x4

    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_DEBUG:I

    .line 18
    const/4 v0, 0x5

    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_DETAIL:I

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogOut(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL:I

    .line 42
    return-void
.end method

.method public static canLog(I)Z
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL:I

    if-lt v0, p0, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeLogTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static refreshDebugMode()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    if-eqz v0, :cond_0

    .line 33
    sget v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_DEBUG:I

    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL:I

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    sget v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_ERROR:I

    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL:I

    goto :goto_0
.end method
