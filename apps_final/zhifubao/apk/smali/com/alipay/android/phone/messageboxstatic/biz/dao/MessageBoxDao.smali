.class public interface abstract Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;
.super Ljava/lang/Object;
.source "MessageBoxDao.java"


# virtual methods
.method public abstract deleteByMsgId(Ljava/util/List;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public abstract deleteMsgByType(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteOverdueMsginfo(JLjava/lang/String;)V
.end method

.method public abstract deleteOverdueReadmsg(JLjava/lang/String;)V
.end method

.method public abstract deleteReadMsgById(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract insertMessageInfo(Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;)V
.end method

.method public abstract insertReadMsg(Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;)I
.end method

.method public abstract queryMsgByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMsgByTypeAndStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMsginfo(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readByMsgId(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract readByMsgIdList(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract readMsgByType(Ljava/lang/String;Ljava/lang/String;)I
.end method
