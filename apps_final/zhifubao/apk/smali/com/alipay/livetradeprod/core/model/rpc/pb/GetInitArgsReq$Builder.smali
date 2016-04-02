.class public final Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;",
        ">;"
    }
.end annotation


# instance fields
.field public isQueryFacePaySwitch:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;->isQueryFacePaySwitch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;->isQueryFacePaySwitch:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;
    .locals 2

    new-instance v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;-><init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;->build()Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;

    move-result-object v0

    return-object v0
.end method

.method public final isQueryFacePaySwitch(Ljava/lang/Boolean;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;->isQueryFacePaySwitch:Ljava/lang/Boolean;

    return-object p0
.end method
