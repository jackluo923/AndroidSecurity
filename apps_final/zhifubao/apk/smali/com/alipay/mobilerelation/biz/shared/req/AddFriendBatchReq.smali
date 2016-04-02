.class public Lcom/alipay/mobilerelation/biz/shared/req/AddFriendBatchReq;
.super Lcom/alipay/mobilerelation/core/model/req/CommonReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public message:Ljava/lang/String;

.field public targetUserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
