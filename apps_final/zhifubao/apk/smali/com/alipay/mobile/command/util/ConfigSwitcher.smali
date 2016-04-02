.class public Lcom/alipay/mobile/command/util/ConfigSwitcher;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:Z

.field private static c:J

.field private static d:I

.field private static e:I

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->a:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->b:Z

    const-wide/32 v0, 0x75300

    sput-wide v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->c:J

    sput v3, Lcom/alipay/mobile/command/util/ConfigSwitcher;->d:I

    sput v3, Lcom/alipay/mobile/command/util/ConfigSwitcher;->e:I

    sput-boolean v2, Lcom/alipay/mobile/command/util/ConfigSwitcher;->f:Z

    const-string/jumbo v0, "1"

    sput-object v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->g:Ljava/lang/String;

    sput-boolean v2, Lcom/alipay/mobile/command/util/ConfigSwitcher;->h:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->i:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 5

    sget-object v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->i:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "fileCmdConfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "cmdconfig.cf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->i:Ljava/io/File;

    :cond_0
    return-void
.end method

.method private static b()V
    .locals 5

    const-string/jumbo v0, "manager"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "config\u914d\u7f6e\u53c2\u6570:logSwitch:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-boolean v3, Lcom/alipay/mobile/command/util/ConfigSwitcher;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ",SyncInterval:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-wide v3, Lcom/alipay/mobile/command/util/ConfigSwitcher;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ",TaskInterval:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-wide v3, Lcom/alipay/mobile/command/util/ConfigSwitcher;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ",retryRpcTimes:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget v3, Lcom/alipay/mobile/command/util/ConfigSwitcher;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, ",SyncNetworks:"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-boolean v3, Lcom/alipay/mobile/command/util/ConfigSwitcher;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, ",rbtMaxTimes:"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget v3, Lcom/alipay/mobile/command/util/ConfigSwitcher;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getConfigFlag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static getRbtMaxTimes()I
    .locals 1

    sget v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->e:I

    return v0
.end method

.method public static getRetryRpcTimes()I
    .locals 1

    sget v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->d:I

    return v0
.end method

.method public static getSysSynInterval()J
    .locals 2

    sget-wide v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->a:J

    return-wide v0
.end method

.method public static getTimeRepeattaskExpireMill()J
    .locals 2

    sget-wide v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->c:J

    return-wide v0
.end method

.method public static initial()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->a()V

    sget-object v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->i:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Ljava/io/File;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->isReadSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->updateCfg(Lcom/alipay/mobile/command/api/model/ConfigInfoRes;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->b()V

    return-void
.end method

.method public static isCloseCmdCenter()Z
    .locals 4

    sget-wide v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->a:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLogSwitch()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->f:Z

    return v0
.end method

.method public static isNetMatchSyn()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->isWifi()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSysInitial()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->h:Z

    return v0
.end method

.method public static setRbtMaxTimes(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x14

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setRetryTimes(I)Z
    .locals 1

    if-gez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setSysInitialFlag(Z)V
    .locals 0

    sput-boolean p0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->h:Z

    return-void
.end method

.method public static setSysSynInterval(J)Z
    .locals 4

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    cmp-long v0, p0, v2

    if-lez v0, :cond_2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setTimeRepeattaskExpireMill(J)Z
    .locals 4

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static updateCfg(Lcom/alipay/mobile/command/api/model/ConfigInfoRes;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getConfigInfo()Lcom/alipay/mobile/command/api/model/ConfigInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getUpdatedConfigFlag()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "UpdatedConfigFlag:null|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getConfigInfo()Lcom/alipay/mobile/command/api/model/ConfigInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/command/api/model/ConfigInfo;->getRbtMaxTimes()I

    move-result v3

    invoke-static {v3}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->setRbtMaxTimes(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "RbtMaxTimes:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getConfigInfo()Lcom/alipay/mobile/command/api/model/ConfigInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/command/api/model/ConfigInfo;->getRpcRetry()I

    move-result v3

    invoke-static {v3}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->setRetryTimes(I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "rpcRetry:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getConfigInfo()Lcom/alipay/mobile/command/api/model/ConfigInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/command/api/model/ConfigInfo;->getTaskInterval()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->setTimeRepeattaskExpireMill(J)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "TaskInterval:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getConfigInfo()Lcom/alipay/mobile/command/api/model/ConfigInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/command/api/model/ConfigInfo;->getSyncInterval()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->setSysSynInterval(J)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "SyncInterval:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_6

    const-string/jumbo v3, "manager"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "\u914d\u7f6e\u6570\u636e\u66f4\u65b0\u5f02\u5e38:"

    aput-object v5, v4, v2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getUpdatedConfigFlag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getConfigInfo()Lcom/alipay/mobile/command/api/model/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/ConfigInfo;->getSyncNetworks()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->b:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getConfigInfo()Lcom/alipay/mobile/command/api/model/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/ConfigInfo;->getLogSwitch()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->f:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getConfigInfo()Lcom/alipay/mobile/command/api/model/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/ConfigInfo;->getRbtMaxTimes()I

    move-result v0

    sput v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->e:I

    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getConfigInfo()Lcom/alipay/mobile/command/api/model/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/ConfigInfo;->getRpcRetry()I

    move-result v0

    sput v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->d:I

    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getConfigInfo()Lcom/alipay/mobile/command/api/model/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/ConfigInfo;->getTaskInterval()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    sput-wide v3, Lcom/alipay/mobile/command/util/ConfigSwitcher;->c:J

    invoke-virtual {p0}, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->getConfigInfo()Lcom/alipay/mobile/command/api/model/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/ConfigInfo;->getSyncInterval()I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-lez v0, :cond_a

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v5

    :goto_3
    sput-wide v3, Lcom/alipay/mobile/command/util/ConfigSwitcher;->a:J

    const-wide/16 v3, -0x2

    cmp-long v0, v5, v3

    if-nez v0, :cond_7

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->DOWNLOAD_SOURCE_META:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    invoke-static {v3}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchExternalStoragePath(Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/alipay/mobile/command/util/CommandUtil;->delFile(Ljava/io/File;Z)V

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->CMD:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    invoke-static {v3}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchExternalStoragePath(Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/alipay/mobile/command/util/CommandUtil;->delFile(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->a()V

    sget-object v0, Lcom/alipay/mobile/command/util/ConfigSwitcher;->i:Ljava/io/File;

    invoke-static {v0, p0}, Lcom/alipay/mobile/command/util/CommandUtil;->writeMeta(Ljava/io/File;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->b()V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move-wide v3, v5

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "manager"

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "\u6587\u4ef6\u5220\u9664\u5f02\u5e38"

    aput-object v4, v1, v2

    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_4
.end method
