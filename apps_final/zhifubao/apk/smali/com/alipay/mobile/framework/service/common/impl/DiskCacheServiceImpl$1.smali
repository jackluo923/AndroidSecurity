.class Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl$1;
.super Ljava/lang/Object;
.source "DiskCacheServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 94
    :try_start_0
    const-string/jumbo v0, "cache"

    .line 95
    const-string/jumbo v1, "res"

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getExternalStoragePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    const-string/jumbo v3, "DiskCacheServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "path = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 100
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    # invokes: Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a(Ljava/io/File;)V
    invoke-static {v3}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->access$000(Ljava/io/File;)V

    .line 105
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getExternalStoragePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    const-string/jumbo v3, "DiskCacheServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "resPath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    # invokes: Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->a(Ljava/io/File;)V
    invoke-static {v3}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->access$000(Ljava/io/File;)V

    .line 114
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    .line 116
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v2, "DiskCacheServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parent = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;->access$100(Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_3
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
