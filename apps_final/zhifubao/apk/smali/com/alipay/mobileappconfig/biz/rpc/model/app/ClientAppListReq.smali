.class public Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListReq;
.super Lcom/alipay/mobileappconfig/biz/rpc/model/ReqBase;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appUpgradeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppVersion;",
            ">;"
        }
    .end annotation
.end field

.field public pre:Z

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

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileappconfig/biz/rpc/model/ReqBase;-><init>()V

    return-void
.end method
