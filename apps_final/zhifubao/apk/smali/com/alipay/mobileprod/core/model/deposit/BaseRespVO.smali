.class public Lcom/alipay/mobileprod/core/model/deposit/BaseRespVO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public memo:Ljava/lang/String;

.field public resultStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    iput v0, p0, Lcom/alipay/mobileprod/core/model/deposit/BaseRespVO;->resultStatus:I

    return-void
.end method
