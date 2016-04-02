.class public Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public content:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;->success:Z

    const-string/jumbo v0, "success"

    iput-object v0, p0, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;->resultCode:Ljava/lang/String;

    return-void
.end method
