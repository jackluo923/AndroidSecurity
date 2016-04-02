.class public Lcom/alipay/publiccore/client/req/OfficialHomeReq;
.super Lcom/alipay/publiccore/common/service/facade/model/request/PagingReq;
.source "OfficialHomeReq.java"


# instance fields
.field public channelPackage:Ljava/lang/String;

.field public clientVersion:Ljava/lang/String;

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

.field public terminal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/request/PagingReq;-><init>()V

    return-void
.end method
