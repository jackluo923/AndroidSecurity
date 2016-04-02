.class public Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;
.super Lcom/alipay/mobileprod/core/model/rec/alert/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alertType:Ljava/lang/String;

.field public checkCode:Ljava/lang/String;

.field public mobileNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/rec/alert/BaseReqVO;-><init>()V

    return-void
.end method
