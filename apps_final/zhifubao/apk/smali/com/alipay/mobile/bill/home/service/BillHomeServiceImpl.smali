.class public Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;
.super Lcom/alipay/mobile/bill/home/service/BillHomeService;
.source "BillHomeServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/bill/home/service/BillHomeService;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v1, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;-><init>()V

    .line 99
    const-string/jumbo v2, "50000001,#AppCenter#20000076"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setBadgePath(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setPersistentBadgeNumber(I)V

    .line 101
    sget-object v2, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setStyle(Ljava/lang/String;)V

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 103
    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->insertLocalBadgeInfo(Ljava/util/List;)V

    .line 106
    return-void

    .line 87
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    iget-object v4, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 131
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 132
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public checkTradeNO(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-direct {p0}, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->a()V

    .line 76
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    invoke-direct {p0}, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->a()V

    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 112
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 114
    const-class v1, Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;

    .line 113
    iput-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->a:Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->c:Ljava/util/List;

    .line 117
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->a:Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    iput-object v1, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    iput-object v1, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->c:Ljava/util/List;

    .line 126
    return-void
.end method

.method public requestHomeTip()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->d:Ljava/lang/String;

    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->d:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v0, "BillListServiceImpl"

    const-string/jumbo v1, "userId repeat"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v1, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;-><init>()V

    .line 39
    const-string/jumbo v2, "50000001,#AppCenter#20000076"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setBadgePath(Ljava/lang/String;)V

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setPersistentBadgeNumber(I)V

    .line 41
    sget-object v2, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;->setStyle(Ljava/lang/String;)V

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 45
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->insertLocalBadgeInfo(Ljava/util/List;)V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    new-instance v0, Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoReq;

    invoke-direct {v0}, Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoReq;-><init>()V

    :try_start_0
    const-string/jumbo v1, "BillListServiceImpl"

    const-string/jumbo v2, "query bill remind info"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->a:Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;

    invoke-interface {v1, v0}, Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillRemindInfoRPCService;->getWaitPayRecordNum(Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoReq;)Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoResp;

    move-result-object v0

    iget-object v1, v0, Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoResp;->bizInNoList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoResp;->bizInNoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b:Ljava/util/List;

    iget-object v0, v0, Lcom/alipay/mobilebill/biz/bill/model/billremind/BillRemindInfoResp;->bizInNoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->a()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/bill/home/service/BillHomeServiceImpl;->d:Ljava/lang/String;

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    const-string/jumbo v1, "BillListServiceImpl"

    const-string/jumbo v2, "query bill remind info RPC exception"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
