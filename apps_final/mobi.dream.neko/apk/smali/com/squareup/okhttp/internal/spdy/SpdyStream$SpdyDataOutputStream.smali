.class final Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;
.super Ljava/io/OutputStream;
.source "SpdyStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpdyDataOutputStream"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final buffer:[B

.field private closed:Z

.field private finished:Z

.field private pos:I

.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

.field private unacknowledgedBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 615
    const-class v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .locals 1

    .prologue
    .line 615
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 616
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->buffer:[B

    .line 617
    const/16 v0, 0x8

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    .line 633
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;Lcom/squareup/okhttp/internal/spdy/SpdyStream$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream$1;

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    return-void
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z

    return v0
.end method

.method static synthetic access$302(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;
    .param p1, "x1"    # Z

    .prologue
    .line 615
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z

    return p1
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->closed:Z

    return v0
.end method

.method static synthetic access$620(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;I)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;
    .param p1, "x1"    # I

    .prologue
    .line 615
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I

    return v0
.end method

.method private checkNotClosed()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 723
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 724
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 725
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z

    if-eqz v0, :cond_1

    .line 726
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream finished"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 728
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stream was reset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusString()Ljava/lang/String;
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    return-void
.end method

.method private waitUntilWritable(IZ)V
    .locals 4
    .param p1, "count"    # I
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->writeWindowSize:I
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1300(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 705
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 708
    if-nez p2, :cond_1

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->closed:Z

    if-eqz v1, :cond_1

    .line 709
    new-instance v1, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 710
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->finished:Z

    if-eqz v1, :cond_2

    .line 711
    new-instance v1, Ljava/io/IOException;

    const-string v2, "stream finished"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 712
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusCode:I
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 713
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stream was reset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->rstStatusString()Ljava/lang/String;
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 719
    :cond_3
    return-void
.end method

.method private writeFrame(Z)V
    .locals 7
    .param p1, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 679
    sget-boolean v2, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 681
    :cond_0
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    add-int/lit8 v1, v2, -0x8

    .line 682
    .local v1, "length":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v3

    .line 683
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->waitUntilWritable(IZ)V

    .line 684
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->unacknowledgedBytes:I

    .line 685
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    const/4 v0, 0x0

    .line 687
    .local v0, "flags":I
    if-eqz p1, :cond_1

    .line 688
    or-int/lit8 v0, v0, 0x1

    .line 690
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->buffer:[B

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->id:I
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$700(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v6, v3, v4}, Lcom/squareup/okhttp/internal/Util;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 691
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->buffer:[B

    const/4 v3, 0x4

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4, v5}, Lcom/squareup/okhttp/internal/Util;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 692
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$800(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->buffer:[B

    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    invoke-virtual {v2, v3, v6, v4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeFrame([BII)V

    .line 693
    const/16 v2, 0x8

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    .line 694
    return-void

    .line 685
    .end local v0    # "flags":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 666
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 669
    monitor-exit v1

    .line 676
    :goto_0
    return-void

    .line 671
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->closed:Z

    .line 672
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->writeFrame(Z)V

    .line 674
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$800(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->flush()V

    .line 675
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->cancelStreamIfNecessary()V
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 658
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->checkNotClosed()V

    .line 659
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 660
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->writeFrame(Z)V

    .line 661
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyStream;->connection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->access$800(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->flush()V

    .line 663
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/Util;->writeSingleByte(Ljava/io/OutputStream;I)V

    .line 637
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    sget-boolean v1, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 641
    :cond_0
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/squareup/okhttp/internal/Util;->checkOffsetAndCount(III)V

    .line 642
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->checkNotClosed()V

    .line 644
    :goto_0
    if-lez p3, :cond_2

    .line 645
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 646
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->writeFrame(Z)V

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 649
    .local v0, "bytesToCopy":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->buffer:[B

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 650
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;->pos:I

    .line 651
    add-int/2addr p2, v0

    .line 652
    sub-int/2addr p3, v0

    .line 653
    goto :goto_0

    .line 654
    .end local v0    # "bytesToCopy":I
    :cond_2
    return-void
.end method
