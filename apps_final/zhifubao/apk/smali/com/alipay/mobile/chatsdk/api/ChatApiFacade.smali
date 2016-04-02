.class public interface abstract Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
.super Ljava/lang/Object;
.source "ChatApiFacade.java"


# static fields
.field public static final MBOX_FEEDS:Ljava/lang/String; = "feeds"

.field public static final MBOX_PPCHAT:Ljava/lang/String; = "ppchat"

.field public static final MSGTYPE_RECALL:Ljava/lang/String; = "recall"

.field public static final MSGTYPE_SINA_NEWS:Ljava/lang/String; = "sina_news"


# virtual methods
.method public abstract addExtMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)I
.end method

.method public abstract addLegacyMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)I
.end method

.method public abstract changeExtMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract checkFollowInfoExistAndLoad(Ljava/lang/String;)V
.end method

.method public abstract clearMsgByTargetId(Ljava/lang/String;)V
.end method

.method public abstract deleteFollowAcccountShowInfo(Ljava/lang/String;)V
.end method

.method public abstract deleteMsg(I)V
.end method

.method public abstract deleteMsgByBMsgId(Ljava/lang/String;)V
.end method

.method public abstract deleteMsgByTargetId(Ljava/lang/String;)V
.end method

.method public abstract deleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteMsgByTargetIdWithMBox(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract disturbSwitch(ZLjava/lang/String;)V
.end method

.method public abstract feedsMsgCount(Ljava/lang/String;)J
.end method

.method public abstract getLastFeedsSummary()Lcom/alipay/mobile/chatsdk/api/TargetSummary;
.end method

.method public abstract getLastSummaryForAllTarget()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/TargetSummary;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastSummeryForTarget(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract markChatListEntryReaded()V
.end method

.method public abstract markFeedsMessageReaded()V
.end method

.method public abstract markLastMessageUnread(Ljava/lang/String;)I
.end method

.method public abstract markMsgReaded(I)V
.end method

.method public abstract markMsgReadedByTargetId(Ljava/lang/String;)V
.end method

.method public abstract markMsgUnReadedByTargetId(Ljava/lang/String;)V
.end method

.method public abstract queryLocalMsg(Ljava/lang/String;IIIZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryLocalMsg(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryLocalMsgByLastId(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryLocalMsgByLocalId(I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
.end method

.method public abstract queryLocalMsgOffset(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reSendMessage(I)I
.end method

.method public abstract resetEntryMergeItem()V
.end method

.method public abstract retryLoadFail()V
.end method

.method public abstract sendExtMessage(I)I
.end method

.method public abstract sendMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)I
.end method

.method public abstract setOnChatList(Z)V
.end method

.method public abstract top(Ljava/lang/String;)V
.end method

.method public abstract unTop(Ljava/lang/String;)V
.end method

.method public abstract updateLastOperateTime(Ljava/lang/String;J)V
.end method
