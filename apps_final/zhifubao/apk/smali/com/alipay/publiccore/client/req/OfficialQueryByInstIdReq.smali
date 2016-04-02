.class public Lcom/alipay/publiccore/client/req/OfficialQueryByInstIdReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "OfficialQueryByInstIdReq.java"


# instance fields
.field private cardType:Ljava/lang/String;

.field private instId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/publiccore/client/req/OfficialQueryByInstIdReq;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getInstId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/publiccore/client/req/OfficialQueryByInstIdReq;->instId:Ljava/lang/String;

    return-object v0
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/publiccore/client/req/OfficialQueryByInstIdReq;->cardType:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setInstId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/publiccore/client/req/OfficialQueryByInstIdReq;->instId:Ljava/lang/String;

    .line 20
    return-void
.end method
