.class public Lcom/alipay/mobiletms/common/service/facade/model/MobiletmsResult;
.super Lcom/alipay/mobiletms/common/service/facade/model/ToString;
.source "MobiletmsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public message:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobiletms/common/service/facade/model/ToString;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobiletms/common/service/facade/model/MobiletmsResult;->success:Z

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/model/MobiletmsResult;->resultCode:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/model/MobiletmsResult;->message:Ljava/lang/String;

    .line 10
    return-void
.end method
