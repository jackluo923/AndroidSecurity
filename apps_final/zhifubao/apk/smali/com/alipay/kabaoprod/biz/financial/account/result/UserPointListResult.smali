.class public Lcom/alipay/kabaoprod/biz/financial/account/result/UserPointListResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;


# instance fields
.field public contextMap:Ljava/util/Map;
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

.field public pointInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pointNums:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserPointListResult;->contextMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPointInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PointInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserPointListResult;->pointInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getPointNums()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserPointListResult;->pointNums:I

    return v0
.end method

.method public setContextMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserPointListResult;->contextMap:Ljava/util/Map;

    return-void
.end method

.method public setPointInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PointInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserPointListResult;->pointInfoList:Ljava/util/List;

    return-void
.end method

.method public setPointNums(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserPointListResult;->pointNums:I

    return-void
.end method
