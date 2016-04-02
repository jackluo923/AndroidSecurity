.class Lcom/alipay/mobile/common/cache/disk/DiskCache$1;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

.field final synthetic val$data:[B

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iput-object p2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$data:[B

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->access$000(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;[B)V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    # invokes: Lcom/alipay/mobile/common/cache/disk/DiskCache;->a()V
    invoke-static {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->access$100(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "DiskCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fail to put cache:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
