.class public Lcom/alipay/mobile/command/model/CommandMetaWrap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2d6ffe23cdddf28cL


# instance fields
.field private commandMeta:Lcom/alipay/mobile/command/api/model/CommandMeta;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/command/api/model/CommandMeta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/command/model/CommandMetaWrap;->commandMeta:Lcom/alipay/mobile/command/api/model/CommandMeta;

    return-void
.end method


# virtual methods
.method public file()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->CMD:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    invoke-static {v2}, Lcom/alipay/mobile/command/util/CommandUtil;->getDownLoadFilePath(Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/command/model/CommandMetaWrap;->commandMeta:Lcom/alipay/mobile/command/api/model/CommandMeta;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/api/model/CommandMeta;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getJarContent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/CommandMetaWrap;->commandMeta:Lcom/alipay/mobile/command/api/model/CommandMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/CommandMeta;->getJarContent()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getJarName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/CommandMetaWrap;->commandMeta:Lcom/alipay/mobile/command/api/model/CommandMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/CommandMeta;->getJarName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/CommandMetaWrap;->commandMeta:Lcom/alipay/mobile/command/api/model/CommandMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/CommandMeta;->getMd5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/CommandMetaWrap;->commandMeta:Lcom/alipay/mobile/command/api/model/CommandMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/CommandMeta;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/CommandMetaWrap;->commandMeta:Lcom/alipay/mobile/command/api/model/CommandMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/CommandMeta;->getSignature()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/model/CommandMetaWrap;->commandMeta:Lcom/alipay/mobile/command/api/model/CommandMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/CommandMeta;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->specifyProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/CommandMetaWrap;->commandMeta:Lcom/alipay/mobile/command/api/model/CommandMeta;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/command/model/CommandMetaWrap;->commandMeta:Lcom/alipay/mobile/command/api/model/CommandMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/api/model/CommandMeta;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
