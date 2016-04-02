.class final Lcom/alipay/mobile/logmonitor/util/stack/f;
.super Ljava/lang/Object;
.source "TracingUploader.java"

# interfaces
.implements Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/stack/e;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/stack/e;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/f;->a:Lcom/alipay/mobile/logmonitor/util/stack/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/f;->a:Lcom/alipay/mobile/logmonitor/util/stack/e;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->b(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/f;->a:Lcom/alipay/mobile/logmonitor/util/stack/e;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/f;->a:Lcom/alipay/mobile/logmonitor/util/stack/e;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a()V

    .line 83
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/f;->a:Lcom/alipay/mobile/logmonitor/util/stack/e;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/f;->a:Lcom/alipay/mobile/logmonitor/util/stack/e;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/util/stack/e;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method
