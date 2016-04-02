.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetAccountInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fundAssetAccountInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetAccountInfo;

.field public fundInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;

.field public fundProfitIntervalInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundProfitIntervalInfo;

.field public shareInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/kabaoprod/core/model/model/ShareInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method
