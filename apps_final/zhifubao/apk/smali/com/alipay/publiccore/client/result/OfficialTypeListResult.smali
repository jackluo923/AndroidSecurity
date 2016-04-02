.class public Lcom/alipay/publiccore/client/result/OfficialTypeListResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "OfficialTypeListResult.java"


# instance fields
.field public officialTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/OfficialTypeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialTypeListResult;->officialTypes:Ljava/util/List;

    .line 13
    return-void
.end method
