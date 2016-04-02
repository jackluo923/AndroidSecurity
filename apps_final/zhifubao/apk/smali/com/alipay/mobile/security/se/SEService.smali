.class public abstract Lcom/alipay/mobile/security/se/SEService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract generateOTPSeed(Lcom/alipay/mobile/security/se/SECallBack;)Z
.end method

.method public abstract getOTPIndex(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOTPTimediff()Ljava/lang/Long;
.end method

.method public abstract invalidCurTidUidSeed()Z
.end method

.method public abstract removeOTPCurUserIndex(Ljava/lang/String;)Z
.end method

.method public abstract showTokenNum()Ljava/lang/String;
.end method

.method public abstract timeCalibration(Lcom/alipay/mobile/security/se/SECallBack;)Z
.end method

.method public abstract updateOTPConfigFile(Lcom/alipay/mobile/security/se/SECallBack;)Z
.end method
