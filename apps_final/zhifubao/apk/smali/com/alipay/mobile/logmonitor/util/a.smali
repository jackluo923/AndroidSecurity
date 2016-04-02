.class final Lcom/alipay/mobile/logmonitor/util/a;
.super Ljava/lang/Object;
.source "UserDiagnostician.java"

# interfaces
.implements Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/e;

.field final synthetic b:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/e;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/a;->b:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/a;->a:Lcom/alipay/mobile/logmonitor/util/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/a;->b:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/a;->b:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/a;->a:Lcom/alipay/mobile/logmonitor/util/e;

    iget-object v2, v2, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 356
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/a;->b:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/a;->b:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/a;->a:Lcom/alipay/mobile/logmonitor/util/e;

    iget-object v2, v2, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

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

    .line 361
    return-void
.end method
