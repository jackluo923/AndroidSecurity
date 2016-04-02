.class Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/plugin/BluetoothPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BPBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/plugin/BluetoothPlugin;


# direct methods
.method private constructor <init>(Lmobi/monaca/framework/plugin/BluetoothPlugin;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;->this$0:Lmobi/monaca/framework/plugin/BluetoothPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/monaca/framework/plugin/BluetoothPlugin;Lmobi/monaca/framework/plugin/BluetoothPlugin$1;)V
    .locals 0
    .param p1, "x0"    # Lmobi/monaca/framework/plugin/BluetoothPlugin;
    .param p2, "x1"    # Lmobi/monaca/framework/plugin/BluetoothPlugin$1;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;-><init>(Lmobi/monaca/framework/plugin/BluetoothPlugin;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 273
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 277
    .local v1, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 278
    .local v2, "deviceInfo":Lorg/json/JSONObject;
    const-string v6, "name"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v6, "address"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    iget-object v6, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;->this$0:Lmobi/monaca/framework/plugin/BluetoothPlugin;

    # getter for: Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_discoveredDevices:Lorg/json/JSONArray;
    invoke-static {v6}, Lmobi/monaca/framework/plugin/BluetoothPlugin;->access$100(Lmobi/monaca/framework/plugin/BluetoothPlugin;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v1    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "deviceInfo":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 282
    .restart local v1    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v3

    .line 283
    .local v3, "e":Lorg/json/JSONException;
    const-string v6, "BluetoothPlugin"

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    .end local v1    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v6, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 288
    iget-object v6, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;->this$0:Lmobi/monaca/framework/plugin/BluetoothPlugin;

    # setter for: Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_discovering:Z
    invoke-static {v6, v9}, Lmobi/monaca/framework/plugin/BluetoothPlugin;->access$202(Lmobi/monaca/framework/plugin/BluetoothPlugin;Z)Z

    goto :goto_0

    .line 291
    :cond_2
    # getter for: Lmobi/monaca/framework/plugin/BluetoothPlugin;->ACTION_UUID:Ljava/lang/String;
    invoke-static {}, Lmobi/monaca/framework/plugin/BluetoothPlugin;->access$300()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    iget-object v6, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;->this$0:Lmobi/monaca/framework/plugin/BluetoothPlugin;

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    # setter for: Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_gotUUIDs:Lorg/json/JSONArray;
    invoke-static {v6, v7}, Lmobi/monaca/framework/plugin/BluetoothPlugin;->access$402(Lmobi/monaca/framework/plugin/BluetoothPlugin;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 294
    # getter for: Lmobi/monaca/framework/plugin/BluetoothPlugin;->EXTRA_UUID:Ljava/lang/String;
    invoke-static {}, Lmobi/monaca/framework/plugin/BluetoothPlugin;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 295
    .local v5, "parcelUuids":[Landroid/os/Parcelable;
    if-eqz v5, :cond_0

    .line 296
    const-string v6, "BluetoothPlugin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found UUIDs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_3

    .line 300
    iget-object v6, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;->this$0:Lmobi/monaca/framework/plugin/BluetoothPlugin;

    # getter for: Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_gotUUIDs:Lorg/json/JSONArray;
    invoke-static {v6}, Lmobi/monaca/framework/plugin/BluetoothPlugin;->access$400(Lmobi/monaca/framework/plugin/BluetoothPlugin;)Lorg/json/JSONArray;

    move-result-object v6

    aget-object v7, v5, v4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 299
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 303
    :cond_3
    iget-object v6, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;->this$0:Lmobi/monaca/framework/plugin/BluetoothPlugin;

    # setter for: Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_gettingUuids:Z
    invoke-static {v6, v9}, Lmobi/monaca/framework/plugin/BluetoothPlugin;->access$602(Lmobi/monaca/framework/plugin/BluetoothPlugin;Z)Z

    goto :goto_0
.end method
