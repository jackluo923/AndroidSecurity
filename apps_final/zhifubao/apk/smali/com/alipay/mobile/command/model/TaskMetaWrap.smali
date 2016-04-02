.class public Lcom/alipay/mobile/command/model/TaskMetaWrap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4b56edf6c25eb77dL


# instance fields
.field private intevalTime:J

.field private jsScript:Ljava/lang/String;

.field private minuteTiming:J

.field private notifyEventFlag:Ljava/lang/String;

.field private property:I

.field private runtimeBizContext:Ljava/lang/String;

.field private taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/command/api/model/TaskMeta;)V
    .locals 5

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->property:I

    iput-wide v2, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->intevalTime:J

    iput-wide v2, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->minuteTiming:J

    iput-object v1, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->runtimeBizContext:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->notifyEventFlag:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "initial TaskMeta args can not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;

    invoke-virtual {p1}, Lcom/alipay/mobile/command/api/model/TaskMeta;->getCronExpress()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->TIME:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v3}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->TIME:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v3}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "I"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "I"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->intevalTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "manager"

    const-string/jumbo v4, "number format error."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->NOTIFY:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v3}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->NOTIFY:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v3}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->notifyEventFlag:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "P"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "P"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->minuteTiming:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public clone()Lcom/alipay/mobile/command/model/TaskMetaWrap;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    iget-object v1, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;-><init>(Lcom/alipay/mobile/command/api/model/TaskMeta;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->clone()Lcom/alipay/mobile/command/model/TaskMetaWrap;

    move-result-object v0

    return-object v0
.end method

.method public getCronExpress()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/TaskMeta;->getCronExpress()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getDepencyCommandList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/TaskMeta;->getCommandDependency()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getIntevalTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->intevalTime:J

    return-wide v0
.end method

.method public getJsScript()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->jsScript:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->initialVerifyScript()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->jsScript:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u975e\u6cd5\u8c03\u7528,\u8be5\u975e\u6cd5\u7684\u8c03\u7528\u5fc5\u987b\u5efa\u7acb\u5728\u811a\u672c\u521d\u59cb\u5316\u6210\u529f\u5b8c\u6bd5."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->jsScript:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/TaskMeta;->getMd5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMinuteTiming()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->minuteTiming:J

    return-wide v0
.end method

.method public getNotifyEventFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->notifyEventFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->property:I

    return v0
.end method

.method public getRuntimeBizContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->runtimeBizContext:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptContext()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/TaskMeta;->getScriptContent()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getScriptName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/TaskMeta;->getScriptName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/TaskMeta;->getSignature()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/TaskMeta;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/TaskMeta;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public initialVerifyScript()Z
    .locals 8

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->jsScript:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->jsScript:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "installApkCache"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;

    invoke-virtual {v4}, Lcom/alipay/mobile/command/api/model/TaskMeta;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ".apk"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getScriptContext()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/alipay/mobile/command/util/CommandUtil;->decoderBase64File(Ljava/lang/String;Ljava/io/File;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchJsFileNameFromApk(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/command/util/SignVerifyTool;->getPackageSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/alipay/mobile/command/util/SignVerifyTool;->verifyApk([Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {v3, v4}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchJsInfo(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iput-object v2, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->jsScript:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "manager"

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "\u547d\u4ee4\u89e3\u6790\u5f02\u5e38"

    aput-object v5, v4, v1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u811a\u672c\u7b7e\u540d\u4fe1\u606f\u5f02\u5e38:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a(Ljava/lang/String;)V

    const-string/jumbo v2, "command"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\u811a\u672c\u7b7e\u540d\u4fe1\u606f\u5f02\u5e38:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public setIntevalTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->intevalTime:J

    return-void
.end method

.method public setMinuteTiming(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->minuteTiming:J

    return-void
.end method

.method public setNotifyEventFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->notifyEventFlag:Ljava/lang/String;

    return-void
.end method

.method public setProperty(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->property:I

    return-void
.end method

.method public setRuntimeBizContext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->runtimeBizContext:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaWrap;->taskMeta:Lcom/alipay/mobile/command/api/model/TaskMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/TaskMeta;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
