.class public Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public logonIdList:Ljava/lang/String;

.field public sePubKey:Ljava/lang/String;

.field public tid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLogonIdList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;->logonIdList:Ljava/lang/String;

    return-object v0
.end method

.method public getSePubKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;->sePubKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;->location:Ljava/lang/String;

    return-void
.end method

.method public setLogonIdList(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;->logonIdList:Ljava/lang/String;

    return-void
.end method

.method public setSePubKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;->sePubKey:Ljava/lang/String;

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;->tid:Ljava/lang/String;

    return-void
.end method
