.class final Lcom/alipay/mobile/logmonitor/util/stack/e;
.super Ljava/lang/Object;
.source "TracingUploader.java"

# interfaces
.implements Lcom/alipay/mobile/logmonitor/util/stack/g;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 75
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->b(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->d(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->d(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/logmonitor/util/stack/f;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/logmonitor/util/stack/f;-><init>(Lcom/alipay/mobile/logmonitor/util/stack/e;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;)V

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->e(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->f(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Z)V

    .line 94
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 96
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v2, "ZipAndDeleted fail"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method
