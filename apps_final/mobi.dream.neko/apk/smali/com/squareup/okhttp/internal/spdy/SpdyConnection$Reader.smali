.class Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)V

    return-void
.end method


# virtual methods
.method public data(IILjava/io/InputStream;I)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "streamId"    # I
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    invoke-static {v1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 442
    .local v0, "dataStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-nez v0, :cond_1

    .line 443
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(II)V

    .line 444
    int-to-long v1, p4

    invoke-static {p3, v1, v2}, Lcom/squareup/okhttp/internal/Util;->skipByReading(Ljava/io/InputStream;J)J

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveData(Ljava/io/InputStream;I)V

    .line 448
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveFin()V

    goto :goto_0
.end method

.method public goAway(III)V
    .locals 6
    .param p1, "flags"    # I
    .param p2, "lastGoodStreamId"    # I
    .param p3, "statusCode"    # I

    .prologue
    .line 556
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v4

    .line 557
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    const/4 v5, 0x1

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z
    invoke-static {v3, v5}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1002(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Z)Z

    .line 560
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 561
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/squareup/okhttp/internal/spdy/SpdyStream;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 562
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 563
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/squareup/okhttp/internal/spdy/SpdyStream;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 564
    .local v2, "streamId":I
    if-le v2, p2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveRstStream(I)V

    .line 566
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 569
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/squareup/okhttp/internal/spdy/SpdyStream;>;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/squareup/okhttp/internal/spdy/SpdyStream;>;>;"
    .end local v2    # "streamId":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/squareup/okhttp/internal/spdy/SpdyStream;>;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    return-void
.end method

.method public headers(IILjava/util/List;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "streamId"    # I
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
    .line 501
    .local p3, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    invoke-static {v1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 502
    .local v0, "replyStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveHeaders(Ljava/util/List;)V

    .line 505
    :cond_0
    return-void
.end method

.method public noop()V
    .locals 0

    .prologue
    .line 541
    return-void
.end method

.method public ping(II)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "streamId"    # I

    .prologue
    const/4 v1, 0x1

    .line 544
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-boolean v2, v2, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    rem-int/lit8 v3, p2, 0x2

    if-ne v3, v1, :cond_1

    :goto_0
    if-eq v2, v1, :cond_2

    .line 546
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    const/4 v2, 0x0

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePingLater(ILcom/squareup/okhttp/internal/spdy/Ping;)V
    invoke-static {v1, p2, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1600(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILcom/squareup/okhttp/internal/spdy/Ping;)V

    .line 553
    :cond_0
    :goto_1
    return-void

    .line 544
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removePing(I)Lcom/squareup/okhttp/internal/spdy/Ping;
    invoke-static {v1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/Ping;

    move-result-object v0

    .line 549
    .local v0, "ping":Lcom/squareup/okhttp/internal/spdy/Ping;
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/Ping;->receive()V

    goto :goto_1
.end method

.method public rstStream(III)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "streamId"    # I
    .param p3, "statusCode"    # I

    .prologue
    .line 508
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 509
    .local v0, "rstStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveRstStream(I)V

    .line 512
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 421
    const/4 v2, 0x2

    .line 422
    .local v2, "shutdownStatusCode":I
    const/4 v1, 0x6

    .line 424
    .local v1, "rstStatusCode":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->spdyReader:Lcom/squareup/okhttp/internal/spdy/SpdyReader;
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/SpdyReader;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->nextFrame(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 426
    const/4 v2, 0x0

    .line 427
    const/4 v1, 0x5

    .line 433
    :try_start_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(II)V
    invoke-static {v3, v2, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$800(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;II)V

    .line 437
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    .line 430
    const/4 v1, 0x1

    .line 433
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(II)V
    invoke-static {v3, v2, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$800(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 434
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v3

    .line 433
    :try_start_2
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(II)V
    invoke-static {v4, v2, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$800(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 432
    :goto_1
    throw v3

    .line 434
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public settings(ILcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 9
    .param p1, "flags"    # I
    .param p2, "newSettings"    # Lcom/squareup/okhttp/internal/spdy/Settings;

    .prologue
    .line 515
    const/4 v5, 0x0

    .line 516
    .local v5, "streamsToNotify":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v7

    .line 517
    :try_start_0
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->settings:Lcom/squareup/okhttp/internal/spdy/Settings;

    if-eqz v6, :cond_0

    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_2

    .line 518
    :cond_0
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iput-object p2, v6, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->settings:Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 522
    :goto_0
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 523
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v8}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-array v8, v8, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-object v5, v0

    .line 525
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    if-eqz v5, :cond_3

    .line 527
    move-object v1, v5

    .local v1, "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 531
    .local v4, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    monitor-enter v4

    .line 532
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 533
    :try_start_2
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->settings:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-virtual {v4, v6}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveSettings(Lcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 534
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 535
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 520
    .end local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :cond_2
    :try_start_4
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->settings:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-virtual {v6, p2}, Lcom/squareup/okhttp/internal/spdy/Settings;->merge(Lcom/squareup/okhttp/internal/spdy/Settings;)V

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 534
    .restart local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6

    .line 535
    :catchall_2
    move-exception v6

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    .line 538
    .end local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :cond_3
    return-void
.end method

.method public synReply(IILjava/util/List;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "streamId"    # I
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
    .line 488
    .local p3, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    invoke-static {v1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 489
    .local v0, "replyStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-nez v0, :cond_1

    .line 490
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(II)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveReply(Ljava/util/List;)V

    .line 494
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveFin()V

    goto :goto_0
.end method

.method public synStream(IIIIILjava/util/List;)V
    .locals 10
    .param p1, "flags"    # I
    .param p2, "streamId"    # I
    .param p3, "associatedStreamId"    # I
    .param p4, "priority"    # I
    .param p5, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p6, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v9

    .line 459
    :try_start_0
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v7, v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->settings:Lcom/squareup/okhttp/internal/spdy/Settings;

    move v1, p2

    move v3, p1

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;-><init>(ILcom/squareup/okhttp/internal/spdy/SpdyConnection;IIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 462
    .local v0, "synStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    monitor-exit v9

    .line 484
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I
    invoke-static {v1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1102(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)I

    .line 466
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 467
    .local v8, "previous":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    if-eqz v8, :cond_1

    .line 469
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeLater(I)V

    .line 470
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    goto :goto_0

    .line 467
    .end local v0    # "synStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v8    # "previous":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 474
    .restart local v0    # "synStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .restart local v8    # "previous":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :cond_1
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1500()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;

    const-string v3, "Callback %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1300(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public windowUpdate(III)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "streamId"    # I
    .param p3, "deltaWindowSize"    # I

    .prologue
    .line 573
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    invoke-static {v1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 574
    .local v0, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveWindowUpdate(I)V

    .line 577
    :cond_0
    return-void
.end method
