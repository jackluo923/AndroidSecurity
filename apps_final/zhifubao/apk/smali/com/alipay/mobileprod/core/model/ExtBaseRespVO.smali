.class public Lcom/alipay/mobileprod/core/model/ExtBaseRespVO;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public tipMsg:Ljava/lang/String;

.field public tipType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobileprod/core/model/ExtBaseRespVO;->tipType:Ljava/lang/String;

    return-void
.end method
