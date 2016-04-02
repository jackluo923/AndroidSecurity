.class public final Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FollowListResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;",
        ">;"
    }
.end annotation


# instance fields
.field public dynamicConfigUid:Ljava/lang/String;

.field public followAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;",
            ">;"
        }
    .end annotation
.end field

.field public pageNum:Ljava/lang/Integer;

.field public pageSize:Ljava/lang/Integer;

.field public resultCode:Ljava/lang/Integer;

.field public resultMsg:Ljava/lang/String;

.field public rowCount:Ljava/lang/Integer;

.field public success:Ljava/lang/Boolean;

.field public syncMaxOpLogId:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 131
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->dynamicConfigUid:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->userId:Ljava/lang/String;

    .line 134
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->syncMaxOpLogId:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    # invokes: Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->followAccountList:Ljava/util/List;

    .line 136
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->pageNum:Ljava/lang/Integer;

    .line 137
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->pageSize:Ljava/lang/Integer;

    .line 138
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->rowCount:Ljava/lang/Integer;

    .line 139
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->success:Ljava/lang/Boolean;

    .line 140
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->resultCode:Ljava/lang/Integer;

    .line 141
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->resultMsg:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;-><init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->build()Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;

    move-result-object v0

    return-object v0
.end method

.method public final dynamicConfigUid(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->dynamicConfigUid:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public final followAccountList(Ljava/util/List;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;",
            ">;)",
            "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->followAccountList:Ljava/util/List;

    .line 161
    return-object p0
.end method

.method public final pageNum(Ljava/lang/Integer;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->pageNum:Ljava/lang/Integer;

    .line 166
    return-object p0
.end method

.method public final pageSize(Ljava/lang/Integer;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->pageSize:Ljava/lang/Integer;

    .line 171
    return-object p0
.end method

.method public final resultCode(Ljava/lang/Integer;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->resultCode:Ljava/lang/Integer;

    .line 186
    return-object p0
.end method

.method public final resultMsg(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->resultMsg:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public final rowCount(Ljava/lang/Integer;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->rowCount:Ljava/lang/Integer;

    .line 176
    return-object p0
.end method

.method public final success(Ljava/lang/Boolean;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->success:Ljava/lang/Boolean;

    .line 181
    return-object p0
.end method

.method public final syncMaxOpLogId(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->syncMaxOpLogId:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public final userId(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->userId:Ljava/lang/String;

    .line 151
    return-object p0
.end method
