.class public Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;
.super Lcom/alipay/mobileappconfig/common/service/facade/base/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;",
            ">;"
        }
    .end annotation
.end field

.field public configMap:Ljava/util/Map;
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

.field public dataVersion:Ljava/lang/String;

.field public parentStageCode:Ljava/lang/String;

.field public stageCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileappconfig/common/service/facade/base/ToString;-><init>()V

    return-void
.end method
