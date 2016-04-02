.class public Lcom/alipay/publiccore/biz/relation/msg/query/BatchMessageDeleteQuery;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "BatchMessageDeleteQuery.java"


# instance fields
.field public deleteQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/query/MessageDeleteQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
