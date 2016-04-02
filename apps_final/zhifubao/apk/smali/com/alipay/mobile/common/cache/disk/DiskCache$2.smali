.class Lcom/alipay/mobile/common/cache/disk/DiskCache$2;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$2;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iput-object p2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$2;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 291
    if-nez v0, :cond_1

    .line 292
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "DiskCache"

    const-string/jumbo v2, "fail to remove cache file"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$2;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    # invokes: Lcom/alipay/mobile/common/cache/disk/DiskCache;->a()V
    invoke-static {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->access$100(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V

    goto :goto_0
.end method
