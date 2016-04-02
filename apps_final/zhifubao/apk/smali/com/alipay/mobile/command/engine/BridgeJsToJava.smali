.class public Lcom/alipay/mobile/command/engine/BridgeJsToJava;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 13
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    const-string/jumbo v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eq v2, v10, :cond_1

    const/4 v1, 0x0

    new-array v2, v10, [Ljava/lang/Object;

    const-string/jumbo v3, "\u811a\u672c\u6267\u884c\u5f02\u5e38,\u66ff\u6362\u540e\u7684commandname\u65e0\u6cd5\u89e3\u6790,commandWrapName:"

    aput-object v3, v2, v0

    aput-object p1, v2, v9

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_1
    aget-object v3, v1, v0

    aget-object v4, v1, v9

    invoke-static {v4}, Lcom/alipay/mobile/command/manager/CommandManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->b()V

    invoke-static {v4}, Lcom/alipay/mobile/command/manager/CommandManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->c()Lcom/alipay/mobile/command/facade/BaseCommand;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "command"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "TASKUUID:"

    aput-object v5, v2, v0

    aput-object v3, v2, v9

    const-string/jumbo v5, ",commandId:"

    aput-object v5, v2, v10

    aput-object v4, v2, v11

    const-string/jumbo v5, "\u4e0d\u5b58\u5728."

    aput-object v5, v2, v12

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "TASKUUID:"

    aput-object v5, v2, v0

    aput-object v3, v2, v9

    const-string/jumbo v3, ",commandId:"

    aput-object v3, v2, v10

    aput-object v4, v2, v11

    const-string/jumbo v3, "\u4e0d\u5b58\u5728."

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "command"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Method---->TASKUUID:"

    aput-object v6, v5, v0

    aput-object v3, v5, v9

    const-string/jumbo v6, ",commandName:"

    aput-object v6, v5, v10

    invoke-virtual {v2}, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const-string/jumbo v6, ",commandId:"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    aput-object v4, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, ",\u5f00\u59cb\u65f6\u95f4:"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->c()Lcom/alipay/mobile/command/facade/BaseCommand;

    move-result-object v1

    invoke-virtual {v1, v3, p2}, Lcom/alipay/mobile/command/facade/BaseCommand;->doProcess(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v5, "command"

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "Method---->TASKUUID:"

    aput-object v7, v6, v0

    aput-object v3, v6, v9

    const-string/jumbo v0, ",commandName:"

    aput-object v0, v6, v10

    invoke-virtual {v2}, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    const-string/jumbo v0, ",commandId:"

    aput-object v0, v6, v12

    const/4 v0, 0x5

    aput-object v4, v6, v0

    const/4 v0, 0x6

    const-string/jumbo v2, ",\u6267\u884c\u7ed3\u679c:"

    aput-object v2, v6, v0

    const/4 v0, 0x7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v0

    const/16 v0, 0x8

    const-string/jumbo v2, ",\u7ed3\u675f\u65f6\u95f4:"

    aput-object v2, v6, v0

    const/16 v0, 0x9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    move-object v2, v1

    goto/16 :goto_1
.end method
