.class public final Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;",
        ">;"
    }
.end annotation


# instance fields
.field public appUpgradeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppVersion;",
            ">;"
        }
    .end annotation
.end field

.field public platform:Ljava/lang/String;

.field public pre:Ljava/lang/Boolean;

.field public stageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->platform:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->platform:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->pre:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->pre:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->width:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->width:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->stageList:Ljava/util/List;

    # invokes: Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->stageList:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->appUpgradeList:Ljava/util/List;

    # invokes: Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->appUpgradeList:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final appUpgradeList(Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppVersion;",
            ">;)",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->appUpgradeList:Ljava/util/List;

    return-object p0
.end method

.method public final build()Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;
    .locals 2

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;-><init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->build()Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;

    move-result-object v0

    return-object v0
.end method

.method public final platform(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public final pre(Ljava/lang/Boolean;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->pre:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final stageList(Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->stageList:Ljava/util/List;

    return-object p0
.end method

.method public final width(Ljava/lang/Integer;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->width:Ljava/lang/Integer;

    return-object p0
.end method
