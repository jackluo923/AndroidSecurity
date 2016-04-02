.class public Lcom/j256/ormlite/logger/LoggerFactory;
.super Ljava/lang/Object;


# static fields
.field public static final LOG_TYPE_SYSTEM_PROPERTY:Ljava/lang/String; = "com.j256.ormlite.logger.type"

.field private static logType:Lcom/j256/ormlite/logger/LoggerFactory$LogType;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findLogType()Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    .locals 5

    const-string v0, "com.j256.ormlite.logger.type"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v1, Lcom/j256/ormlite/logger/LocalLog;

    const-class v2, Lcom/j256/ormlite/logger/LoggerFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/j256/ormlite/logger/LocalLog;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find valid log-type from system property \'com.j256.ormlite.logger.type\', value \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/j256/ormlite/logger/Log;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->values()[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    goto :goto_0
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/j256/ormlite/logger/Logger;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/String;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/j256/ormlite/logger/Logger;
    .locals 2

    sget-object v0, Lcom/j256/ormlite/logger/LoggerFactory;->logType:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/j256/ormlite/logger/LoggerFactory;->findLogType()Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory;->logType:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    :cond_0
    new-instance v0, Lcom/j256/ormlite/logger/Logger;

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory;->logType:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    invoke-virtual {v1, p0}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->createLog(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/j256/ormlite/logger/Logger;-><init>(Lcom/j256/ormlite/logger/Log;)V

    return-object v0
.end method

.method public static getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    goto :goto_0
.end method
