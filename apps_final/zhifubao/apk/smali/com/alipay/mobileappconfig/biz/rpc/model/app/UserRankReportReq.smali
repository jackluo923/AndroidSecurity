.class public Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;
.super Lcom/alipay/mobileappconfig/biz/rpc/model/ReqBase;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public userStageRankList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileappconfig/biz/rpc/model/ReqBase;-><init>()V

    return-void
.end method
