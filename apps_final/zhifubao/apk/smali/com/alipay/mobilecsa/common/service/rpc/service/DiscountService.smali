.class public interface abstract Lcom/alipay/mobilecsa/common/service/rpc/service/DiscountService;
.super Ljava/lang/Object;
.source "DiscountService.java"


# virtual methods
.method public abstract applyDiscount(Lcom/alipay/mobilecsa/common/service/rpc/request/DiscountApplyRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/DiscountApplyResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.applyDiscount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract deleteMyDiscount(Lcom/alipay/mobilecsa/common/service/rpc/request/DiscountDeleteRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/DiscountDeleteResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.deleteMyDiscount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryDiscountInfo(Lcom/alipay/mobilecsa/common/service/rpc/request/DiscountInfoQueryRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/DiscountInfoQueryResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.queryDiscountInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryDiscountNotes(Lcom/alipay/mobilecsa/common/service/rpc/request/DiscountNotesQueryRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/DiscountNotesQueryResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.queryDiscountNotes"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryMyDiscountList(Lcom/alipay/mobilecsa/common/service/rpc/request/DiscountQueryRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/MyDiscountResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.queryMyDiscount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
