.class public enum Lcom/j256/ormlite/logger/LoggerFactory$LogType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/j256/ormlite/logger/LoggerFactory$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum ANDROID:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum COMMONS_LOGGING:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum LOG4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum LOG4J2:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum SLF4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;


# instance fields
.field private final detectClassName:Ljava/lang/String;

.field private final logClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "ANDROID"

    const-string v2, "android.util.Log"

    const-string v3, "com.j256.ormlite.android.AndroidLog"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->ANDROID:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "SLF4J"

    const-string v2, "org.slf4j.LoggerFactory"

    const-string v3, "com.j256.ormlite.logger.Slf4jLoggingLog"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->SLF4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "COMMONS_LOGGING"

    const-string v2, "org.apache.commons.logging.LogFactory"

    const-string v3, "com.j256.ormlite.logger.CommonsLoggingLog"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->COMMONS_LOGGING:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "LOG4J2"

    const-string v2, "org.apache.logging.log4j.LogManager"

    const-string v3, "com.j256.ormlite.logger.Log4j2Log"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J2:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "LOG4J"

    const-string v2, "org.apache.log4j.Logger"

    const-string v3, "com.j256.ormlite.logger.Log4jLog"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType$1;

    const-string v1, "LOCAL"

    const/4 v2, 0x5

    const-class v3, Lcom/j256/ormlite/logger/LocalLog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/j256/ormlite/logger/LocalLog;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/logger/LoggerFactory$LogType$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->ANDROID:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->SLF4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->COMMONS_LOGGING:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J2:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->$VALUES:[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->detectClassName:Ljava/lang/String;

    iput-object p4, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->logClassName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/logger/LoggerFactory$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    .locals 1

    const-class v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    return-object v0
.end method

.method public static values()[Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->$VALUES:[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    invoke-virtual {v0}, [Lcom/j256/ormlite/logger/LoggerFactory$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    return-object v0
.end method


# virtual methods
.method public createLog(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->createLogFromClassName(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v0, Lcom/j256/ormlite/logger/LocalLog;

    invoke-direct {v0, p1}, Lcom/j256/ormlite/logger/LocalLog;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to call constructor with single String argument for class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->logClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", so had to use local log: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/j256/ormlite/logger/Log;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method createLogFromClassName(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->logClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/logger/Log;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->isAvailableTestClass()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->createLogFromClassName(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;

    move-result-object v1

    sget-object v2, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/logger/Log;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method isAvailableTestClass()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->detectClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
