.class public Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;
.super Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public followAction:Ljava/lang/String;

.field public fullPage:Ljava/lang/String;

.field public msgType:Ljava/lang/String;

.field public resultCode:I

.field public resultDesc:Ljava/lang/String;

.field public resultView:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;->success:Z

    return-void
.end method
