.class public Lcom/alipay/android/phone/mobilesdk/monitor/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 14
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    aput-object v2, v1, v4

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseActivity.onBackPressed()"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onBackPressed()"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    aput-object v3, v1, v2

    new-instance v2, Lcom/alipay/mobile/monitor/track/advice/FrameworkTrackAdvice;

    invoke-direct {v2}, Lcom/alipay/mobile/monitor/track/advice/FrameworkTrackAdvice;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 26
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 27
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.mobile.framework.USERLEAVEHINT"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 30
    const-class v1, Lcom/alipay/mobile/logmonitor/ClientFrameworkEventReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 31
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mobilesdk/monitor/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 32
    return-void
.end method
