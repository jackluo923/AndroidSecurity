.class public Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;
.super Lcom/alipay/mobileappconfig/common/service/facade/base/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public dataVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public resultCode:I

.field public resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileappconfig/common/service/facade/base/ToString;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->dataVersionMap:Ljava/util/Map;

    return-void
.end method
