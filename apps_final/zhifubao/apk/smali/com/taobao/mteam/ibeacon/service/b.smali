.class final Lcom/taobao/mteam/ibeacon/service/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/mteam/ibeacon/service/BleHandler;


# direct methods
.method private constructor <init>(Lcom/taobao/mteam/ibeacon/service/BleHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/service/b;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/mteam/ibeacon/service/BleHandler;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/mteam/ibeacon/service/b;-><init>(Lcom/taobao/mteam/ibeacon/service/BleHandler;)V

    return-void
.end method


# virtual methods
.method protected final varargs a()Ljava/lang/Void;
    .locals 3

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/b;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v0}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->g(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "BluetoothAdapter.ACTION_DISCOVERY_STARTED never received.  Recovery may fail."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/b;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v1}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "Cancelling discovery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/b;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v0}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "Discovery not running.  Won\'t cancel it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/b;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v0}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "DiscoveryCanceller sleep interrupted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/service/b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    return-void
.end method

.method protected final bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
