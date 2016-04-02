.class final Lcom/alipay/mobile/logmonitor/b;
.super Ljava/lang/Object;
.source "TraceStubReceiver.java"

# interfaces
.implements Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/logmonitor/TraceStubReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/TraceStubReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/b;->d:Lcom/alipay/mobile/logmonitor/TraceStubReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/logmonitor/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/b;->c:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 76
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/b;->c:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 81
    return-void
.end method
