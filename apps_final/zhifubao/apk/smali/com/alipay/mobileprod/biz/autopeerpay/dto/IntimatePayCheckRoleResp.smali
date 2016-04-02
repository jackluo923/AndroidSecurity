.class public Lcom/alipay/mobileprod/biz/autopeerpay/dto/IntimatePayCheckRoleResp;
.super Lcom/alipay/mobileprod/core/model/ExtBaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionCode:I

.field public certifiedFlag:Ljava/lang/String;

.field public pwdFlag:Ljava/lang/String;

.field public signMaxAmount:Ljava/lang/String;

.field public signMinAmount:Ljava/lang/String;

.field public targetUserInfo:Lcom/alipay/mobileprod/biz/autopeerpay/vo/IntimateUserInfoVO;

.field public targetUserRole:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ExtBaseRespVO;-><init>()V

    return-void
.end method
