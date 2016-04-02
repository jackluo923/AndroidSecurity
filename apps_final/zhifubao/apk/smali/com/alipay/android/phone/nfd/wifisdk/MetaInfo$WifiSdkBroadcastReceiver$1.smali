.class Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo$WifiSdkBroadcastReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo$WifiSdkBroadcastReceiver;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo$WifiSdkBroadcastReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo$WifiSdkBroadcastReceiver$1;->this$1:Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo$WifiSdkBroadcastReceiver;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo$WifiSdkBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo$WifiSdkBroadcastReceiver$1;->this$1:Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo$WifiSdkBroadcastReceiver;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo$WifiSdkBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo$WifiSdkBroadcastReceiver;->doOnreceive(Landroid/content/Context;)V

    return-void
.end method
