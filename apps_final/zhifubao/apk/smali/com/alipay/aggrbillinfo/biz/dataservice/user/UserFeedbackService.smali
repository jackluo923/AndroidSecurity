.class public interface abstract Lcom/alipay/aggrbillinfo/biz/dataservice/user/UserFeedbackService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract findSuggestTypes()Ljava/util/List;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.user.findSuggestTypes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract submitSuggest(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/FeedbackResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.user.submitSuggest"
    .end annotation
.end method
