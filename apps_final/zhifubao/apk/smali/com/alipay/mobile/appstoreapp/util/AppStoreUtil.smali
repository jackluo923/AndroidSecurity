.class public Lcom/alipay/mobile/appstoreapp/util/AppStoreUtil;
.super Ljava/lang/Object;
.source "AppStoreUtil.java"


# direct methods
.method public static final a(J)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v5, 0x400

    .line 14
    cmp-long v0, p0, v5

    if-ltz v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p0, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-long v1, p0, v5

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 27
    if-nez p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    const-string/jumbo v2, "H5Container"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    const-string/jumbo v1, "H5App"

    iput-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 52
    const/4 v0, 0x1

    goto :goto_0
.end method
