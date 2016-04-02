.class public Lcom/alipay/mobileapp/biz/rpc/appengine/facade/AndroidEngineRes;
.super Ljava/lang/Object;


# instance fields
.field public downloadUrl:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public newEngineVersion:Ljava/lang/String;

.field public resultStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/appengine/facade/AndroidEngineRes;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/appengine/facade/AndroidEngineRes;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getNewEngineVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/appengine/facade/AndroidEngineRes;->newEngineVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileapp/biz/rpc/appengine/facade/AndroidEngineRes;->resultStatus:I

    return v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/appengine/facade/AndroidEngineRes;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/appengine/facade/AndroidEngineRes;->memo:Ljava/lang/String;

    return-void
.end method

.method public setNewEngineVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/appengine/facade/AndroidEngineRes;->newEngineVersion:Ljava/lang/String;

    return-void
.end method

.method public setResultStatus(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileapp/biz/rpc/appengine/facade/AndroidEngineRes;->resultStatus:I

    return-void
.end method
