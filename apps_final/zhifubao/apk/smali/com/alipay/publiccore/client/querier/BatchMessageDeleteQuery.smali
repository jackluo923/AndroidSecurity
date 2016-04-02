.class public Lcom/alipay/publiccore/client/querier/BatchMessageDeleteQuery;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "BatchMessageDeleteQuery.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public deleteQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/querier/MessageDeleteQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
