.class public Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public resultCode:I

.field public resultDesc:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultCode:I

    return-void
.end method
