.class public Lcom/j256/ormlite/android/AndroidLog;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/logger/Log;


# static fields
.field private static synthetic $SWITCH_TABLE$com$j256$ormlite$logger$Log$Level:[I = null

.field private static final ALL_LOGS_NAME:Ljava/lang/String; = "ORMLite"

.field private static final MAX_TAG_LENGTH:I = 0x17

.field private static final REFRESH_LEVEL_CACHE_EVERY:I = 0xc8

.field private static traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# instance fields
.field private className:Ljava/lang/String;

.field private final levelCache:[Z

.field private volatile levelCacheC:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$j256$ormlite$logger$Log$Level()[I
    .locals 3

    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->$SWITCH_TABLE$com$j256$ormlite$logger$Log$Level:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/j256/ormlite/logger/Log$Level;->values()[Lcom/j256/ormlite/logger/Log$Level;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/j256/ormlite/android/AndroidLog;->$SWITCH_TABLE$com$j256$ormlite$logger$Log$Level:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCacheC:I

    invoke-static {p1}, Lcom/j256/ormlite/logger/LoggerFactory;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    add-int/lit8 v3, v1, -0x17

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/j256/ormlite/logger/Log$Level;->values()[Lcom/j256/ormlite/logger/Log$Level;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    move v1, v0

    :goto_0
    if-lt v2, v4, :cond_1

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCache:[Z

    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidLog;->refreshLevelCache()V

    return-void

    :cond_1
    aget-object v0, v3, v2

    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidLog;->levelToAndroidLevel(Lcom/j256/ormlite/logger/Log$Level;)I

    move-result v0

    if-le v0, v1, :cond_2

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static ThrowableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private isLevelEnabledInternal(I)Z
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ORMLite"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private levelToAndroidLevel(Lcom/j256/ormlite/logger/Log$Level;)I
    .locals 4

    const/4 v1, 0x6

    const/4 v0, 0x4

    invoke-static {}, Lcom/j256/ormlite/android/AndroidLog;->$SWITCH_TABLE$com$j256$ormlite$logger$Log$Level()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private refreshLevelCache()V
    .locals 6

    invoke-static {}, Lcom/j256/ormlite/logger/Log$Level;->values()[Lcom/j256/ormlite/logger/Log$Level;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/j256/ormlite/android/AndroidLog;->levelToAndroidLevel(Lcom/j256/ormlite/logger/Log$Level;)I

    move-result v3

    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCache:[Z

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCache:[Z

    invoke-direct {p0, v3}, Lcom/j256/ormlite/android/AndroidLog;->isLevelEnabledInternal(I)Z

    move-result v5

    aput-boolean v5, v4, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private renderThrowable(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/j256/ormlite/android/AndroidLog;->ThrowableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 2

    iget v0, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCacheC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCacheC:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidLog;->refreshLevelCache()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCacheC:I

    :cond_0
    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/AndroidLog;->levelToAndroidLevel(Lcom/j256/ormlite/logger/Log$Level;)I

    move-result v0

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCache:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCache:[Z

    aget-boolean v0, v1, v0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidLog;->isLevelEnabledInternal(I)Z

    move-result v0

    goto :goto_0
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/j256/ormlite/android/AndroidLog;->$SWITCH_TABLE$com$j256$ormlite$logger$Log$Level()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/j256/ormlite/android/AndroidLog;->$SWITCH_TABLE$com$j256$ormlite$logger$Log$Level()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/j256/ormlite/android/AndroidLog;->renderThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/j256/ormlite/android/AndroidLog;->renderThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/j256/ormlite/android/AndroidLog;->renderThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/j256/ormlite/android/AndroidLog;->renderThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/j256/ormlite/android/AndroidLog;->renderThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/j256/ormlite/android/AndroidLog;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
