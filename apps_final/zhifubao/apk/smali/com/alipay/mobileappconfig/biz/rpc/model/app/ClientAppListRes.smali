.class public Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;
.super Lcom/alipay/mobileappconfig/common/service/facade/base/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public resultCode:I

.field public resultMsg:Ljava/lang/String;

.field public stageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileappconfig/common/service/facade/base/ToString;-><init>()V

    return-void
.end method
