.class final Lcom/alipay/mobile/command/invoke/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/invoke/c;->a:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    iput-object p2, p0, Lcom/alipay/mobile/command/invoke/c;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/command/invoke/c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    :try_start_0
    new-instance v1, Lcom/alipay/mobile/command/api/model/ReportStatusReq;

    invoke-direct {v1}, Lcom/alipay/mobile/command/api/model/ReportStatusReq;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/alipay/mobile/command/api/model/TaskExecuteResultReq;

    invoke-direct {v3}, Lcom/alipay/mobile/command/api/model/TaskExecuteResultReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/command/invoke/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/command/api/model/TaskExecuteResultReq;->setUuid(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/command/invoke/c;->c:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Terminated"

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/command/api/model/TaskExecuteResultReq;->setState(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/command/api/model/ReportStatusReq;->setExecuteResults(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v2}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v3, "PlatformVersion"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v4, "UserAgent"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    new-instance v4, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v4}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v5, "ProductID"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    new-instance v5, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v5}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v6, "userId"

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getCurrentUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    new-instance v6, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v6}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v7, "channel"

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getChannel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    new-instance v7, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v7}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v8, "clientId"

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getClientId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    new-instance v8, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v8}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v9, "did"

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getmDid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/command/api/model/ReportStatusReq;->setExtend(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/command/invoke/c;->a:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    invoke-static {v0}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a(Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;)Lcom/alipay/mobile/command/api/CmdCenterFacade;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/command/api/CmdCenterFacade;->reportStatus(Lcom/alipay/mobile/command/api/model/ReportStatusReq;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "Failed"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "manager"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "report Error"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
