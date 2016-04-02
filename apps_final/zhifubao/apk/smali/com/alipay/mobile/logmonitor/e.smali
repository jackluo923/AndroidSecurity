.class final Lcom/alipay/mobile/logmonitor/e;
.super Ljava/lang/Object;
.source "TraceStubReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/logmonitor/TraceStubReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/TraceStubReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/e;->b:Lcom/alipay/mobile/logmonitor/TraceStubReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 130
    return-void
.end method
