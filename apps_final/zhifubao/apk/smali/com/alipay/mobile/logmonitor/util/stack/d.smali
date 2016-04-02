.class final Lcom/alipay/mobile/logmonitor/util/stack/d;
.super Ljava/lang/Object;
.source "TracingUploader.java"

# interfaces
.implements Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->a(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/stack/h;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->a(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->b(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    iget-object v4, v4, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->a:Lcom/alipay/mobile/logmonitor/util/stack/g;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/logmonitor/util/stack/h;-><init>(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/stack/g;)V

    .line 60
    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/stack/h;->start()V

    .line 61
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/d;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->c(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method
