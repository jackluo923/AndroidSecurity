.class public Lcom/alipay/mobilerelation/biz/shared/req/MultiFriendsReq;
.super Lcom/alipay/mobilerelation/core/model/req/CommonReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public targetUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/biz/shared/req/model/ReqUserModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilerelation/core/model/req/CommonReq;-><init>()V

    return-void
.end method
