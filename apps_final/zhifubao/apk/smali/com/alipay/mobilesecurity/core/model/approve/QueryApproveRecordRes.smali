.class public Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public maxId:Ljava/lang/String;

.field public recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/approve/ApproveRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method
