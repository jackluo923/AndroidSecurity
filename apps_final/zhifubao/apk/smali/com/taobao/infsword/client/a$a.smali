.class Lcom/taobao/infsword/client/a$a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/taobao/infsword/client/a;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/infsword/client/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/infsword/client/a$a;->a:Lcom/taobao/infsword/client/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p3, p0, Lcom/taobao/infsword/client/a$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/infsword/client/a$a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/infsword/client/a$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    sget v0, Lcom/taobao/infsword/statistic/KGB;->z:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/infsword/client/a$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/infsword/statistic/a;->a(Landroid/content/Context;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/infsword/client/a$a;->b:Landroid/content/Context;

    const-string/jumbo v1, "nick"

    iget-object v2, p0, Lcom/taobao/infsword/client/a$a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/taobao/infsword/statistic/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/infsword/client/a$a;->b:Landroid/content/Context;

    const-string/jumbo v1, "appid"

    iget-object v2, p0, Lcom/taobao/infsword/client/a$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/taobao/infsword/statistic/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/taobao/infsword/c/b;->a:Z

    if-eqz v0, :cond_2

    sget-wide v0, Lcom/taobao/infsword/statistic/KGB;->k:J

    invoke-static {v0, v1}, Lcom/taobao/infsword/client/a$a;->sleep(J)V

    :goto_0
    iget-object v0, p0, Lcom/taobao/infsword/client/a$a;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v0}, Lcom/taobao/infsword/client/a;->a(Lcom/taobao/infsword/client/a;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/infsword/client/a$a;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v0}, Lcom/taobao/infsword/client/a;->a(Lcom/taobao/infsword/client/a;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/infsword/client/a;->a(Lcom/taobao/infsword/client/a;I)V

    iget-object v0, p0, Lcom/taobao/infsword/client/a$a;->b:Landroid/content/Context;

    new-instance v1, Lcom/taobao/infsword/service/AppInstall;

    invoke-direct {v1}, Lcom/taobao/infsword/service/AppInstall;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/taobao/infsword/client/a$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/infsword/statistic/b;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/taobao/infsword/client/a$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/infsword/client/b;->a(Landroid/content/Context;)Lcom/taobao/infsword/client/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/infsword/client/b;->a()V

    :goto_1
    return-void

    :cond_2
    sget-wide v0, Lcom/taobao/infsword/statistic/KGB;->l:J

    invoke-static {v0, v1}, Lcom/taobao/infsword/client/a$a;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/taobao/infsword/c/b;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
