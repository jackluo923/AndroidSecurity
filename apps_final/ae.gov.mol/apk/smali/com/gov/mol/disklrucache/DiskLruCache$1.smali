.class Lcom/gov/mol/disklrucache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gov/mol/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gov/mol/disklrucache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/gov/mol/disklrucache/DiskLruCache;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$1;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/gov/mol/disklrucache/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/gov/mol/disklrucache/DiskLruCache$1;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$1;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    # getter for: Lcom/gov/mol/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache;->access$0(Lcom/gov/mol/disklrucache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    monitor-exit v1

    .line 73
    :goto_0
    return-object v3

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$1;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    # invokes: Lcom/gov/mol/disklrucache/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache;->access$1(Lcom/gov/mol/disklrucache/DiskLruCache;)V

    .line 68
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$1;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    # invokes: Lcom/gov/mol/disklrucache/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache;->access$2(Lcom/gov/mol/disklrucache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$1;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    # invokes: Lcom/gov/mol/disklrucache/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/gov/mol/disklrucache/DiskLruCache;->access$3(Lcom/gov/mol/disklrucache/DiskLruCache;)V

    .line 70
    iget-object v0, p0, Lcom/gov/mol/disklrucache/DiskLruCache$1;->this$0:Lcom/gov/mol/disklrucache/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/gov/mol/disklrucache/DiskLruCache;->access$4(Lcom/gov/mol/disklrucache/DiskLruCache;I)V

    .line 63
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
