.class public Lcom/alipay/mobile/quinox/utils/LogUtil;
.super Ljava/lang/Object;


# static fields
.field private static BOOTSTRAP_LOG_ENABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return v0
.end method

.method public static setDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/LogUtil;->BOOTSTRAP_LOG_ENABLE:Z

    return-void
.end method
