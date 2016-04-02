.class public Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;
.super Lcom/alipay/mobileappconfig/common/service/facade/base/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dataVersion:Ljava/lang/String;

.field public stageCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileappconfig/common/service/facade/base/ToString;-><init>()V

    return-void
.end method
