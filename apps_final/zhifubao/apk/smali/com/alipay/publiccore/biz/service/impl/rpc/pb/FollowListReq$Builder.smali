.class public final Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FollowListReq.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;",
        ">;"
    }
.end annotation


# instance fields
.field public channelPackage:Ljava/lang/String;

.field public clientVersion:Ljava/lang/String;

.field public pageNum:Ljava/lang/Integer;

.field public pageSize:Ljava/lang/Integer;

.field public publicIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public syncBizType:Ljava/lang/String;

.field public terminal:Ljava/lang/String;

.field public totalSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 114
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->terminal:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->clientVersion:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->channelPackage:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->syncBizType:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    # invokes: Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->publicIds:Ljava/util/List;

    .line 120
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->pageNum:Ljava/lang/Integer;

    .line 121
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->pageSize:Ljava/lang/Integer;

    .line 122
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->totalSize:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;-><init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->build()Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;

    move-result-object v0

    return-object v0
.end method

.method public final channelPackage(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->channelPackage:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public final clientVersion(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->clientVersion:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public final pageNum(Ljava/lang/Integer;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->pageNum:Ljava/lang/Integer;

    .line 152
    return-object p0
.end method

.method public final pageSize(Ljava/lang/Integer;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->pageSize:Ljava/lang/Integer;

    .line 157
    return-object p0
.end method

.method public final publicIds(Ljava/util/List;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->publicIds:Ljava/util/List;

    .line 147
    return-object p0
.end method

.method public final syncBizType(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->syncBizType:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public final terminal(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->terminal:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public final totalSize(Ljava/lang/Integer;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->totalSize:Ljava/lang/Integer;

    .line 162
    return-object p0
.end method
