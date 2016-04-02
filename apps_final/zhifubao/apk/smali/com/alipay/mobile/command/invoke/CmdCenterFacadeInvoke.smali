.class public final Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;


# instance fields
.field private a:Lcom/alipay/mobile/command/api/CmdCenterFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->b:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-class v0, Lcom/alipay/mobile/command/api/CmdCenterFacade;

    sget-object v1, Lcom/alipay/mobile/command/model/SerializeTypeEnum;->JSON:Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    new-instance v2, Lcom/alipay/mobile/command/invoke/a;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/command/invoke/a;-><init>(Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;)V

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/command/rpc/proxy/RpcFactory;->buildRpcProxy(Ljava/lang/Class;Lcom/alipay/mobile/command/model/SerializeTypeEnum;Lcom/alipay/mobile/command/rpc/proxy/Config;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/api/CmdCenterFacade;

    iput-object v0, p0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a:Lcom/alipay/mobile/command/api/CmdCenterFacade;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CmdCenterFacadeInvoke"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "buildRpcProxy fail"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;)Lcom/alipay/mobile/command/api/CmdCenterFacade;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a:Lcom/alipay/mobile/command/api/CmdCenterFacade;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;
    .locals 2

    const-class v1, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->b:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    invoke-direct {v0}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->b:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->b:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/alipay/mobile/command/api/model/ConfigInfoRes;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->updateCfg(Lcom/alipay/mobile/command/api/model/ConfigInfoRes;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->getRbtMaxTimes()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_0
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->getRbtMaxTimes()I

    move-result v0

    if-ne v1, v0, :cond_1

    const-string/jumbo v0, "manager"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "rc\u8d44\u6e90\u540c\u6b65\u8fbe\u5230\u4e0a\u9650\uff0c\u5b58\u5728\u6f5c\u5728\u5f02\u5e38."

    aput-object v3, v1, v2

    invoke-static {v0, v8, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/command/api/model/GetRCCommandReq;

    invoke-direct {v0}, Lcom/alipay/mobile/command/api/model/GetRCCommandReq;-><init>()V

    iput-object p1, v0, Lcom/alipay/mobile/command/api/model/GetRCCommandReq;->commandUUID:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a:Lcom/alipay/mobile/command/api/CmdCenterFacade;

    invoke-interface {v3, v0}, Lcom/alipay/mobile/command/api/CmdCenterFacade;->getRCCommand(Lcom/alipay/mobile/command/api/model/GetRCCommandReq;)Lcom/alipay/mobile/command/api/model/GetRCCommandRes;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alipay/mobile/command/api/model/GetRCCommandRes;->getCmdMetaList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/alipay/mobile/command/api/model/GetRCCommandRes;->getCmdMetaList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/alipay/mobile/command/api/model/GetRCCommandRes;->getCmdMetaList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->COMMAND:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/CommandMetaCollect;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/command/manager/CommandManager;->a(Lcom/alipay/mobile/command/model/CommandMetaCollect;Ljava/util/List;Ljava/util/List;)V

    :cond_3
    invoke-virtual {v3}, Lcom/alipay/mobile/command/api/model/GetRCCommandRes;->getRemainedSyncTimes()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "manager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "\u670d\u52a1\u7aef\u8868\u660e\u9700\u8981\u7ee7\u7eed\u540c\u6b65\uff0c\u4f46\u662f\u672c\u5730\u9700\u8981\u540c\u6b65\u7684id\u5df2\u7ecf\u4e3a\u7a7a."

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "manager"

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "synCCommandError"

    aput-object v5, v4, v2

    invoke-static {v3, v0, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/api/model/CommandMeta;

    new-instance v6, Lcom/alipay/mobile/command/model/CommandMetaWrap;

    invoke-direct {v6, v0}, Lcom/alipay/mobile/command/model/CommandMetaWrap;-><init>(Lcom/alipay/mobile/command/api/model/CommandMeta;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/CommandMeta;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/MapConstructor;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/model/TaskMetaWrap;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v9, 0x1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->TASK:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaCollect;

    new-instance v1, Lcom/alipay/mobile/command/api/model/GetRCTaskReq;

    invoke-direct {v1}, Lcom/alipay/mobile/command/api/model/GetRCTaskReq;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/command/api/model/GetRCTaskReq;->setClientInfo(Ljava/util/List;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/command/api/model/GetRCTaskReq;->setTaskUUID(Ljava/util/List;)V

    iget-object v4, p0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a:Lcom/alipay/mobile/command/api/CmdCenterFacade;

    invoke-interface {v4, v1}, Lcom/alipay/mobile/command/api/CmdCenterFacade;->getRCTask(Lcom/alipay/mobile/command/api/model/GetRCTaskReq;)Lcom/alipay/mobile/command/api/model/GetRCTaskRes;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/alipay/mobile/command/api/model/GetRCTaskRes;->getTaskMetaList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lcom/alipay/mobile/command/api/model/GetRCTaskRes;->getTaskMetaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v4, Lcom/alipay/mobile/command/api/model/GetRCTaskRes;->sysRuntimeConfig:Lcom/alipay/mobile/command/api/model/ConfigInfoRes;

    invoke-static {v1}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->updateCfg(Lcom/alipay/mobile/command/api/model/ConfigInfoRes;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/alipay/mobile/command/manager/CommandManager;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v4}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a(Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v5, v1, v4}, Lcom/alipay/mobile/command/manager/TaskManager;->upateTaskMeta(Lcom/alipay/mobile/command/model/TaskMetaCollect;Ljava/util/List;Ljava/util/List;Z)V

    :cond_4
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/command/api/model/TaskMeta;

    new-instance v7, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-direct {v7, v1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;-><init>(Lcom/alipay/mobile/command/api/model/TaskMeta;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/alipay/mobile/command/api/model/TaskMeta;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "manager"

    new-array v2, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "getRcError"

    aput-object v5, v2, v4

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_2

    :cond_6
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getDepencyCommandList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isNetMatchSyn()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isLogSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "service_triger"

    invoke-static {v0}, Lcom/alipay/mobile/command/util/ThreadPools;->applyDefaultThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/command/invoke/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/command/invoke/d;-><init>(Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "manager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setLog\u88ab\u5ffd\u7565\uff0c\u5f53\u524d\u914d\u7f6e\u5173\u95ed"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isNetMatchSyn()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "service_triger"

    invoke-static {v0}, Lcom/alipay/mobile/command/util/ThreadPools;->applyDefaultThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/command/invoke/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/command/invoke/c;-><init>(Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, v3

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->getRbtMaxTimes()I

    move-result v0

    if-lt v2, v0, :cond_2

    :cond_0
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->getRbtMaxTimes()I

    move-result v0

    if-ne v2, v0, :cond_1

    const-string/jumbo v0, "manager"

    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, "Command\u8d44\u6e90\u540c\u6b65\u8fbe\u5230\u4e0a\u9650\uff0c\u5b58\u5728\u6f5c\u5728\u5f02\u5e38."

    aput-object v2, v1, v3

    invoke-static {v0, v4, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isNetMatchSyn()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->COMMAND:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/CommandMetaCollect;

    if-nez v0, :cond_4

    move-object v1, v4

    :goto_3
    new-instance v5, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;

    invoke-direct {v5}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getProductVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setAlipayWalletVersion(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setUuidList(Ljava/util/List;)V

    const-string/jumbo v1, "Android"

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setOsName(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setOsVersion(I)V

    iget-object v1, p0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a:Lcom/alipay/mobile/command/api/CmdCenterFacade;

    invoke-interface {v1, v5}, Lcom/alipay/mobile/command/api/CmdCenterFacade;->syncCommand(Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;)Lcom/alipay/mobile/command/api/model/SyncCommandMetaRes;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/alipay/mobile/command/api/model/SyncCommandMetaRes;->getCommandList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v5}, Lcom/alipay/mobile/command/api/model/SyncCommandMetaRes;->getCommandList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    invoke-virtual {v5}, Lcom/alipay/mobile/command/api/model/SyncCommandMetaRes;->getInValidCommandUUID()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/alipay/mobile/command/manager/CommandManager;->a(Lcom/alipay/mobile/command/model/CommandMetaCollect;Ljava/util/List;Ljava/util/List;)V

    iget v0, v5, Lcom/alipay/mobile/command/api/model/SyncCommandMetaRes;->remainedSyncTimes:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/CommandMetaCollect;->getCommandWrapMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "manager"

    new-array v2, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "syncCmdError"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/command/api/model/CommandMeta;

    new-instance v8, Lcom/alipay/mobile/command/model/CommandMetaWrap;

    invoke-direct {v8, v1}, Lcom/alipay/mobile/command/model/CommandMetaWrap;-><init>(Lcom/alipay/mobile/command/api/model/CommandMeta;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lcom/alipay/mobile/command/manager/CommandManager;->a(Lcom/alipay/mobile/command/model/CommandMetaCollect;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final c()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isNetMatchSyn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->TASK:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaCollect;

    if-nez v0, :cond_2

    :goto_0
    new-instance v2, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;

    invoke-direct {v2}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->getConfigFlag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->updatedConfigFlag:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setAlipayWalletVersion(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setUuidList(Ljava/util/List;)V

    const-string/jumbo v1, "Android"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setOsName(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setOsVersion(I)V

    iget-object v1, p0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a:Lcom/alipay/mobile/command/api/CmdCenterFacade;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/command/api/CmdCenterFacade;->syncTask(Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;)Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;->getTaskList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;->getTaskList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, v2, Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;->sysRuntimeConfig:Lcom/alipay/mobile/command/api/model/ConfigInfoRes;

    invoke-static {v1}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a(Lcom/alipay/mobile/command/api/model/ConfigInfoRes;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;->getInValidTaskUUID()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/alipay/mobile/command/manager/TaskManager;->upateTaskMeta(Lcom/alipay/mobile/command/model/TaskMetaCollect;Ljava/util/List;Ljava/util/List;Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaCollect;->getTaskWrapMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "manager"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "syncTaskError"

    aput-object v3, v2, v6

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/command/api/model/TaskMeta;

    new-instance v5, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-direct {v5, v1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;-><init>(Lcom/alipay/mobile/command/api/model/TaskMeta;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/command/manager/TaskManager;->upateTaskMeta(Lcom/alipay/mobile/command/model/TaskMetaCollect;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public final d()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a:Lcom/alipay/mobile/command/api/CmdCenterFacade;

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->getConfigFlag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/command/api/CmdCenterFacade;->getConfig(Ljava/lang/String;)Lcom/alipay/mobile/command/api/model/ConfigInfoRes;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a(Lcom/alipay/mobile/command/api/model/ConfigInfoRes;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "manager"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u83b7\u53d6\u914d\u7f6e\u5f02\u5e38,\u672c\u6b21\u83b7\u53d6\u914d\u7f6e\u66f4\u65b0\u5931\u8d25"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
