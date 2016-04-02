.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/bind/TaobaoBindingFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryTaobaoBindingByMobile(Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryReq;)Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoBindingQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.taobao.binding.query"
    .end annotation
.end method

.method public abstract taobaoQuickBinding(Lcom/alipay/mobilesecurity/core/model/taobao/bind/TaobaoQuickBindingReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.taobao.binding.quickBinding"
    .end annotation
.end method
