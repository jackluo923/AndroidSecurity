.class public Lcom/alipay/publiccore/client/result/OfficialIntelligentMarketResult;
.super Lcom/alipay/publiccore/client/result/PublicResult;
.source "OfficialIntelligentMarketResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public adverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/AdEntity;",
            ">;"
        }
    .end annotation
.end field

.field public hasNextPage:Z

.field public officialIntenRecmdInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/OfficialIntelligentRecmdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/publiccore/client/result/PublicResult;-><init>()V

    return-void
.end method
