.class public interface abstract Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;
.super Ljava/lang/Object;
.source "PPChatDao.java"


# virtual methods
.method public abstract clearAllData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteThirdAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getPreLoadFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;
.end method

.method public abstract insertPubSvcAccount(Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;Ljava/lang/String;)V
.end method

.method public abstract queryAllPublicIds(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryLastOperate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryPubSvcAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;
.end method

.method public abstract queryPubSvcSetBean(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;
.end method

.method public abstract savtAccountInfo(Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;
.end method

.method public abstract updateH5PreloadTime(Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method public abstract updateLastOperate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract updatePubSvcSetBean(Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updatePubSvcSetPushSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updatePubSvcUpGisSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
