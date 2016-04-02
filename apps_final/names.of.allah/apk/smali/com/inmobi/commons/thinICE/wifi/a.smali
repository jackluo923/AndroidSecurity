.class final Lcom/inmobi/commons/thinICE/wifi/a;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->a()Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->b()V

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;->onResultsReceived(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
