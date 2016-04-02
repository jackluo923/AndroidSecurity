.class public Lcom/alipay/publiccore/biz/relation/msg/result/ListMessageResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "ListMessageResult.java"


# instance fields
.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public publicId:Ljava/lang/String;

.field public total:Ljava/lang/Integer;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method
