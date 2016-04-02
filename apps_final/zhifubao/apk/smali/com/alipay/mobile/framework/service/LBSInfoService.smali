.class public abstract Lcom/alipay/mobile/framework/service/LBSInfoService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLastKnownLBSInfo()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
.end method

.method public abstract removeLBSInfoUpdatesContinuous(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V
.end method

.method public abstract removeUpdates(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V
.end method

.method public abstract requestLBSInfoUpdates(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V
.end method

.method public abstract requestLBSInfoUpdatesContinuous(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;JF)V
.end method

.method public abstract requestLBSInfoUpdatesEnhanceByIP(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;Ljava/lang/String;)V
.end method

.method public abstract upLoadLocation()V
.end method
