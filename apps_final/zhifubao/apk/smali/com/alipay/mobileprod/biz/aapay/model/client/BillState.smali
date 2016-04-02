.class public Lcom/alipay/mobileprod/biz/aapay/model/client/BillState;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public done:Z

.field public oppositeInfo:Lcom/alipay/mobileprod/biz/aapay/model/AAPayUserInfo;

.field public orderNo:Ljava/lang/String;

.field public payAmount:Ljava/lang/String;

.field public payToStranger:Z

.field public serverTime:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public working:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/aapay/model/client/BillState;->working:Z

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/aapay/model/client/BillState;->done:Z

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/aapay/model/client/BillState;->payToStranger:Z

    return-void
.end method
