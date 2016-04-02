.class public Lcom/alipay/mobile/command/manager/CommandManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    sput-object v1, Lcom/alipay/mobile/command/manager/CommandManager;->b:Ljava/lang/String;

    sput-object v1, Lcom/alipay/mobile/command/manager/CommandManager;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/alipay/mobile/command/model/CommandMetaCollect;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/command/model/CommandMetaCollect;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/model/CommandMetaWrap;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v5, Lcom/alipay/mobile/command/manager/CommandManager;

    monitor-enter v5

    if-nez p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/alipay/mobile/command/model/CommandMetaCollect;

    invoke-direct {p0}, Lcom/alipay/mobile/command/model/CommandMetaCollect;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/CommandMetaCollect;->getCommandWrapMap()Ljava/util/Map;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_8

    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->CMD:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    invoke-static {v2}, Lcom/alipay/mobile/command/util/CommandUtil;->getDownLoadFilePath(Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v4, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    :goto_3
    if-lt v1, v4, :cond_11

    :cond_5
    :goto_4
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->COMMAND:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v1, p0}, Lcom/alipay/mobile/command/util/CommandUtil;->writerMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;Ljava/lang/Object;)Z

    const-string/jumbo v1, "manager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u5f53\u524d\u5185\u5b58\u7ef4\u62a4 command:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-void

    :cond_6
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/command/model/CommandMetaWrap;

    if-eqz v1, :cond_1

    sget-object v7, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1

    :cond_7
    :try_start_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/command/model/CommandMetaWrap;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/command/model/CommandMetaWrap;

    move-object v2, v0

    move v1, v3

    :goto_5
    if-lt v1, v12, :cond_9

    move v1, v3

    :goto_6
    if-nez v1, :cond_4

    const-string/jumbo v1, "manager"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "command md5\u68c0\u67e5\u5f02\u5e38.Command:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "File isExsit:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "command md5\u68c0\u67e5\u5f02\u5e38.Command:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "command"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "command md5\u68c0\u67e5\u5f02\u5e38.Command:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v1, v7}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getMd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/command/util/CommandUtil;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    if-eqz v7, :cond_10

    :try_start_5
    sget-object v1, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    if-nez v1, :cond_d

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/mobile/command/util/SignVerifyTool;->getPackageSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "classes.dex"

    invoke-static {v1, v7, v8}, Lcom/alipay/mobile/command/util/SignVerifyTool;->verifyApk([Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchCommandClassPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/alipay/mobile/command/manager/CommandManager;->b:Ljava/lang/String;

    if-nez v7, :cond_a

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "installApkCache"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/alipay/mobile/command/manager/CommandManager;->b:Ljava/lang/String;

    :cond_a
    sget-object v7, Lcom/alipay/mobile/command/manager/CommandManager;->c:Ljava/lang/String;

    if-nez v7, :cond_b

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "installApkOtpCache"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/alipay/mobile/command/manager/CommandManager;->c:Ljava/lang/String;

    :cond_b
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/alipay/mobile/command/manager/CommandManager;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/command/util/CommandUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_c
    new-instance v8, Ldalvik/system/DexClassLoader;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/alipay/mobile/command/manager/CommandManager;->c:Ljava/lang/String;

    const/4 v10, 0x0

    const-class v11, Lcom/alipay/mobile/command/manager/CommandManager;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v8, v7, v9, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sget-object v7, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    invoke-virtual {v8, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/command/facade/BaseCommand;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v8, v1, v11}, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;-><init>(Ldalvik/system/DexClassLoader;Lcom/alipay/mobile/command/facade/BaseCommand;Ljava/lang/String;)V

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "manager"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "\u52a0\u8f7dcommand\u5b89\u88c5\u5305\u6210\u529f.detail:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ",name:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_7
    move v1, v4

    goto/16 :goto_6

    :cond_e
    const-string/jumbo v1, "manager"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "\u52a0\u8f7dcommand\u5b89\u88c5\u5305\u5931\u8d25.detail:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ",name:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, ",targetFileIsExisit:"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v8, v9

    invoke-static {v1, v8}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v1

    const/4 v7, 0x2

    :try_start_6
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "\u52a0\u8f7dcommand\u5b89\u88c5\u5305\u5f02\u5e38."

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v1, v7}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :cond_f
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "apk verify signInfo error. apkFile:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a(Ljava/lang/String;)V

    const-string/jumbo v7, "command"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "apk verify signInfo error. apkFile:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ",verify:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_7

    :cond_10
    :try_start_8
    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->getJarContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/CommandMetaWrap;->file()Ljava/io/File;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/command/util/CommandUtil;->decoderBase64File(Ljava/lang/String;Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_11
    :try_start_9
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alipay/mobile/command/model/CommandMetaCollect;->containsCommandFileName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/alipay/mobile/command/util/CommandUtil;->delFile(Ljava/io/File;Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    :try_start_a
    const-string/jumbo v2, "manager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v6, "\u6e05\u9664command\u5931\u8d25"

    aput-object v6, v3, v4

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/mobile/command/manager/CommandManager;->c()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;

    return-object v0
.end method

.method public static b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/mobile/command/manager/CommandManager;->c()V

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static c()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/command/manager/CommandManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->COMMAND:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/CommandMetaCollect;

    invoke-static {v0, v1, v1}, Lcom/alipay/mobile/command/manager/CommandManager;->a(Lcom/alipay/mobile/command/model/CommandMetaCollect;Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-void
.end method
