.class public final Lcom/squareup/okhttp/internal/spdy/SpdyStream;
.super Ljava/lang/Object;
.source "SpdyStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/SpdyStream$1;,
        Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;,
        Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DATA_FRAME_HEADER_LENGTH:I = 0x8

.field public static final RST_CANCEL:I = 0x5

.field public static final RST_FLOW_CONTROL_ERROR:I = 0x7

.field public static final RST_FRAME_TOO_LARGE:I = 0xb

.field public static final RST_INTERNAL_ERROR:I = 0x6

.field public static final RST_INVALID_CREDENTIALS:I = 0xa

.field public static final RST_INVALID_STREAM:I = 0x2

.field public static final RST_PROTOCOL_ERROR:I = 0x1

.field public static final RST_REFUSED_STREAM:I = 0x3

.field public static final RST_STREAM_ALREADY_CLOSED:I = 0x9

.field public static final RST_STREAM_IN_USE:I = 0x8

.field public static final RST_UNSUPPORTED_VERSION:I = 0x4

.field private static final STATUS_CODE_NAMES:[Ljava/lang/String;

.field public static final WINDOW_UPDATE_THRESHOLD:I = 0x8000


# instance fields
.field private final connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

.field private final id:I

.field private final in:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

.field private final out:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

.field private final priority:I

.field private readTimeoutMillis:J

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rstStatusCode:I

.field private final slot:I

.field private writeWindowSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    const-class v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    .line 40
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    const-string v2, "PROTOCOL_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "INVALID_STREAM"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "REFUSED_STREAM"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UNSUPPORTED_VERSION"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CANCEL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "INTERNAL_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FLOW_CONTROL_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "STREAM_IN_USE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "STREAM_ALREADY_CLOSED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "INVALID_CREDENTIALS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "FRAME_TOO_LARGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->STATUS_CODE_NAMES:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0
.end method

.method constructor <init>(ILcom/squareup/okhttp/internal/spdy/SpdyConnection;IIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "connection"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p3, "flags"    # I
    .param p4, "priority"    # I
    .param p5, "slot"    # I
    .param p7, "settings"    # Lcom/squareup/okhttp/internal/spdy/Settings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/okhttp/internal/spdy/SpdyConnection;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/squareup/okhttp/internal/spdy/Settings;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J

    .line 88
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

    invoke-direct {v0, p0, v5}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;Lcom/squareup/okhttp/internal/spdy/SpdyStream$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->in:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

    .line 89
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    invoke-direct {v0, p0, v5}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;Lcom/squareup/okhttp/internal/spdy/SpdyStream$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->out:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I

    .line 100
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-nez p6, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    .line 103
    iput-object p2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .line 104
    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->priority:I

    .line 105
    iput p5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->slot:I

    .line 106
    iput-object p6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->requestHeaders:Ljava/util/List;

    .line 108
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->in:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->finished:Z
    invoke-static {v3, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->access$202(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;Z)Z

    .line 111
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->out:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_3

    :goto_1
    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$302(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;Z)Z

    .line 118
    :goto_2
    invoke-direct {p0, p7}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->setSettings(Lcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 119
    return-void

    :cond_2
    move v0, v2

    .line 110
    goto :goto_0

    :cond_3
    move v1, v2

    .line 111
    goto :goto_1

    .line 114
    :cond_4
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->in:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->finished:Z
    invoke-static {v3, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->access$202(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;Z)Z

    .line 115
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->out:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_6

    :goto_4
    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$302(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;Z)Z

    goto :goto_2

    :cond_5
    move v0, v2

    .line 114
    goto :goto_3

    :cond_6
    move v1, v2

    .line 115
    goto :goto_4
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .prologue
    .line 33
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I

    return v0
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->cancelStreamIfNecessary()V

    return-void
.end method

.method static synthetic access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .prologue
    .line 33
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->writeWindowSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .prologue
    .line 33
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    return v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)J
    .locals 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J

    return-wide v0
.end method

.method private cancelStreamIfNecessary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    sget-boolean v2, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 596
    :cond_0
    monitor-enter p0

    .line 597
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->in:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->finished:Z
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->in:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->closed:Z
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->access$400(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->out:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$300(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->out:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->closed:Z
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$500(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 598
    .local v0, "cancel":Z
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v1

    .line 599
    .local v1, "open":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    if-eqz v0, :cond_4

    .line 605
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->close(I)V

    .line 609
    :cond_2
    :goto_1
    return-void

    .line 597
    .end local v0    # "cancel":Z
    .end local v1    # "open":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 599
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 606
    .restart local v0    # "cancel":Z
    .restart local v1    # "open":Z
    :cond_4
    if-nez v1, :cond_2

    .line 607
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    goto :goto_1
.end method

.method private closeInternal(I)Z
    .locals 3
    .param p1, "rstStatusCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 271
    sget-boolean v1, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 272
    :cond_0
    monitor-enter p0

    .line 273
    :try_start_0
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 274
    monitor-exit p0

    .line 283
    :goto_0
    return v0

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->in:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->finished:Z
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->out:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$300(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    monitor-exit p0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 279
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I

    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 281
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 283
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private rstStatusString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->STATUS_CODE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->STATUS_CODE_NAMES:[Ljava/lang/String;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setSettings(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 2
    .param p1, "settings"    # Lcom/squareup/okhttp/internal/spdy/Settings;

    .prologue
    const/high16 v0, 0x10000

    .line 350
    sget-boolean v1, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 351
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->writeWindowSize:I

    .line 354
    return-void
.end method


# virtual methods
.method public close(I)V
    .locals 2
    .param p1, "rstStatusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeInternal(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynReset(II)V

    goto :goto_0
.end method

.method public closeLater(I)V
    .locals 2
    .param p1, "rstStatusCode"    # I

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeInternal(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(II)V

    goto :goto_0
.end method

.method public getConnection()Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->in:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the output stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->out:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    return-object v0
.end method

.method getPriority()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->priority:I

    return v0
.end method

.method public getReadTimeoutMillis()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J

    return-wide v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->requestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 170
    .local v1, "rethrow":Ljava/io/InterruptedIOException;
    invoke-virtual {v1, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 171
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "rethrow":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 164
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 167
    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stream was reset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized getRstStatusCode()I
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSlot()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->slot:I

    return v0
.end method

.method public isLocallyInitiated()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 143
    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 144
    .local v0, "streamIsClient":Z
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-boolean v3, v3, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "streamIsClient":Z
    :cond_0
    move v0, v2

    .line 143
    goto :goto_0

    .restart local v0    # "streamIsClient":Z
    :cond_1
    move v1, v2

    .line 144
    goto :goto_1
.end method

.method public declared-synchronized isOpen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 132
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 135
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->in:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->finished:Z
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->in:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->closed:Z
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->access$400(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->out:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$300(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->out:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->closed:Z
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$500(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 138
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method receiveData(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->in:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->receive(Ljava/io/InputStream;I)V

    .line 327
    return-void
.end method

.method receiveFin()V
    .locals 3

    .prologue
    .line 330
    sget-boolean v1, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 332
    :cond_0
    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->in:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;

    const/4 v2, 0x1

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->finished:Z
    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;->access$202(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;Z)Z

    .line 334
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v0

    .line 335
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 336
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    if-nez v0, :cond_1

    .line 338
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 340
    :cond_1
    return-void

    .line 336
    .end local v0    # "open":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method receiveHeaders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 307
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 308
    :cond_0
    const/4 v1, 0x0

    .line 309
    .local v1, "protocolError":Z
    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v0, "newHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    .line 318
    .end local v0    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    if-eqz v1, :cond_1

    .line 320
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeLater(I)V

    .line 322
    :cond_1
    return-void

    .line 316
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method receiveReply(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 287
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 288
    :cond_0
    const/4 v1, 0x0

    .line 289
    .local v1, "streamInUseError":Z
    const/4 v0, 0x1

    .line 290
    .local v0, "open":Z
    monitor-enter p0

    .line 291
    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-nez v2, :cond_2

    .line 292
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    .line 293
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 298
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    if-eqz v1, :cond_3

    .line 300
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeLater(I)V

    .line 304
    :cond_1
    :goto_1
    return-void

    .line 296
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 301
    :cond_3
    if-nez v0, :cond_1

    .line 302
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    goto :goto_1
.end method

.method declared-synchronized receiveRstStream(I)V
    .locals 2
    .param p1, "statusCode"    # I

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 344
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I

    .line 345
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :cond_0
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method receiveSettings(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 1
    .param p1, "settings"    # Lcom/squareup/okhttp/internal/spdy/Settings;

    .prologue
    .line 357
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 358
    :cond_0
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->setSettings(Lcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 360
    return-void
.end method

.method declared-synchronized receiveWindowUpdate(I)V
    .locals 1
    .param p1, "deltaWindowSize"    # I

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->out:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    # -= operator for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I
    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$620(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;I)I

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reply(Ljava/util/List;Z)V
    .locals 3
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v1, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 195
    :cond_0
    const/4 v0, 0x0

    .line 196
    .local v0, "flags":I
    monitor-enter p0

    .line 197
    if-nez p1, :cond_1

    .line 198
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "responseHeaders == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 200
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot reply to a locally initiated stream"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 204
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "reply already sent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_3
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    .line 207
    if-nez p2, :cond_4

    .line 208
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->out:Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    const/4 v2, 0x1

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z
    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->access$302(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;Z)Z

    .line 209
    or-int/lit8 v0, v0, 0x1

    .line 211
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I

    invoke-virtual {v1, v2, v0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynReply(IILjava/util/List;)V

    .line 213
    return-void
.end method

.method public setReadTimeout(J)V
    .locals 0
    .param p1, "readTimeoutMillis"    # J

    .prologue
    .line 220
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeoutMillis:J

    .line 221
    return-void
.end method
