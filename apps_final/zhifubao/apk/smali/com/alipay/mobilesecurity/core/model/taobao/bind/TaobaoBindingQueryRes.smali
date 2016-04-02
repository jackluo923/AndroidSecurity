.class public Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public bindingStatus:I

.field public bindingStatusMemo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindingStatus()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;->bindingStatus:I

    return v0
.end method

.method public getBindingStatusMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;->bindingStatusMemo:Ljava/lang/String;

    return-object v0
.end method

.method public setBindingStatus(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;->bindingStatus:I

    return-void
.end method

.method public setBindingStatusMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;->bindingStatusMemo:Ljava/lang/String;

    return-void
.end method
