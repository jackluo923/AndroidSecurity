.class public Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field certified:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field level:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field logonId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field mobileBinded:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field openedDigitalCert:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field openedDynamicPwd:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field openedMobileOtp:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field openedUKey:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field refresh:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field score:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field setSecurityQA:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->id:I

    return v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getLogonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->score:I

    return v0
.end method

.method public isCertified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->certified:Z

    return v0
.end method

.method public isMobileBinded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->mobileBinded:Z

    return v0
.end method

.method public isOpenedDigitalCert()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->openedDigitalCert:Z

    return v0
.end method

.method public isOpenedDynamicPwd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->openedDynamicPwd:Z

    return v0
.end method

.method public isOpenedMobileOtp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->openedMobileOtp:Z

    return v0
.end method

.method public isOpenedUKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->openedUKey:Z

    return v0
.end method

.method public isRefresh()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->refresh:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setRefresh(Ljava/lang/Boolean;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->refresh:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSetSecurityQA()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setSecurityQA:Z

    return v0
.end method

.method public setCertified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->certified:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->id:I

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->level:Ljava/lang/String;

    return-void
.end method

.method public setLogonId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->logonId:Ljava/lang/String;

    return-void
.end method

.method public setMobileBinded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->mobileBinded:Z

    return-void
.end method

.method public setOpenedDigitalCert(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->openedDigitalCert:Z

    return-void
.end method

.method public setOpenedDynamicPwd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->openedDynamicPwd:Z

    return-void
.end method

.method public setOpenedMobileOtp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->openedMobileOtp:Z

    return-void
.end method

.method public setOpenedUKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->openedUKey:Z

    return-void
.end method

.method public setRefresh(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->refresh:Ljava/lang/Boolean;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->score:I

    return-void
.end method

.method public setSetSecurityQA(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;->setSecurityQA:Z

    return-void
.end method
