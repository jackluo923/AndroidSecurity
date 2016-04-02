.class public Lcom/alipay/android/phone/nfd/abeacon/Utils/BeaconUtil;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/phone/nfd/abeacon/Utils/BeaconUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/abeacon/Utils/BeaconUtil;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/ContextWrapper;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "android.bluetooth.BluetoothManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/Utils/BeaconUtil;->a:Ljava/lang/String;

    const-string/jumbo v2, "find class BluetoothManager!"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/Utils/BeaconUtil;->a:Ljava/lang/String;

    const-string/jumbo v2, "BluetoothManager class not found!"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/Utils/BeaconUtil;->a:Ljava/lang/String;

    const-string/jumbo v2, "begin get BluetoothManager!"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string/jumbo v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    sget-object v2, Lcom/alipay/android/phone/nfd/abeacon/Utils/BeaconUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bluetoothManager : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sget-object v2, Lcom/alipay/android/phone/nfd/abeacon/Utils/BeaconUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mBluetoothAdapter : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/Utils/BeaconUtil;->a:Ljava/lang/String;

    const-string/jumbo v2, "mBluetoothAdapter is null or disabled !"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/Utils/BeaconUtil;->a:Ljava/lang/String;

    const-string/jumbo v1, "BluetoothAdapter found!"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
