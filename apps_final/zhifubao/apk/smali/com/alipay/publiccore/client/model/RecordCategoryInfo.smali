.class public Lcom/alipay/publiccore/client/model/RecordCategoryInfo;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "RecordCategoryInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public categoryCode:Ljava/lang/String;

.field public categoryName:Ljava/lang/String;

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
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
