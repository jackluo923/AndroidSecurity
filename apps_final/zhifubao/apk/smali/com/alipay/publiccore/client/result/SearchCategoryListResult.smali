.class public Lcom/alipay/publiccore/client/result/SearchCategoryListResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "SearchCategoryListResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/RecordCategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method
