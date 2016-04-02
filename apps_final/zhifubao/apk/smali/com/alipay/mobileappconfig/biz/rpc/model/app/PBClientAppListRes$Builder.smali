.class public final Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;",
        ">;"
    }
.end annotation


# instance fields
.field public resultCode:Ljava/lang/Integer;

.field public resultMsg:Ljava/lang/String;

.field public stageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;",
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

.method public constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultCode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;->resultCode:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;->resultMsg:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->stageList:Ljava/util/List;

    # invokes: Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;->stageList:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;
    .locals 2

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;-><init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;->build()Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;

    move-result-object v0

    return-object v0
.end method

.method public final resultCode(Ljava/lang/Integer;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;->resultCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final resultMsg(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;->resultMsg:Ljava/lang/String;

    return-object p0
.end method

.method public final stageList(Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;",
            ">;)",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;->stageList:Ljava/util/List;

    return-object p0
.end method
