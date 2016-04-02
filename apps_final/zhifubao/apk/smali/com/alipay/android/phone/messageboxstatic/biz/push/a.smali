.class final Lcom/alipay/android/phone/messageboxstatic/biz/push/a;
.super Ljava/lang/Object;
.source "PushMsgBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/a;->a:Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;

    iput-object p2, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/a;->b:Landroid/content/Intent;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/a;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "optionType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/a;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "msgId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/d;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "optionType = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", msgId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string/jumbo v3, "readBoxMsg"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/a;->a:Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->a(Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;)Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->readByMsgId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "count = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-lez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/a;->a:Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->b(Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;)Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;->updateFriendsExternal()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;-><init>()V

    .line 85
    iput-object v2, v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;->userId:Ljava/lang/String;

    .line 86
    iput-object v1, v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;->msgId:Ljava/lang/String;

    .line 87
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;->gmtCreate:J

    .line 88
    iget-wide v1, v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;->gmtCreate:J

    const-wide/32 v3, 0x76a700

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;->gmtValid:J

    .line 89
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/a;->a:Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->a(Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;)Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->insertReadMsg(Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
