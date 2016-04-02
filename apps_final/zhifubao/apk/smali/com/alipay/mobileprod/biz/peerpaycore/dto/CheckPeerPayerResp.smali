.class public Lcom/alipay/mobileprod/biz/peerpaycore/dto/CheckPeerPayerResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public applyerID:Ljava/lang/String;

.field public applyerIsAllow:Ljava/lang/String;

.field public applyerReason:Ljava/lang/String;

.field public peerPayIsAllow:Ljava/lang/String;

.field public peerPayReason:Ljava/lang/String;

.field public peerpayID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method
