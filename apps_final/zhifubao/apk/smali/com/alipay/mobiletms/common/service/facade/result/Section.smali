.class public Lcom/alipay/mobiletms/common/service/facade/result/Section;
.super Lcom/alipay/mobiletms/common/service/facade/model/ToString;
.source "Section.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public footer:Lcom/alipay/mobiletms/common/service/facade/result/Row;

.field public header:Lcom/alipay/mobiletms/common/service/facade/result/Row;

.field public rows:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobiletms/common/service/facade/model/ToString;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/Section;->rows:Ljava/util/List;

    .line 34
    return-void
.end method
