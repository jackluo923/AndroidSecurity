.class final Lcom/alipay/mobile/command/trigger/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/trigger/LoginTrigger;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/trigger/LoginTrigger;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/trigger/a;->a:Lcom/alipay/mobile/command/trigger/LoginTrigger;

    iput-object p2, p0, Lcom/alipay/mobile/command/trigger/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/command/trigger/a;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/command/trigger/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/command/trigger/a;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
