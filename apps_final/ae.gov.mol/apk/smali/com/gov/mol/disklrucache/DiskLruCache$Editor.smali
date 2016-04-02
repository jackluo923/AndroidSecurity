.class public final Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gov/mol/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/gov/mol/disklrucache/DiskLruCache;Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)V
    .locals 1
    .param p2, "entry"    # Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p2, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->entry:Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    .line 573
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$0(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->written:[Z

    .line 574
    return-void

    .line 573
    :cond_0
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/gov/mol/disklrucache/DiskLruCache;->access$7(Lcom/gov/mol/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/gov/mol/disklrucache/DiskLruCache;Lcom/gov/mol/disklrucache/DiskLruCache$Entry;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0, p1, p2}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;-><init>(Lcom/gov/mol/disklrucache/DiskLruCache;Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$0(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V
    .locals 0

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->hasErrors:Z

    return-void
.end method

.method static synthetic access$2(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->entry:Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)[Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/gov/mol/disklrucache/DiskLruCache;->completeEdit(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/gov/mol/disklrucache/DiskLruCache;->access$10(Lcom/gov/mol/disklrucache/DiskLruCache;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V

    .line 671
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 676
    :try_start_0
    invoke-virtual {p0}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 677
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 656
    iget-boolean v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/gov/mol/disklrucache/DiskLruCache;->completeEdit(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/gov/mol/disklrucache/DiskLruCache;->access$10(Lcom/gov/mol/disklrucache/DiskLruCache;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V

    .line 658
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->entry:Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$2(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gov/mol/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 662
    :goto_0
    iput-boolean v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->committed:Z

    .line 663
    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    # invokes: Lcom/gov/mol/disklrucache/DiskLruCache;->completeEdit(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/gov/mol/disklrucache/DiskLruCache;->access$10(Lcom/gov/mol/disklrucache/DiskLruCache;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 602
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    # invokes: Lcom/gov/mol/disklrucache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 581
    iget-object v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    monitor-enter v3

    .line 582
    :try_start_0
    iget-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->entry:Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$1(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 583
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 581
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 585
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->entry:Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$0(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 586
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    :goto_0
    return-object v1

    .line 589
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->entry:Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    iget-object v5, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    monitor-enter v5

    .line 614
    :try_start_0
    iget-object v4, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->entry:Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    invoke-static {v4}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$1(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 615
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 613
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 617
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->entry:Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->readable:Z
    invoke-static {v4}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$0(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 618
    iget-object v4, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->written:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 620
    :cond_1
    iget-object v4, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->entry:Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 623
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 634
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v4, Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/gov/mol/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;)V

    monitor-exit v5

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return-object v4

    .line 624
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v4}, Lcom/gov/mol/disklrucache/DiskLruCache;->access$8(Lcom/gov/mol/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 628
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 629
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 631
    .local v2, "e2":Ljava/io/FileNotFoundException;
    :try_start_5
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;
    invoke-static {}, Lcom/gov/mol/disklrucache/DiskLruCache;->access$9()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    const/4 v0, 0x0

    .line 644
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lcom/gov/mol/disklrucache/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    .end local v0    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 647
    invoke-static {v1}, Lcom/gov/mol/disklrucache/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 649
    return-void

    .line 646
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    .line 647
    :goto_0
    invoke-static {v0}, Lcom/gov/mol/disklrucache/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 648
    throw v2

    .line 646
    .end local v0    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    goto :goto_0
.end method
