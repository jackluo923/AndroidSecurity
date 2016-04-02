.class public Lcom/alipay/livetradeprod/core/model/base/OnsiteBaseRes;
.super Lcom/alipay/livetradeprod/core/model/ToString;


# instance fields
.field public queryOrNo:Z

.field public resultCode:Ljava/lang/String;

.field public resultDes:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/livetradeprod/core/model/ToString;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/livetradeprod/core/model/base/OnsiteBaseRes;->success:Z

    return-void
.end method
