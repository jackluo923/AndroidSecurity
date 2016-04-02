.class final Lcom/alipay/mobile/logmonitor/util/stack/h;
.super Ljava/lang/Thread;
.source "TracingUploader.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/mobile/logmonitor/util/stack/g;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/stack/g;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/h;->a:Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/stack/h;->b:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/stack/h;->c:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/alipay/mobile/logmonitor/util/stack/h;->d:Lcom/alipay/mobile/logmonitor/util/stack/g;

    .line 124
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 128
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 130
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/h;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/h;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/util/upload/ZipToFile;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Tracing zip end:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/stack/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/h;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/h;->d:Lcom/alipay/mobile/logmonitor/util/stack/g;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/h;->d:Lcom/alipay/mobile/logmonitor/util/stack/g;

    invoke-interface {v0}, Lcom/alipay/mobile/logmonitor/util/stack/g;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/h;->d:Lcom/alipay/mobile/logmonitor/util/stack/g;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/h;->d:Lcom/alipay/mobile/logmonitor/util/stack/g;

    invoke-interface {v0}, Lcom/alipay/mobile/logmonitor/util/stack/g;->b()V

    goto :goto_0
.end method
