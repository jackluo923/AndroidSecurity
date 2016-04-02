.class Lcom/alipay/mobile/common/cache/disk/DiskCache$3;
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
    .line 516
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$3;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 520
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$3;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 523
    if-nez v1, :cond_1

    .line 530
    :cond_0
    return-void

    .line 526
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 527
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
