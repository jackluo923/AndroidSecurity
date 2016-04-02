.class public interface abstract Lcom/alipay/mobileprod/biz/aapay/facade/AAPayServiceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createBill(Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobileprod/biz/aapay/model/client/BillCreateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.createBill"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/aapay/model/AAPayOrderInfo;",
            ">;)",
            "Lcom/alipay/mobileprod/biz/aapay/model/client/BillCreateResult;"
        }
    .end annotation
.end method

.method public abstract createBillWithName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobileprod/biz/aapay/model/client/BillCreateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.createBillWithName"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/aapay/model/AAPayOrderInfo;",
            ">;)",
            "Lcom/alipay/mobileprod/biz/aapay/model/client/BillCreateResult;"
        }
    .end annotation
.end method

.method public abstract createSession(Ljava/util/List;)Ljava/lang/String;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.createSession"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract deleteSession(Ljava/lang/String;)V
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.deleteSession"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getUserList(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)Lcom/alipay/mobileprod/biz/aapay/model/client/CandidateUserList;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.getUserList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryAAPayBillState(Ljava/lang/String;)Lcom/alipay/mobileprod/biz/aapay/model/client/BillState;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.queryAAPayBillState"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryAAPayResult(Ljava/util/List;)Lcom/alipay/mobileprod/biz/aapay/model/client/OrderResultList;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.queryAAPayResult"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/aapay/model/AAPayOrderInfo;",
            ">;)",
            "Lcom/alipay/mobileprod/biz/aapay/model/client/OrderResultList;"
        }
    .end annotation
.end method

.method public abstract queryAAPayState(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)Lcom/alipay/mobileprod/biz/aapay/model/client/BillState;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.queryAAPayState"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract quitSession()V
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.quitSession"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract rejectPay(Ljava/lang/String;)V
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.rejectPay"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
