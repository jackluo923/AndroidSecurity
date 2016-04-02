.class public final Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;,
        Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final FLAG_FIN:I = 0x1

.field static final FLAG_UNIDIRECTIONAL:I = 0x2

.field static final GOAWAY_INTERNAL_ERROR:I = 0x2

.field static final GOAWAY_OK:I = 0x0

.field static final GOAWAY_PROTOCOL_ERROR:I = 0x1

.field static final TYPE_CREDENTIAL:I = 0x10

.field static final TYPE_DATA:I = 0x0

.field static final TYPE_GOAWAY:I = 0x7

.field static final TYPE_HEADERS:I = 0x8

.field static final TYPE_NOOP:I = 0x5

.field static final TYPE_PING:I = 0x6

.field static final TYPE_RST_STREAM:I = 0x3

.field static final TYPE_SETTINGS:I = 0x4

.field static final TYPE_SYN_REPLY:I = 0x2

.field static final TYPE_SYN_STREAM:I = 0x1

.field static final TYPE_WINDOW_UPDATE:I = 0x9

.field static final VERSION:I = 0x3

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final client:Z

.field private final handler:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

.field private final hostName:Ljava/lang/String;

.field private idleStartTimeNs:J

.field private lastGoodStreamId:I

.field private nextPingId:I

.field private nextStreamId:I

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/spdy/Ping;",
            ">;"
        }
    .end annotation
.end field

.field settings:Lcom/squareup/okhttp/internal/spdy/Settings;

.field private shutdown:Z

.field private final spdyReader:Lcom/squareup/okhttp/internal/spdy/SpdyReader;

.field private final spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/spdy/SpdyStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 46
    const-class v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->$assertionsDisabled:Z

    .line 80
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_0
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    .line 100
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J

    .line 110
    iget-boolean v0, p1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    .line 111
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->handler:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->handler:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    .line 112
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->in:Ljava/io/InputStream;
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyReader:Lcom/squareup/okhttp/internal/spdy/SpdyReader;

    .line 113
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->out:Ljava/io/OutputStream;
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    .line 114
    iget-boolean v0, p1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 115
    iget-boolean v0, p1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    .line 117
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->hostName:Ljava/lang/String;
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$300(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Spdy Reader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    :cond_1
    move v1, v2

    .line 115
    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->handler:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/squareup/okhttp/internal/spdy/Ping;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePingLater(ILcom/squareup/okhttp/internal/spdy/Ping;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/Ping;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removePing(I)Lcom/squareup/okhttp/internal/spdy/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/squareup/okhttp/internal/spdy/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePing(ILcom/squareup/okhttp/internal/spdy/Ping;)V

    return-void
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/SpdyReader;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyReader:Lcom/squareup/okhttp/internal/spdy/SpdyReader;

    return-object v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;II)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    return-object v0
.end method

.method private close(II)V
    .locals 12
    .param p1, "shutdownStatusCode"    # I
    .param p2, "rstStatusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    sget-boolean v10, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 324
    :cond_0
    const/4 v9, 0x0

    .line 326
    .local v9, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    const/4 v8, 0x0

    .line 332
    .local v8, "streamsToClose":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    const/4 v6, 0x0

    .line 333
    .local v6, "pingsToCancel":[Lcom/squareup/okhttp/internal/spdy/Ping;
    monitor-enter p0

    .line 334
    :try_start_1
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 335
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    iget-object v11, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-object v8, v0

    .line 336
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 337
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V

    .line 339
    :cond_1
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-eqz v10, :cond_2

    .line 340
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    iget-object v11, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Lcom/squareup/okhttp/internal/spdy/Ping;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/Ping;

    move-object v6, v0

    .line 341
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    .line 343
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    if-eqz v8, :cond_4

    .line 346
    move-object v1, v8

    .local v1, "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v7, v1, v3

    .line 348
    .local v7, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :try_start_2
    invoke-virtual {v7, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->close(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 346
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 327
    .end local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pingsToCancel":[Lcom/squareup/okhttp/internal/spdy/Ping;
    .end local v7    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v8    # "streamsToClose":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Ljava/io/IOException;
    move-object v9, v2

    goto :goto_0

    .line 343
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "pingsToCancel":[Lcom/squareup/okhttp/internal/spdy/Ping;
    .restart local v8    # "streamsToClose":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 349
    .restart local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v7    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catch_1
    move-exception v2

    .line 350
    .restart local v2    # "e":Ljava/io/IOException;
    if-eqz v9, :cond_3

    move-object v9, v2

    goto :goto_2

    .line 355
    .end local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :cond_4
    if-eqz v6, :cond_5

    .line 356
    move-object v1, v6

    .local v1, "arr$":[Lcom/squareup/okhttp/internal/spdy/Ping;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v5, v1, v3

    .line 357
    .local v5, "ping":Lcom/squareup/okhttp/internal/spdy/Ping;
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/spdy/Ping;->cancel()V

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 362
    .end local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/Ping;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "ping":Lcom/squareup/okhttp/internal/spdy/Ping;
    :cond_5
    :try_start_4
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyReader:Lcom/squareup/okhttp/internal/spdy/SpdyReader;

    invoke-virtual {v10}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 367
    :goto_4
    :try_start_5
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    invoke-virtual {v10}, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 372
    :cond_6
    :goto_5
    if-eqz v9, :cond_7

    throw v9

    .line 363
    :catch_2
    move-exception v2

    .line 364
    .restart local v2    # "e":Ljava/io/IOException;
    move-object v9, v2

    goto :goto_4

    .line 368
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 369
    .restart local v2    # "e":Ljava/io/IOException;
    if-nez v9, :cond_6

    move-object v9, v2

    goto :goto_5

    .line 373
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    return-void
.end method

.method private declared-synchronized getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removePing(I)Lcom/squareup/okhttp/internal/spdy/Ping;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setIdle(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 143
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writePing(ILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "ping"    # Lcom/squareup/okhttp/internal/spdy/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    monitor-enter v1

    .line 270
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/spdy/Ping;->send()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->ping(II)V

    .line 272
    monitor-exit v1

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writePingLater(ILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "ping"    # Lcom/squareup/okhttp/internal/spdy/Ping;

    .prologue
    .line 257
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;

    const-string v2, "Spdy Writer %s ping %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;ILcom/squareup/okhttp/internal/spdy/Ping;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 265
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(II)V

    .line 320
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 287
    monitor-exit v1

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getIdleStartTimeNs()J
    .locals 2

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIdle()Z
    .locals 4

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 14
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    if-eqz p3, :cond_1

    const/4 v2, 0x0

    :goto_1
    or-int v3, v6, v2

    .line 167
    .local v3, "flags":I
    const/4 v9, 0x0

    .line 168
    .local v9, "associatedStreamId":I
    const/4 v4, 0x0

    .line 169
    .local v4, "priority":I
    const/4 v5, 0x0

    .line 173
    .local v5, "slot":I
    iget-object v13, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    monitor-enter v13

    .line 174
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :try_start_1
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v2, :cond_2

    .line 176
    new-instance v2, Ljava/io/IOException;

    const-string v6, "shutdown"

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 188
    :catchall_1
    move-exception v2

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 166
    .end local v3    # "flags":I
    .end local v4    # "priority":I
    .end local v5    # "slot":I
    .end local v9    # "associatedStreamId":I
    :cond_0
    const/4 v2, 0x1

    move v6, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    .line 178
    .restart local v3    # "flags":I
    .restart local v4    # "priority":I
    .restart local v5    # "slot":I
    .restart local v9    # "associatedStreamId":I
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 179
    .local v1, "streamId":I
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 180
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->settings:Lcom/squareup/okhttp/internal/spdy/Settings;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;-><init>(ILcom/squareup/okhttp/internal/spdy/SpdyConnection;IIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 181
    .local v0, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V

    .line 185
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    :try_start_4
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    move v7, v3

    move v8, v1

    move v10, v4

    move v11, v5

    move-object v12, p1

    invoke-virtual/range {v6 .. v12}, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->synStream(IIIIILjava/util/List;)V

    .line 188
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    return-object v0
.end method

.method public noop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->noop()V

    .line 282
    return-void
.end method

.method public declared-synchronized openStreamCount()I
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lcom/squareup/okhttp/internal/spdy/Ping;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Ping;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Ping;-><init>()V

    .line 243
    .local v0, "ping":Lcom/squareup/okhttp/internal/spdy/Ping;
    monitor-enter p0

    .line 244
    :try_start_0
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v2, :cond_0

    .line 245
    new-instance v2, Ljava/io/IOException;

    const-string v3, "shutdown"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 247
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    .line 248
    .local v1, "pingId":I
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    .line 249
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    invoke-direct {p0, v1, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePing(ILcom/squareup/okhttp/internal/spdy/Ping;)V

    .line 253
    return-object v0
.end method

.method declared-synchronized removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 3
    .param p1, "streamId"    # I

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 136
    .local v0, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-object v0

    .line 135
    .end local v0    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public shutdown(I)V
    .locals 4
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    monitor-enter v2

    .line 302
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :try_start_1
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v1, :cond_0

    .line 304
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    :goto_0
    return-void

    .line 306
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    .line 307
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    .line 308
    .local v0, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    :try_start_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->goAway(III)V

    .line 310
    monitor-exit v2

    goto :goto_0

    .end local v0    # "lastGoodStreamId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 308
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method writeFrame([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 201
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeSynReply(IILjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    invoke-virtual {v0, p2, p1, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->synReply(IILjava/util/List;)V

    .line 195
    return-void
.end method

.method writeSynReset(II)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->rstStream(II)V

    .line 218
    return-void
.end method

.method writeSynResetLater(II)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # I

    .prologue
    .line 205
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;

    const-string v2, "Spdy Writer %s stream %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 214
    return-void
.end method

.method writeWindowUpdate(II)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "deltaWindowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyWriter:Lcom/squareup/okhttp/internal/spdy/SpdyWriter;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->windowUpdate(II)V

    .line 234
    return-void
.end method

.method writeWindowUpdateLater(II)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "deltaWindowSize"    # I

    .prologue
    .line 221
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$2;

    const-string v2, "Spdy Writer %s stream %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$2;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 230
    return-void
.end method
