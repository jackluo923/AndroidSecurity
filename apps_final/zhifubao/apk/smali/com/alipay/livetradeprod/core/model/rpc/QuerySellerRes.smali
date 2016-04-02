.class public Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerRes;
.super Lcom/alipay/livetradeprod/core/model/base/OnsiteBaseRes;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public tradeInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/livetradeprod/core/model/base/OnsiteBaseRes;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerRes;->tradeInfo:Ljava/util/List;

    return-void
.end method
