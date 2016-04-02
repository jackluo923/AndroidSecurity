.class public Lcom/alipay/publiccore/client/result/SearchListResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "SearchListResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public emptyDesc:Ljava/lang/String;

.field public keyword:Ljava/lang/String;

.field public records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/RecordInfo;",
            ">;"
        }
    .end annotation
.end field

.field public showType:Ljava/lang/String;

.field public totalNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method
