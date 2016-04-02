.class public final Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;",
        ">;"
    }
.end annotation


# instance fields
.field public appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;",
            ">;"
        }
    .end annotation
.end field

.field public configMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
            ">;"
        }
    .end annotation
.end field

.field public dataVersion:Ljava/lang/String;

.field public parentStageCode:Ljava/lang/String;

.field public stageCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->stageCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->stageCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->parentStageCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->parentStageCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->dataVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->dataVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->appList:Ljava/util/List;

    # invokes: Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->appList:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->configMap:Ljava/util/List;

    # invokes: Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->configMap:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final appList(Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;",
            ">;)",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->appList:Ljava/util/List;

    return-object p0
.end method

.method public final build()Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;
    .locals 2

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;-><init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->build()Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;

    move-result-object v0

    return-object v0
.end method

.method public final configMap(Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
            ">;)",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->configMap:Ljava/util/List;

    return-object p0
.end method

.method public final dataVersion(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->dataVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final parentStageCode(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->parentStageCode:Ljava/lang/String;

    return-object p0
.end method

.method public final stageCode(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->stageCode:Ljava/lang/String;

    return-object p0
.end method
