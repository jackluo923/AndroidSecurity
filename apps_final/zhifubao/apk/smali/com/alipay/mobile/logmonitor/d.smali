.class final Lcom/alipay/mobile/logmonitor/d;
.super Ljava/lang/Object;
.source "TraceStubReceiver.java"

# interfaces
.implements Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/c;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/d;->a:Lcom/alipay/mobile/logmonitor/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/d;->a:Lcom/alipay/mobile/logmonitor/c;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/d;->a:Lcom/alipay/mobile/logmonitor/c;

    iget-object v1, v1, Lcom/alipay/mobile/logmonitor/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/d;->a:Lcom/alipay/mobile/logmonitor/c;

    iget-object v2, v2, Lcom/alipay/mobile/logmonitor/c;->e:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 110
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/d;->a:Lcom/alipay/mobile/logmonitor/c;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/d;->a:Lcom/alipay/mobile/logmonitor/c;

    iget-object v1, v1, Lcom/alipay/mobile/logmonitor/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/d;->a:Lcom/alipay/mobile/logmonitor/c;

    iget-object v2, v2, Lcom/alipay/mobile/logmonitor/c;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 115
    return-void
.end method
