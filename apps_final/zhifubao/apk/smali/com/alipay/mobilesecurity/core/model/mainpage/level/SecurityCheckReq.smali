.class public Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;
.super Ljava/lang/Object;


# instance fields
.field public logonId:Ljava/lang/String;

.field public openPush:Z

.field public setGesture:Z

.field public tid:Lcom/alipay/mobilesecurity/core/model/Tid;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Lcom/alipay/mobilesecurity/core/model/Tid;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-object v0
.end method

.method public isOpenPush()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;->openPush:Z

    return v0
.end method

.method public isSetGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;->setGesture:Z

    return v0
.end method

.method public setLogonId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;->logonId:Ljava/lang/String;

    return-void
.end method

.method public setOpenPush(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;->openPush:Z

    return-void
.end method

.method public setSetGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;->setGesture:Z

    return-void
.end method

.method public setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-void
.end method
