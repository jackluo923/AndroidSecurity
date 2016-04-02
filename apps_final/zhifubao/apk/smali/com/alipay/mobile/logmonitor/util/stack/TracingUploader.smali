.class public Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;
.super Ljava/lang/Object;
.source "TracingUploader.java"


# instance fields
.field a:Lcom/alipay/mobile/logmonitor/util/stack/g;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:I

.field private k:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLandroid/content/Context;Ljava/lang/String;ZI)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/32 v0, 0xd00000

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->f:J

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->i:Z

    .line 72
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/stack/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/logmonitor/util/stack/e;-><init>(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->a:Lcom/alipay/mobile/logmonitor/util/stack/g;

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->b:Ljava/lang/String;

    .line 32
    iput-wide p2, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->c:J

    .line 33
    iput-object p4, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->d:Landroid/content/Context;

    .line 34
    iput-object p5, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->e:Ljava/lang/String;

    .line 35
    iput-boolean p6, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->i:Z

    .line 36
    iput p7, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->j:I

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".trace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->g:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->h:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->k:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->i:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->f:J

    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->k:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->k:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    const/4 v1, 0x4

    const-string/jumbo v2, "sd card is not enough"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a()Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->c:J

    new-instance v4, Lcom/alipay/mobile/logmonitor/util/stack/d;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/logmonitor/util/stack/d;-><init>(Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;)V

    iget v5, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->j:I

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a(Ljava/lang/String;JLcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;I)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->k:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    .line 155
    return-void
.end method
