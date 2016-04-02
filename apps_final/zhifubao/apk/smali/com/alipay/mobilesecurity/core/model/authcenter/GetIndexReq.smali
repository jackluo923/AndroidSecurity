.class public Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexReq;
.super Lcom/alipay/mobilesecurity/core/model/authcenter/TidApplyReq;


# instance fields
.field public logonId:Ljava/lang/String;

.field public tid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/core/model/authcenter/TidApplyReq;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexReq;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexReq;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public setLogonId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexReq;->logonId:Ljava/lang/String;

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexReq;->tid:Ljava/lang/String;

    return-void
.end method
