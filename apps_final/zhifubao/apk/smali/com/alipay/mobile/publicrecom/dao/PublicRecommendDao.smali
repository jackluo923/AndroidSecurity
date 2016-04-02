.class public interface abstract Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDao;
.super Ljava/lang/Object;
.source "PublicRecommendDao.java"


# virtual methods
.method public abstract deleteAllPublicRecommends(Ljava/lang/String;)I
.end method

.method public abstract deletePublicRecommendsByPublicIds(Ljava/util/List;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public abstract queriesAllDeleteStatusPublicRecommend(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queriesAllPublicRecommend(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queriesPublicRecommendByPublicIds(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryPublicRecommendByPublicId(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;
.end method

.method public abstract saveOrUpdatePublicRecommendList(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateAllNormalPublicRecom2DeleteStatus(Ljava/lang/String;)I
.end method
