.class public Lcom/alipay/livetradeprod/core/model/rpc/GetInitArgsRes;
.super Lcom/alipay/livetradeprod/core/model/base/OnsiteBaseRes;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public displayMoreMenu:Z

.field public displayOspMerchants:Z

.field public displayOspSW:Z

.field public displayPayChannel:Z

.field public facePaySwitch:Ljava/lang/String;

.field public moreMenu:Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspTxtAndUrlPairInfo;

.field public noticeAuthPeriod:I

.field public noticeAuthTxt:Ljava/lang/String;

.field public ospMenu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspTxtAndUrlPairInfo;",
            ">;"
        }
    .end annotation
.end field

.field public payChannelModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/PayChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field public shouldNoticeAuth:Z

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/livetradeprod/core/model/base/OnsiteBaseRes;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/GetInitArgsRes;->payChannelModels:Ljava/util/List;

    return-void
.end method
