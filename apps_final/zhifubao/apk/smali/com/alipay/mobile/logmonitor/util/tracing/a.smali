.class final Lcom/alipay/mobile/logmonitor/util/tracing/a;
.super Ljava/lang/Object;
.source "MethodTracing.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;

.field final synthetic d:I

.field final synthetic e:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;Ljava/lang/String;JLcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;I)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/a;->e:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/tracing/a;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alipay/mobile/logmonitor/util/tracing/a;->b:J

    iput-object p5, p0, Lcom/alipay/mobile/logmonitor/util/tracing/a;->c:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;

    iput p6, p0, Lcom/alipay/mobile/logmonitor/util/tracing/a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/a;->e:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/a;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/tracing/a;->b:J

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/tracing/a;->c:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;

    iget v5, p0, Lcom/alipay/mobile/logmonitor/util/tracing/a;->d:I

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a(Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;Ljava/lang/String;JLcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;I)V

    .line 28
    return-void
.end method
