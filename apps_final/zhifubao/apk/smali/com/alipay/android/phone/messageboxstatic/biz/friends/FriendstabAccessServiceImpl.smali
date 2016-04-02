.class public Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;
.super Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;
.source "FriendstabAccessServiceImpl.java"


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String; = "\u6d88\u606f\u4e2d\u5fc3"

.field public static final ITEM_ID:Ljava/lang/String; = "messageboxapp-20000235"

.field public static final ITEM_TYPE:Ljava/lang/String; = "messageboxapp"

.field public static final URI:Ljava/lang/String; = "alipays://platformapi/startapp?appId=20000235"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private c:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;-><init>()V

    .line 35
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->c:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    const-string/jumbo v1, "itemType"

    const-string/jumbo v2, "messageboxapp"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v1, "itemId"

    const-string/jumbo v2, "messageboxapp-20000235"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "displayName"

    const-string/jumbo v2, "\u6d88\u606f\u4e2d\u5fc3"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v1, "uri"

    const-string/jumbo v2, "alipays://platformapi/startapp?appId=20000235"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p3}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string/jumbo v1, "bizMemo"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    const-string/jumbo v1, "redPointStyle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v1, "createTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 126
    const-string/jumbo v1, "unread"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->b:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->updateRecentListExternal(Ljava/util/List;)V

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u521d\u59cb\u5316\u670b\u53cbtab\u6570\u636e\u4e3a\uff1a item = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public removeRecentListExternal()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    const-string/jumbo v1, "itemType"

    const-string/jumbo v2, "messageboxapp"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v1, "itemId"

    const-string/jumbo v2, "messageboxapp-20000235"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->b:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->removeRecentListExternal(Ljava/util/List;)V

    .line 143
    return-void
.end method

.method public updateFriendsExternal()V
    .locals 6

    .prologue
    .line 48
    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/d;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->c:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    const-string/jumbo v2, "TODO"

    .line 57
    const-string/jumbo v3, "INIT"

    .line 56
    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->queryMsgByTypeAndStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u67e5\u8be2\u672a\u8bfbtodo\u7ed3\u679c\uff1a unreadMsginfoList = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->b:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->b:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    if-nez v0, :cond_2

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "socialSdkContactService\u670d\u52a1\u67e5\u627e\u5931\u8d25\uff0csocialSdkContactService == null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :cond_1
    const-class v3, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    goto :goto_1

    .line 70
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 72
    const-string/jumbo v1, "num"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->title:Ljava/lang/String;

    .line 72
    invoke-direct {p0, v1, v3, v0}, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->c:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    const-string/jumbo v2, "NOTICE"

    .line 80
    const-string/jumbo v3, "INIT"

    .line 79
    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->queryMsgByTypeAndStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u67e5\u8be2\u672a\u8bfbnotice\u7ed3\u679c\uff1a unreadMsginfoList = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 89
    const-string/jumbo v1, "point"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->title:Ljava/lang/String;

    .line 89
    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :catch_1
    move-exception v0

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 94
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->c:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    invoke-interface {v2, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->queryMsginfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 102
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u67e5\u8be2\u672a\u8bfbnotice\u7ed3\u679c\uff1a unreadMsginfoList = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 106
    const-string/jumbo v2, "point"

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->title:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :catch_2
    move-exception v0

    .line 99
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;->removeRecentListExternal()V

    goto/16 :goto_0
.end method
