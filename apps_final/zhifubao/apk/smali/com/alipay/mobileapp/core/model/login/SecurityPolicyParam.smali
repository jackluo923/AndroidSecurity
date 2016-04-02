.class public Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;
.super Ljava/lang/Object;


# static fields
.field public static final SECURITY_POLICY_REQ_KEY:Ljava/lang/String; = "securityPolicyParam"


# instance fields
.field private needCheck:Z

.field private securityId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecurityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;->securityId:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;->needCheck:Z

    return v0
.end method

.method public setNeedCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;->needCheck:Z

    return-void
.end method

.method public setSecurityId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;->securityId:Ljava/lang/String;

    return-void
.end method
