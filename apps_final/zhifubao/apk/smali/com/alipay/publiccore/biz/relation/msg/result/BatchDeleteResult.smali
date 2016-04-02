.class public Lcom/alipay/publiccore/biz/relation/msg/result/BatchDeleteResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "BatchDeleteResult.java"


# instance fields
.field public batchResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method
