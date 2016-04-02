.class public Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/result/OspSwitchResult;
.super Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public displayMoreMenu:Z

.field public displayOspMerchants:Z

.field public displayOspSW:Z

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

.field public shouldNoticeAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;-><init>()V

    return-void
.end method
