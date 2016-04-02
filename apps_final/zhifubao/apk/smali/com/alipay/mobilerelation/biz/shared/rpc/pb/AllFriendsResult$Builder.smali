.class public final Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;",
        ">;"
    }
.end annotation


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

.field public extVersion:Ljava/lang/Long;

.field public open:Ljava/lang/Boolean;

.field public resultCode:Ljava/lang/Integer;

.field public resultDesc:Ljava/lang/String;

.field public resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;",
            ">;"
        }
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;

.field public syncMaxOpId:Ljava/lang/String;

.field public version:Ljava/lang/Long;

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
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->success:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultCode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->resultCode:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->resultDesc:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->resultList:Ljava/util/List;

    # invokes: Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->resultList:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->deletedIds:Ljava/util/List;

    # invokes: Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->deletedIds:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->version:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->version:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->extVersion:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->extVersion:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->open:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->open:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->welcomeList:Ljava/util/List;

    # invokes: Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->welcomeList:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;->syncMaxOpId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->syncMaxOpId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;
    .locals 2

    new-instance v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;-><init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->build()Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;

    move-result-object v0

    return-object v0
.end method

.method public final deletedIds(Ljava/util/List;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->deletedIds:Ljava/util/List;

    return-object p0
.end method

.method public final extVersion(Ljava/lang/Long;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->extVersion:Ljava/lang/Long;

    return-object p0
.end method

.method public final open(Ljava/lang/Boolean;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->open:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final resultCode(Ljava/lang/Integer;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->resultCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final resultDesc(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->resultDesc:Ljava/lang/String;

    return-object p0
.end method

.method public final resultList(Ljava/util/List;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;",
            ">;)",
            "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->resultList:Ljava/util/List;

    return-object p0
.end method

.method public final success(Ljava/lang/Boolean;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->success:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final syncMaxOpId(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->syncMaxOpId:Ljava/lang/String;

    return-object p0
.end method

.method public final version(Ljava/lang/Long;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->version:Ljava/lang/Long;

    return-object p0
.end method

.method public final welcomeList(Ljava/util/List;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult$Builder;->welcomeList:Ljava/util/List;

    return-object p0
.end method
