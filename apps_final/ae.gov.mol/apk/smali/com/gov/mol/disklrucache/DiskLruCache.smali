.class public final Lcom/gov/mol/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gov/mol/disklrucache/DiskLruCache$Editor;,
        Lcom/gov/mol/disklrucache/DiskLruCache$Entry;,
        Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/gov/mol/disklrucache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "[a-z0-9_]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gov/mol/disklrucache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 555
    new-instance v0, Lcom/gov/mol/disklrucache/DiskLruCache$2;

    invoke-direct {v0}, Lcom/gov/mol/disklrucache/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/gov/mol/disklrucache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    .line 560
    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide v4, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->size:J

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 56
    iput-wide v4, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 59
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 60
    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    new-instance v0, Lcom/gov/mol/disklrucache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/gov/mol/disklrucache/DiskLruCache$1;-><init>(Lcom/gov/mol/disklrucache/DiskLruCache;)V

    iput-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 78
    iput-object p1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 79
    iput p2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->appVersion:I

    .line 80
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 82
    iput p3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I

    .line 83
    iput-wide p4, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->maxSize:J

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/gov/mol/disklrucache/DiskLruCache;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gov/mol/disklrucache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$10(Lcom/gov/mol/disklrucache/DiskLruCache;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lcom/gov/mol/disklrucache/DiskLruCache;->completeEdit(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/gov/mol/disklrucache/DiskLruCache;)Z
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/gov/mol/disklrucache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$4(Lcom/gov/mol/disklrucache/DiskLruCache;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->redundantOpCount:I

    return-void
.end method

.method static synthetic access$5(Lcom/gov/mol/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0, p1, p2, p3}, Lcom/gov/mol/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/gov/mol/disklrucache/DiskLruCache;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$8(Lcom/gov/mol/disklrucache/DiskLruCache;)Ljava/io/File;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$9()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 555
    sget-object v0, Lcom/gov/mol/disklrucache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->entry:Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->access$2(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    move-result-object v2

    .line 356
    .local v2, "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$1(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 357
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    .end local v2    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 361
    .restart local v2    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$0(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 362
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I

    if-lt v3, v8, :cond_5

    .line 374
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget v8, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I

    if-lt v3, v8, :cond_8

    .line 390
    iget v8, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 391
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$5(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)V

    .line 392
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$0(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_b

    .line 393
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$4(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;Z)V

    .line 394
    iget-object v8, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CLEAN "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$2(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 395
    if-eqz p2, :cond_2

    .line 396
    iget-wide v8, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v8, v9}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$9(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;J)V

    .line 403
    :cond_2
    :goto_2
    iget-wide v8, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    invoke-direct {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 404
    :cond_3
    iget-object v8, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 363
    :cond_5
    :try_start_2
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->access$3(Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_6

    .line 364
    invoke-virtual {p1}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->abort()V

    .line 365
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Newly created entry didn\'t create value for index "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 367
    :cond_6
    invoke-virtual {v2, v3}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7

    .line 368
    invoke-virtual {p1}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->abort()V

    goto :goto_3

    .line 362
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 375
    :cond_8
    invoke-virtual {v2, v3}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 376
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_a

    .line 377
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 378
    invoke-virtual {v2, v3}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 379
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 380
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$7(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 381
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 382
    .local v4, "newLength":J
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$7(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 383
    iget-wide v8, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->size:J

    .line 374
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 386
    :cond_a
    invoke-static {v1}, Lcom/gov/mol/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_4

    .line 399
    .end local v1    # "dirty":Ljava/io/File;
    :cond_b
    iget-object v8, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$2(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v8, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "REMOVE "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$2(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 248
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 299
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 300
    iget-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    .line 301
    .local v1, "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    .line 302
    if-eqz v1, :cond_0

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v1}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$8(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 305
    :cond_1
    if-nez v1, :cond_3

    .line 306
    :try_start_1
    new-instance v1, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;-><init>(Lcom/gov/mol/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)V

    .line 307
    .restart local v1    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_2
    new-instance v0, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;-><init>(Lcom/gov/mol/disklrucache/DiskLruCache;Lcom/gov/mol/disklrucache/DiskLruCache$Entry;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)V

    .line 313
    .local v0, "editor":Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$5(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)V

    .line 316
    iget-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    .end local v0    # "editor":Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 308
    .restart local v1    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    :cond_3
    :try_start_2
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$1(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/gov/mol/disklrucache/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/gov/mol/disklrucache/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    .line 413
    const/16 v0, 0x7d0

    .line 414
    .local v0, "REDUNDANT_OP_COMPACT_THRESHOLD":I
    iget v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    .line 415
    iget v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    .line 414
    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/gov/mol/disklrucache/DiskLruCache;
    .locals 8
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_0

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    if-gtz p2, :cond_1

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_1
    new-instance v0, Lcom/gov/mol/disklrucache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/gov/mol/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 107
    .local v0, "cache":Lcom/gov/mol/disklrucache/DiskLruCache;
    iget-object v1, v0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    :try_start_0
    invoke-direct {v0}, Lcom/gov/mol/disklrucache/DiskLruCache;->readJournal()V

    .line 110
    invoke-direct {v0}, Lcom/gov/mol/disklrucache/DiskLruCache;->processJournal()V

    .line 111
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 124
    .end local v0    # "cache":Lcom/gov/mol/disklrucache/DiskLruCache;
    .local v6, "cache":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 113
    .end local v6    # "cache":Ljava/lang/Object;
    .restart local v0    # "cache":Lcom/gov/mol/disklrucache/DiskLruCache;
    :catch_0
    move-exception v7

    .line 114
    .local v7, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiskLruCache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lcom/gov/mol/disklrucache/DiskLruCache;->delete()V

    .line 121
    .end local v7    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 122
    new-instance v0, Lcom/gov/mol/disklrucache/DiskLruCache;

    .end local v0    # "cache":Lcom/gov/mol/disklrucache/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/gov/mol/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 123
    .restart local v0    # "cache":Lcom/gov/mol/disklrucache/DiskLruCache;
    invoke-direct {v0}, Lcom/gov/mol/disklrucache/DiskLruCache;->rebuildJournal()V

    move-object v6, v0

    .line 124
    .restart local v6    # "cache":Ljava/lang/Object;
    goto :goto_0
.end method

.method private processJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/gov/mol/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 194
    iget-object v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/gov/mol/disklrucache/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    return-void

    .line 195
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    .line 196
    .local v0, "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$1(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_2

    .line 197
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 198
    iget-wide v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->size:J

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$7(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->size:J

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 201
    .end local v2    # "t":I
    :cond_2
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$5(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)V

    .line 202
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I

    if-lt v2, v3, :cond_3

    .line 206
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/gov/mol/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 204
    invoke-virtual {v0, v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/gov/mol/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private readJournal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v3, Lcom/gov/mol/disklrucache/StrictLineReader;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 129
    sget-object v7, Lcom/gov/mol/disklrucache/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 128
    invoke-direct {v3, v6, v7}, Lcom/gov/mol/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 131
    .local v3, "reader":Lcom/gov/mol/disklrucache/StrictLineReader;
    :try_start_0
    invoke-virtual {v3}, Lcom/gov/mol/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "magic":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/gov/mol/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "version":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/gov/mol/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/gov/mol/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "valueCountString":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/gov/mol/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "blank":Ljava/lang/String;
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    iget v6, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 139
    iget v6, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 141
    :cond_0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v2    # "magic":Ljava/lang/String;
    .end local v4    # "valueCountString":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 153
    invoke-static {v3}, Lcom/gov/mol/disklrucache/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 154
    throw v6

    .line 147
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v2    # "magic":Ljava/lang/String;
    .restart local v4    # "valueCountString":Ljava/lang/String;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lcom/gov/mol/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/gov/mol/disklrucache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v6

    .line 153
    invoke-static {v3}, Lcom/gov/mol/disklrucache/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 155
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 158
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_0

    .line 160
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    :cond_0
    aget-object v1, v2, v8

    .line 164
    .local v1, "key":Ljava/lang/String;
    aget-object v3, v2, v6

    const-string v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    array-length v3, v2

    if-ne v3, v5, :cond_2

    .line 165
    iget-object v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    iget-object v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    .line 170
    .local v0, "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    if-nez v0, :cond_3

    .line 171
    new-instance v0, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    invoke-direct {v0, p0, v1, v7}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;-><init>(Lcom/gov/mol/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)V

    .line 172
    .restart local v0    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    iget-object v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_3
    aget-object v3, v2, v6

    const-string v4, "CLEAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, v2

    iget v4, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_4

    .line 176
    invoke-static {v0, v8}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$4(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;Z)V

    .line 177
    invoke-static {v0, v7}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$5(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)V

    .line 178
    array-length v3, v2

    invoke-static {v2, v5, v3}, Lcom/gov/mol/disklrucache/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    # invokes: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$6(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_4
    aget-object v3, v2, v6

    const-string v4, "DIRTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, v2

    if-ne v3, v5, :cond_5

    .line 180
    new-instance v3, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    invoke-direct {v3, p0, v0, v7}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;-><init>(Lcom/gov/mol/disklrucache/DiskLruCache;Lcom/gov/mol/disklrucache/DiskLruCache$Entry;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)V

    invoke-static {v0, v3}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$5(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)V

    goto :goto_0

    .line 181
    :cond_5
    aget-object v3, v2, v6

    const-string v4, "READ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    array-length v3, v2

    if-eq v3, v5, :cond_1

    .line 184
    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 220
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 221
    .local v1, "writer":Ljava/io/Writer;
    const-string v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 222
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 223
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 224
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 225
    iget v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 226
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 227
    iget v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 228
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 229
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 239
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 240
    iget-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 241
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 231
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    .line 232
    .local v0, "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$1(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$2(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    .end local v0    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 235
    .restart local v0    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$2(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    :goto_0
    iget-wide v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->size:J

    iget-wide v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 495
    return-void

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 493
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/gov/mol/disklrucache/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/gov/mol/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 488
    :goto_0
    monitor-exit p0

    return-void

    .line 480
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 485
    invoke-direct {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->trimToSize()V

    .line 486
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 487
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 480
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    .line 481
    .local v0, "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$1(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 482
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$1(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->close()V

    .line 504
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/gov/mol/disklrucache/IoUtils;->deleteContents(Ljava/io/File;)V

    .line 505
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/gov/mol/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 469
    invoke-direct {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->trimToSize()V

    .line 470
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 256
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 257
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .local v8, "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    if-nez v8, :cond_1

    .line 287
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 262
    :cond_1
    :try_start_1
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->readable:Z
    invoke-static {v8}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$0(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I

    new-array v5, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .local v5, "ins":[Ljava/io/InputStream;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    :try_start_2
    iget v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v9, v1, :cond_3

    .line 281
    :try_start_3
    iget v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 282
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "READ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 283
    invoke-direct {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 287
    :cond_2
    new-instance v0, Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v8}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$8(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;-><init>(Lcom/gov/mol/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 256
    .end local v5    # "ins":[Ljava/io/InputStream;
    .end local v8    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    .end local v9    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 274
    .restart local v5    # "ins":[Ljava/io/InputStream;
    .restart local v8    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    .restart local v9    # "i":I
    :cond_3
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v8, v9}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v5, v9
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 273
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 276
    :catch_0
    move-exception v7

    .line 278
    .local v7, "e":Ljava/io/FileNotFoundException;
    goto :goto_0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public getMaxSize()J
    .locals 2

    .prologue
    .line 333
    iget-wide v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 426
    iget-object v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;

    .line 427
    .local v0, "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$1(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 428
    :cond_0
    const/4 v3, 0x0

    .line 448
    :goto_0
    monitor-exit p0

    return v3

    .line 431
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->valueCount:I

    if-lt v2, v3, :cond_3

    .line 440
    iget v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 441
    iget-object v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "REMOVE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 442
    iget-object v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-direct {p0}, Lcom/gov/mol/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 445
    iget-object v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 448
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 432
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 433
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    .line 434
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    .end local v0    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 436
    .restart local v0    # "entry":Lcom/gov/mol/disklrucache/DiskLruCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_4
    :try_start_2
    iget-wide v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->size:J

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$7(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->size:J

    .line 437
    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache$Entry;->access$7(Lcom/gov/mol/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 2
    .param p1, "maxSize"    # J

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->maxSize:J

    .line 342
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
