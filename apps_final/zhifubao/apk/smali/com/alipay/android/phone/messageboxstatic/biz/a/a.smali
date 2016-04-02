.class public Lcom/alipay/android/phone/messageboxstatic/biz/a/a;
.super Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;
.source "MsgboxInfoServiceImpl.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

.field private c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;-><init>()V

    .line 25
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    .line 26
    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/d;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 22
    return-void
.end method


# virtual methods
.method public deleteMsgByIdList(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->deleteByMsgId(Ljava/util/List;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteMsgByType(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->deleteMsgByType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public queryInitMsgByType(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    const-string/jumbo v1, "INIT"

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 62
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->queryMsgByTypeAndStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public queryMsgByType(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->queryMsgByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public queryReadMsgByType(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    const-string/jumbo v1, "READ"

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 48
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->queryMsgByTypeAndStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public readMsgById(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->readByMsgId(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 90
    :goto_0
    return v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readMsgByType(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->b:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;->readMsgByType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
