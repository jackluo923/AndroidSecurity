.class public final Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;",
        ">;"
    }
.end annotation


# instance fields
.field public extVersion:Ljava/lang/Long;

.field public version:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->version:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;->version:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->extVersion:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;->extVersion:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;->checkRequiredFields()V

    new-instance v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;-><init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;->build()Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;

    move-result-object v0

    return-object v0
.end method

.method public final extVersion(Ljava/lang/Long;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;->extVersion:Ljava/lang/Long;

    return-object p0
.end method

.method public final version(Ljava/lang/Long;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;->version:Ljava/lang/Long;

    return-object p0
.end method
