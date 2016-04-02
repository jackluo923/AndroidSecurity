.class public Lcom/alipay/mobile/publicplatform/relation/RelationUtils;
.super Ljava/lang/Object;
.source "RelationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMsgTime(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 35
    if-nez p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-wide v0

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgDirection:Ljava/lang/String;

    const-string/jumbo v3, "s"

    if-ne v2, v3, :cond_2

    .line 41
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 45
    :cond_2
    iget-wide v2, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    .line 46
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 44
    :cond_3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static mergeFollowAccountShowInfo(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;Lcom/alipay/mobile/chatsdk/api/TargetSummary;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
    .locals 2

    .prologue
    .line 59
    if-nez p0, :cond_1

    .line 60
    const/4 p0, 0x0

    .line 67
    :cond_0
    :goto_0
    return-object p0

    .line 62
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 64
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v0}, Lcom/alipay/mobile/publicplatform/relation/RelationUtils;->calculateMsgTime(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    goto :goto_0
.end method

.method public static mergeFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    iget-object v1, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v1, "default"

    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getTopType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J

    .line 30
    :cond_0
    return-object v0
.end method
