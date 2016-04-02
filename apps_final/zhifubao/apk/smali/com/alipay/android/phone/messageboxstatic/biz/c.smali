.class public Lcom/alipay/android/phone/messageboxstatic/biz/c;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

.field private c:Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/biz/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    .line 31
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->c:Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    .line 32
    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/d;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 26
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    const-string/jumbo v0, "DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->deleteMsgByType(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string/jumbo v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->readMsgByType(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    const-string/jumbo v0, "DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->deleteByMsgId(Ljava/util/List;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string/jumbo v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->readByMsgIdList(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/c;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    const-string/jumbo v0, "READ"

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/c;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 102
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 103
    const-string/jumbo v0, "DELETE"

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/phone/messageboxstatic/biz/c;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->c:Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;->updateFriendsExternal()V

    .line 108
    return-void

    .line 44
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;

    .line 46
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getOperate()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SEND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 47
    new-instance v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    invoke-direct {v4}, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/d;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getMsgId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getMsgType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgType:Ljava/lang/String;

    const-string/jumbo v5, "INIT"

    iput-object v5, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgState:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getTemplateType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->templateType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getContent()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->content:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getIcon()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->iconLink:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getLink()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->action:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getLinkName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->actionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getGmtCreate()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->gmtCreate:J

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getGmtValid()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->gmtValid:J

    :try_start_0
    iget-object v5, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getMsgId()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->deleteReadMsgById(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    const-string/jumbo v0, "READ"

    iput-object v0, v4, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgState:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/c;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    invoke-interface {v0, v4}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->insertMessageInfo(Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/phone/messageboxstatic/biz/c;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 48
    :cond_5
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getOperate()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "READ"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 50
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getOperateMsgIdList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getOperateMsgIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 51
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getOperateMsgIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 52
    :cond_6
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getMsgType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 53
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getMsgType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TODO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 55
    const-string/jumbo v0, "READ"

    const-string/jumbo v4, "TODO"

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/phone/messageboxstatic/biz/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_7
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getMsgType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getMsgType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "NOTICE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v0, "READ"

    const-string/jumbo v4, "NOTICE"

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/phone/messageboxstatic/biz/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_8
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getOperate()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DELETE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getOperateMsgIdList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getOperateMsgIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 64
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getOperateMsgIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 65
    :cond_9
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getMsgType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 66
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getMsgType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TODO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 68
    const-string/jumbo v0, "DELETE"

    const-string/jumbo v4, "TODO"

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/phone/messageboxstatic/biz/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :cond_a
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getMsgType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->getMsgType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "NOTICE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "DELETE"

    .line 73
    const-string/jumbo v4, "NOTICE"

    .line 72
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/phone/messageboxstatic/biz/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
