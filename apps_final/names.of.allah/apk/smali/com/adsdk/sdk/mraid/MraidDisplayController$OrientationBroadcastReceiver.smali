.class Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastRotation:I

.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isRegistered()Z
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    # invokes: Lcom/adsdk/sdk/mraid/MraidDisplayController;->getDisplayRotation()I
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$3(Lcom/adsdk/sdk/mraid/MraidDisplayController;)I

    move-result v0

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mLastRotation:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mLastRotation:I

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mLastRotation:I

    # invokes: Lcom/adsdk/sdk/mraid/MraidDisplayController;->onOrientationChanged(I)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$4(Lcom/adsdk/sdk/mraid/MraidDisplayController;I)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method
