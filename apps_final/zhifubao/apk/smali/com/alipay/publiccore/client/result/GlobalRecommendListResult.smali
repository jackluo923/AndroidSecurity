.class public Lcom/alipay/publiccore/client/result/GlobalRecommendListResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "GlobalRecommendListResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasNextPage:Z

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
    .line 14
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/client/result/GlobalRecommendListResult;->officialRecommendInfos:Ljava/util/List;

    .line 14
    return-void
.end method
