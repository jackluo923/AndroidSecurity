.class final Lcom/alipay/mobile/logmonitor/c;
.super Ljava/lang/Object;
.source "TraceStubReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Lcom/alipay/mobile/logmonitor/TraceStubReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/TraceStubReceiver;Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/c;->g:Lcom/alipay/mobile/logmonitor/TraceStubReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/c;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/alipay/mobile/logmonitor/c;->b:J

    iput-wide p5, p0, Lcom/alipay/mobile/logmonitor/c;->c:J

    iput-object p7, p0, Lcom/alipay/mobile/logmonitor/c;->d:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobile/logmonitor/c;->e:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/alipay/mobile/logmonitor/c;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 101
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;->a()Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/c;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/c;->b:J

    iget-wide v4, p0, Lcom/alipay/mobile/logmonitor/c;->c:J

    new-instance v6, Lcom/alipay/mobile/logmonitor/d;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/logmonitor/d;-><init>(Lcom/alipay/mobile/logmonitor/c;)V

    iget-object v7, p0, Lcom/alipay/mobile/logmonitor/c;->e:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/c;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/c;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lcom/alipay/mobile/logmonitor/c;->f:Z

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;->a(Landroid/content/Context;JJLcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    return-void
.end method
