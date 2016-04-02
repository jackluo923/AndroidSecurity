.class public Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bindedMobile:Ljava/lang/String;

.field public certNo:Ljava/lang/String;

.field public certTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/shared/ccr/domain/CertTypeModel;",
            ">;"
        }
    .end annotation
.end field

.field public needCardNo:Ljava/lang/String;

.field public needCheckCode:Ljava/lang/String;

.field public needCvv2:Ljava/lang/String;

.field public needExpdate:Ljava/lang/String;

.field public needFastPaySign:Ljava/lang/String;

.field public needIdentity:Ljava/lang/String;

.field public needIndtype:Ljava/lang/String;

.field public needMobile:Ljava/lang/String;

.field public needUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needExpdate:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needIndtype:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needIdentity:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needMobile:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needCvv2:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needCheckCode:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needCardNo:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needUserName:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->needFastPaySign:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->certNo:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;->bindedMobile:Ljava/lang/String;

    return-void
.end method
