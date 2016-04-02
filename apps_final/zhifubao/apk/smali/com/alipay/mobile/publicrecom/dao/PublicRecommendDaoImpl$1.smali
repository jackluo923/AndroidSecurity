.class Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl$1;
.super Ljava/lang/Object;
.source "PublicRecommendDaoImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Ljava/util/List;

.field failList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl$1;->this$0:Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;

    iput-object p2, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl$1;->a:Ljava/util/List;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl$1;->failList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl$1;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl$1;->failList:Ljava/util/List;

    return-object v0

    .line 71
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;

    .line 72
    iget-object v2, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl$1;->this$0:Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;

    iget-object v3, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl$1;->failList:Ljava/util/List;

    # invokes: Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->a(Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;Ljava/util/List;)Z
    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->access$0(Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;Ljava/util/List;)Z

    goto :goto_0
.end method
