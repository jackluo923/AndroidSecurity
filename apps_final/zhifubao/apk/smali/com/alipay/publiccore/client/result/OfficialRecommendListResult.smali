.class public Lcom/alipay/publiccore/client/result/OfficialRecommendListResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;
.source "OfficialRecommendListResult.java"


# instance fields
.field public officialRecommendInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/OfficialRecommendInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialRecommendListResult;->officialRecommendInfos:Ljava/util/List;

    .line 13
    return-void
.end method
