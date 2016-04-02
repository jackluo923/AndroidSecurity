.class public Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoQuickBindingReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public mobile:Ljava/lang/String;

.field public nick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoQuickBindingReq;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoQuickBindingReq;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoQuickBindingReq;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoQuickBindingReq;->nick:Ljava/lang/String;

    return-void
.end method
