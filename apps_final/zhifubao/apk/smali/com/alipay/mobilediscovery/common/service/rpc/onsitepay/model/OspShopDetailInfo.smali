.class public Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspShopDetailInfo;
.super Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspShopBaseInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alipayWifiInfo:Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspTxtAndUrlPairInfo;

.field public distence:Ljava/lang/String;

.field public followOspSwInfo:Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspTxtAndUrlPairInfo;

.field public hasFollowOspSW:Z

.field public memberCardInfo:Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspTxtAndUrlPairInfo;

.field public merchantLogo:Ljava/lang/String;

.field public merchantName:Ljava/lang/String;

.field public merchantPublicId:Ljava/lang/String;

.field public merchantWsInfo:Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspTxtAndUrlPairInfo;

.field public promotionsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspTxtAndUrlPairInfo;",
            ">;"
        }
    .end annotation
.end field

.field public serviceTime:Ljava/lang/String;

.field public shareInfo:Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspStoreShareInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspShopBaseInfo;-><init>()V

    return-void
.end method
