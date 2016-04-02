.class public Lcom/alipay/publiccore/client/result/PublicResult;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "PublicResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public resultCode:I

.field public resultMsg:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/publiccore/client/result/PublicResult;->success:Z

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/publiccore/client/result/PublicResult;->resultCode:I

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/publiccore/client/result/PublicResult;->resultMsg:Ljava/lang/String;

    .line 10
    return-void
.end method
