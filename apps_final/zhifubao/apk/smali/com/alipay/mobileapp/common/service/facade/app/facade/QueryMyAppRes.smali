.class public Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;"
        }
    .end annotation
.end field

.field public memo:Ljava/lang/String;

.field public resultStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->appList:Ljava/util/List;

    return-void
.end method
