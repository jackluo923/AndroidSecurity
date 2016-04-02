.class public Lcom/alipay/mobilerelation/biz/shared/resp/AllFriendsResult;
.super Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public deletedIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public extVersion:J

.field public open:Z

.field public resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;",
            ">;"
        }
    .end annotation
.end field

.field public syncMaxOpId:Ljava/lang/String;

.field public version:J

.field public welcomeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/resp/AllFriendsResult;->resultList:Ljava/util/List;

    return-void
.end method
