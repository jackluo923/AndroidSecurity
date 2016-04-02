.class public Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public allowSignBalanceBaoDeduct:Z

.field public bindingMobilePhoneNo:Ljava/lang/String;

.field public debitType:Ljava/lang/String;

.field public debitTypeConfig:Ljava/lang/String;

.field public deductDay:Ljava/lang/String;

.field public deductDayEditable:Z

.field public deductId:Ljava/lang/String;

.field public opendedBalanceBao:Z

.field public passwordType:Ljava/lang/String;

.field public remindMobilePhoneNo:Ljava/lang/String;

.field public selectedBalance:Z

.field public selectedBalanceBao:Z

.field public selectedShortcutCard:Z

.field public shortcutCardInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/ShortcutCardInfo;

.field public shortcutCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/shared/ccr/domain/ShortcutCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public signedBalanceBaoDeduct:Z

.field public signedDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method
