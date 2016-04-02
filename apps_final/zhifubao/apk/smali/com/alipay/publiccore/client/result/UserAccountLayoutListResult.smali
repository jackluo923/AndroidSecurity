.class public Lcom/alipay/publiccore/client/result/UserAccountLayoutListResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "UserAccountLayoutListResult.java"


# instance fields
.field private userAccountLayoutResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserAccountLayoutResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/publiccore/client/result/UserAccountLayoutListResult;->userAccountLayoutResultList:Ljava/util/List;

    return-object v0
.end method

.method public setUserAccountLayoutResultList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/publiccore/client/result/UserAccountLayoutListResult;->userAccountLayoutResultList:Ljava/util/List;

    .line 21
    return-void
.end method
