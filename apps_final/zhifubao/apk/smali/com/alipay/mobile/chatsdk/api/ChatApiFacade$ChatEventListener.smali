.class public interface abstract Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
.super Ljava/lang/Object;
.source "ChatApiFacade.java"


# virtual methods
.method public abstract onAddorUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V
.end method

.method public abstract onClearMsg(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDelete(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDeleteShowItem(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFeedsReaded(Ljava/lang/String;)V
.end method

.method public abstract onReceiveMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
.end method

.method public abstract onReload(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateSendStatus(ILjava/lang/String;)V
.end method
