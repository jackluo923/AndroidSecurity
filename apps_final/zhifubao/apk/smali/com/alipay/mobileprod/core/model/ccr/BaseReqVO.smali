.class public Lcom/alipay/mobileprod/core/model/ccr/BaseReqVO;
.super Ljava/lang/Object;


# instance fields
.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/core/model/ccr/BaseReqVO;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/core/model/ccr/BaseReqVO;->userId:Ljava/lang/String;

    return-void
.end method
