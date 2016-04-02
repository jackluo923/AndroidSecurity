.class public Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appId:Ljava/lang/String;

.field public approveId:Ljava/lang/String;

.field public approveType:Ljava/lang/String;

.field public mobileOperationEnvironment:Ljava/util/Map;
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

.field public openId:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public scope:Ljava/lang/String;

.field public selectedAuthIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public targetId:Ljava/lang/String;

.field public targetType:Ljava/lang/String;

.field public targetTypeExt:Ljava/lang/String;

.field public tid:Lcom/alipay/mobilesecurity/core/model/Tid;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method
