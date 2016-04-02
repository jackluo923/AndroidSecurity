.class public Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->a:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

    invoke-virtual {p0, p1}, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->bind(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->b:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->b:Z

    iget-object v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->a:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->a:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

    invoke-interface {v0}, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->b:Z

    iget-object v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->a:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->a:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

    invoke-interface {v0}, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;->b()V

    goto :goto_0
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
