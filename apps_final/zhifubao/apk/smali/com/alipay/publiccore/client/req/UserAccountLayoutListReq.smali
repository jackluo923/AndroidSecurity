.class public Lcom/alipay/publiccore/client/req/UserAccountLayoutListReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "UserAccountLayoutListReq.java"


# instance fields
.field private userAccountLayoutReqList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/UserAccountLayoutReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserAccountLayoutReqList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/UserAccountLayoutReq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/publiccore/client/req/UserAccountLayoutListReq;->userAccountLayoutReqList:Ljava/util/List;

    return-object v0
.end method

.method public setUserAccountLayoutReqList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/UserAccountLayoutReq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/publiccore/client/req/UserAccountLayoutListReq;->userAccountLayoutReqList:Ljava/util/List;

    .line 21
    return-void
.end method
