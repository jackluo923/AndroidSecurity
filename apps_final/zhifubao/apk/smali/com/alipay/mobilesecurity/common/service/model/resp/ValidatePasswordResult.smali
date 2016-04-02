.class public Lcom/alipay/mobilesecurity/common/service/model/resp/ValidatePasswordResult;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public failCount:I

.field public lastFailTime:Ljava/util/Date;

.field public locked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getFailCount()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilesecurity/common/service/model/resp/ValidatePasswordResult;->failCount:I

    return v0
.end method

.method public getLastFailTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/resp/ValidatePasswordResult;->lastFailTime:Ljava/util/Date;

    return-object v0
.end method

.method public isLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/common/service/model/resp/ValidatePasswordResult;->locked:Z

    return v0
.end method

.method public setFailCount(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilesecurity/common/service/model/resp/ValidatePasswordResult;->failCount:I

    return-void
.end method

.method public setLastFailTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/common/service/model/resp/ValidatePasswordResult;->lastFailTime:Ljava/util/Date;

    return-void
.end method

.method public setLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/common/service/model/resp/ValidatePasswordResult;->locked:Z

    return-void
.end method
