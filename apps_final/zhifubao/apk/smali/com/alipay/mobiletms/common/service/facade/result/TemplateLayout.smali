.class public Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;
.super Lcom/alipay/mobiletms/common/service/facade/model/ToString;
.source "TemplateLayout.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public footer:Lcom/alipay/mobiletms/common/service/facade/result/Row;

.field public header:Lcom/alipay/mobiletms/common/service/facade/result/Row;

.field public sections:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/mobiletms/common/service/facade/model/ToString;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->sections:Ljava/util/List;

    .line 35
    return-void
.end method
