.class Lcom/alipay/mobile/common/cache/disk/DiskCache$4;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iget-object v1, v0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iget-object v0, v0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mMeta:Lcom/alipay/mobile/common/cache/disk/Meta;

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iget-object v2, v2, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/cache/disk/Meta;->writeMeta(Ljava/util/HashMap;)V

    .line 604
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    # getter for: Lcom/alipay/mobile/common/cache/disk/DiskCache;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->access$200(Lcom/alipay/mobile/common/cache/disk/DiskCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 607
    return-void

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
