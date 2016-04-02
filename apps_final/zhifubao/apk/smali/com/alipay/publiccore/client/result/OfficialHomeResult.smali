.class public Lcom/alipay/publiccore/client/result/OfficialHomeResult;
.super Lcom/alipay/publiccore/client/result/PagingResult;
.source "OfficialHomeResult.java"


# instance fields
.field public followAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/FollowAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/publiccore/client/result/PagingResult;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialHomeResult;->followAccounts:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public getFollowAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/FollowAccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialHomeResult;->followAccounts:Ljava/util/List;

    return-object v0
.end method

.method public setFollowAccounts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/FollowAccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialHomeResult;->followAccounts:Ljava/util/List;

    .line 24
    return-void
.end method
