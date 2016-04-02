.class public Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;
.super Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;


# instance fields
.field public index:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->index:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->index:Ljava/lang/String;

    return-void
.end method
