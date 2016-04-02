.class public Lmobi/monaca/framework/plugin/BluetoothPlugin;
.super Lorg/apache/cordova/api/Plugin;
.source "BluetoothPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/plugin/BluetoothPlugin$1;,
        Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CONNECT:Ljava/lang/String; = "connect"

.field private static final ACTION_DISABLE:Ljava/lang/String; = "disable"

.field private static final ACTION_DISCONNECT:Ljava/lang/String; = "disconnect"

.field private static final ACTION_DISCOVERDEVICES:Ljava/lang/String; = "discoverDevices"

.field private static final ACTION_ENABLE:Ljava/lang/String; = "enable"

.field private static final ACTION_GETUUIDS:Ljava/lang/String; = "getUUIDs"

.field private static final ACTION_READ:Ljava/lang/String; = "read"

.field private static ACTION_UUID:Ljava/lang/String;

.field private static EXTRA_UUID:Ljava/lang/String;


# instance fields
.field private m_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private m_bluetoothSockets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothSocket;",
            ">;"
        }
    .end annotation
.end field

.field private m_bpBroadcastReceiver:Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;

.field private m_discoveredDevices:Lorg/json/JSONArray;

.field private m_discovering:Z

.field private m_gettingUuids:Z

.field private m_gotUUIDs:Lorg/json/JSONArray;

.field private m_stateChanging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, ""

    sput-object v0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->ACTION_UUID:Ljava/lang/String;

    .line 53
    const-string v0, ""

    sput-object v0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->EXTRA_UUID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 69
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 55
    iput-object v4, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 56
    iput-object v4, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bpBroadcastReceiver:Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;

    .line 57
    iput-boolean v3, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_discovering:Z

    .line 58
    iput-boolean v3, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_gettingUuids:Z

    .line 59
    iput-boolean v3, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_stateChanging:Z

    .line 61
    iput-object v4, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_discoveredDevices:Lorg/json/JSONArray;

    .line 62
    iput-object v4, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_gotUUIDs:Lorg/json/JSONArray;

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothSockets:Ljava/util/ArrayList;

    .line 70
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 71
    new-instance v3, Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;

    invoke-direct {v3, p0, v4}, Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;-><init>(Lmobi/monaca/framework/plugin/BluetoothPlugin;Lmobi/monaca/framework/plugin/BluetoothPlugin$1;)V

    iput-object v3, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bpBroadcastReceiver:Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;

    .line 74
    :try_start_0
    const-class v3, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "ACTION_UUID"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 75
    .local v0, "actionUUID":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lmobi/monaca/framework/plugin/BluetoothPlugin;->ACTION_UUID:Ljava/lang/String;

    .line 76
    const-string v3, "BluetoothPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "actionUUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-class v3, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "EXTRA_UUID"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 79
    .local v2, "extraUUID":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lmobi/monaca/framework/plugin/BluetoothPlugin;->EXTRA_UUID:Ljava/lang/String;

    .line 80
    const-string v3, "BluetoothPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extraUUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "actionUUID":Ljava/lang/reflect/Field;
    .end local v2    # "extraUUID":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothPlugin"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lmobi/monaca/framework/plugin/BluetoothPlugin;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/BluetoothPlugin;

    .prologue
    .line 43
    iget-object v0, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_discoveredDevices:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$202(Lmobi/monaca/framework/plugin/BluetoothPlugin;Z)Z
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/BluetoothPlugin;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_discovering:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->ACTION_UUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lmobi/monaca/framework/plugin/BluetoothPlugin;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/BluetoothPlugin;

    .prologue
    .line 43
    iget-object v0, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_gotUUIDs:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$402(Lmobi/monaca/framework/plugin/BluetoothPlugin;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/BluetoothPlugin;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 43
    iput-object p1, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_gotUUIDs:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->EXTRA_UUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lmobi/monaca/framework/plugin/BluetoothPlugin;Z)Z
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/BluetoothPlugin;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_gettingUuids:Z

    return p1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 15
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v9, 0x0

    .line 111
    .local v9, "pluginResult":Lorg/apache/cordova/api/PluginResult;
    const-string v12, "BluetoothPlugin"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Action: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v12, "enable"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 115
    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_1

    .line 116
    const/4 v12, 0x1

    iput-boolean v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_stateChanging:Z

    .line 117
    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->ctx:Lorg/apache/cordova/api/LegacyContext;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-virtual {v12, p0, v13, v14}, Lorg/apache/cordova/api/LegacyContext;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 118
    :cond_0
    iget-boolean v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_stateChanging:Z

    if-nez v12, :cond_0

    .line 122
    :cond_1
    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 123
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v9, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 248
    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    :cond_2
    :goto_0
    return-object v9

    .line 126
    :cond_3
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v9, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto :goto_0

    .line 130
    :cond_4
    const-string v12, "disable"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 131
    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 132
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v9, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto :goto_0

    .line 135
    :cond_5
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v9, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto :goto_0

    .line 139
    :cond_6
    const-string v12, "discoverDevices"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 140
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    iput-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_discoveredDevices:Lorg/json/JSONArray;

    .line 142
    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v12

    if-nez v12, :cond_7

    .line 143
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const-string v13, "Unable to start discovery"

    invoke-direct {v9, v12, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto :goto_0

    .line 146
    :cond_7
    const/4 v12, 0x1

    iput-boolean v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_discovering:Z

    .line 149
    :cond_8
    iget-boolean v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_discovering:Z

    if-nez v12, :cond_8

    .line 151
    const-string v12, "BluetoothPlugin"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DiscoveredDevices: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_discoveredDevices:Lorg/json/JSONArray;

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    iget-object v13, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_discoveredDevices:Lorg/json/JSONArray;

    invoke-direct {v9, v12, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V

    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_0

    .line 157
    :cond_9
    const-string v12, "getUUIDs"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 160
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "address":Ljava/lang/String;
    const-string v12, "BluetoothPlugin"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Listing UUIDs for: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v12, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 165
    .local v2, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "fetchUuidsWithSdp"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 166
    .local v8, "m":Ljava/lang/reflect/Method;
    const-string v12, "BluetoothPlugin"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Method: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/4 v12, 0x1

    iput-boolean v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_gettingUuids:Z

    .line 171
    :cond_a
    iget-boolean v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_gettingUuids:Z

    if-nez v12, :cond_a

    .line 173
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    iget-object v13, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_gotUUIDs:Lorg/json/JSONArray;

    invoke-direct {v9, v12, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_0

    .line 176
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "m":Ljava/lang/reflect/Method;
    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    :catch_0
    move-exception v5

    .line 177
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "BluetoothPlugin"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 180
    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_0

    .line 183
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_b
    const-string v12, "connect"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 185
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .restart local v1    # "address":Ljava/lang/String;
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v11

    .line 188
    .local v11, "uuid":Ljava/util/UUID;
    const-string v12, "BluetoothPlugin"

    const-string v13, "Connecting..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v12, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 191
    .restart local v2    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2, v11}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    .line 193
    .local v3, "bluetoothSocket":Landroid/bluetooth/BluetoothSocket;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 195
    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothSockets:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothSockets:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 198
    .local v10, "socketId":I
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v9, v12, v10}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_0

    .line 200
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "bluetoothSocket":Landroid/bluetooth/BluetoothSocket;
    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    .end local v10    # "socketId":I
    .end local v11    # "uuid":Ljava/util/UUID;
    :catch_1
    move-exception v5

    .line 201
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v12, "BluetoothPlugin"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 204
    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_0

    .line 206
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_c
    const-string v12, "read"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 208
    const/4 v12, 0x0

    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    .line 210
    .restart local v10    # "socketId":I
    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothSockets:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothSocket;

    .line 211
    .restart local v3    # "bluetoothSocket":Landroid/bluetooth/BluetoothSocket;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 213
    .local v7, "inputStream":Ljava/io/InputStream;
    const/16 v12, 0x80

    new-array v4, v12, [C

    .line 214
    .local v4, "buffer":[C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v12, v4

    if-ge v6, v12, :cond_d

    .line 215
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v12

    int-to-char v12, v12

    aput-char v12, v4, v6

    .line 214
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 219
    :cond_d
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_0

    .line 221
    .end local v3    # "bluetoothSocket":Landroid/bluetooth/BluetoothSocket;
    .end local v4    # "buffer":[C
    .end local v6    # "i":I
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    .end local v10    # "socketId":I
    :catch_2
    move-exception v5

    .line 222
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v12, "BluetoothPlugin"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 225
    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_0

    .line 227
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_e
    const-string v12, "disconnect"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 229
    const/4 v12, 0x0

    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    .line 232
    .restart local v10    # "socketId":I
    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothSockets:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothSocket;

    .line 233
    .restart local v3    # "bluetoothSocket":Landroid/bluetooth/BluetoothSocket;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 236
    iget-object v12, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bluetoothSockets:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 239
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v9, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_0

    .line 241
    .end local v3    # "bluetoothSocket":Landroid/bluetooth/BluetoothSocket;
    .end local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    .end local v10    # "socketId":I
    :catch_3
    move-exception v5

    .line 242
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v12, "BluetoothPlugin"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v9, Lorg/apache/cordova/api/PluginResult;

    sget-object v12, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .restart local v9    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 256
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_stateChanging:Z

    .line 259
    :cond_0
    return-void
.end method

.method public setContext(Lorg/apache/cordova/api/CordovaInterface;)V
    .locals 4
    .param p1, "ctx"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lorg/apache/cordova/api/Plugin;->setContext(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 96
    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bpBroadcastReceiver:Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bpBroadcastReceiver:Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/plugin/BluetoothPlugin;->m_bpBroadcastReceiver:Lmobi/monaca/framework/plugin/BluetoothPlugin$BPBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lmobi/monaca/framework/plugin/BluetoothPlugin;->ACTION_UUID:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method
