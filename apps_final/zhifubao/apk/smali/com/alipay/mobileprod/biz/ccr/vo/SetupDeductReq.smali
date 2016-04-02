.class public Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionType:Ljava/lang/String;

.field public cardId:Ljava/lang/String;

.field public debitType:Ljava/lang/String;

.field public deductDay:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;

.field public paymentPassword:Ljava/lang/String;

.field public remindMobilePhoneNo:Ljava/lang/String;

.field public selectedBalance:Z

.field public selectedBalanceBao:Z

.field public selectedShortcutCard:Z

.field public shortcutCardSignChannelType:Ljava/lang/String;

.field public shortcutCardSignId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    return-void
.end method
