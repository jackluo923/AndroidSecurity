.class public Lcom/j256/ormlite/logger/Logger;
.super Ljava/lang/Object;


# static fields
.field private static final ARG_STRING:Ljava/lang/String; = "{}"

.field private static final ARG_STRING_LENGTH:I

.field private static final UNKNOWN_ARG:Ljava/lang/Object;


# instance fields
.field private final log:Lcom/j256/ormlite/logger/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/j256/ormlite/logger/Logger;->ARG_STRING_LENGTH:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/logger/Log;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    return-void
.end method

.method private appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private buildFullMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    const-string/jumbo v3, "{}"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_0
    invoke-virtual {v0, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    sget v2, Lcom/j256/ormlite/logger/Logger;->ARG_STRING_LENGTH:I

    add-int/2addr v2, v3

    if-nez p5, :cond_4

    if-nez v1, :cond_2

    invoke-direct {p0, v0, p2}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-direct {p0, v0, p3}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-direct {p0, v0, p4}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    array-length v3, p5

    if-ge v1, v3, :cond_1

    aget-object v3, p5, v1

    invoke-direct {p0, v0, v3}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    :goto_2
    return-object p1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/logger/Log;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/logger/Logger;->buildFullMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v1, p1, v0}, Lcom/j256/ormlite/logger/Log;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v1, p1, v0, p2}, Lcom/j256/ormlite/logger/Log;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/logger/Log;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    return v0
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
