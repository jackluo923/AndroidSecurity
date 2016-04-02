.class public Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public bindMobile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->bindMobile:Ljava/lang/String;

    return-object v0
.end method

.method public setBindMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->bindMobile:Ljava/lang/String;

    return-void
.end method
