.class public Lcom/alipay/mobileprod/biz/transfer/model/ReceiveTimeOpt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public enable:I

.field public highLightMemo:I

.field public memo:Ljava/lang/String;

.field public transferSpeed:Ljava/lang/String;

.field public transferSpeedDes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobileprod/biz/transfer/model/ReceiveTimeOpt;->enable:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobileprod/biz/transfer/model/ReceiveTimeOpt;->highLightMemo:I

    return-void
.end method
