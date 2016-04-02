.class public abstract Lcom/alipay/mobile/security/gesture/GestureConfig;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBlackListAppNames(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isInWhiteList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isNeedCheckUserId()Z
.end method

.method public abstract isNeedProcessHack()Z
.end method

.method public abstract isUpgradeSwitchConvenientEnable(Ljava/lang/String;)Z
.end method

.method public abstract startGestureConfigActivity()V
.end method
