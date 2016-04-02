.class public Lcom/alipay/mobileprod/biz/ccr/vo/ApplyCreditCardBillQueryReqVO;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cardId:Ljava/lang/String;

.field public checkCode:Ljava/lang/String;

.field public cvv2:Ljava/lang/String;

.field public expdate:Ljava/lang/String;

.field public identityNo:Ljava/lang/String;

.field public identityType:Ljava/lang/String;

.field public mobile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    return-void
.end method
