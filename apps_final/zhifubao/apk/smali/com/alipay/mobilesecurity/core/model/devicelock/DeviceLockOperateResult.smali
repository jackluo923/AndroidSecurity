.class public Lcom/alipay/mobilesecurity/core/model/devicelock/DeviceLockOperateResult;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public currentLockStatus:Ljava/lang/String;

.field public lastCloseTime:Ljava/util/Date;

.field public lastOpenTime:Ljava/util/Date;

.field public lastOperate:Ljava/lang/String;

.field public lastPlateForm:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method
