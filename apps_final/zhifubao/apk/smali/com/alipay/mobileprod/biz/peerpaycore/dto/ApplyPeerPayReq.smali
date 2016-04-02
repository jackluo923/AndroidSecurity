.class public Lcom/alipay/mobileprod/biz/peerpaycore/dto/ApplyPeerPayReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizNo:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public canAddContact:Ljava/lang/String;

.field public emotionID:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public peerPayAccount:Ljava/lang/String;

.field public peerPayUserID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    return-void
.end method
