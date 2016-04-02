.class public Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;
.super Ljava/lang/Object;


# static fields
.field public static final SECURITY_POLICY_RES_KEY:Ljava/lang/String; = "securityPolicyRes"


# instance fields
.field private needH5:Z

.field private securityH5Url:Ljava/lang/String;

.field private securityId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecurityH5Url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;->securityH5Url:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;->securityId:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedH5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;->needH5:Z

    return v0
.end method

.method public setNeedH5(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;->needH5:Z

    return-void
.end method

.method public setSecurityH5Url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;->securityH5Url:Ljava/lang/String;

    return-void
.end method

.method public setSecurityId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;->securityId:Ljava/lang/String;

    return-void
.end method
