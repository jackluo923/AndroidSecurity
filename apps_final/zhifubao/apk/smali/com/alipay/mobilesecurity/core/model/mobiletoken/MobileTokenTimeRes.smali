.class public Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenTimeRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public serverTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getServerTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenTimeRes;->serverTime:Ljava/lang/String;

    return-object v0
.end method

.method public setServerTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenTimeRes;->serverTime:Ljava/lang/String;

    return-void
.end method
