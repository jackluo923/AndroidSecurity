.class public Lcom/alipay/android/launcher/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 25
    const-string/jumbo v0, "launcher"

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->setEntry(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 30
    new-array v1, v5, [Ljava/lang/String;

    .line 31
    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    aput-object v2, v1, v3

    .line 32
    const-string/jumbo v2, "com.alipay.mobile.framework.USERLEAVEHINT"

    aput-object v2, v1, v4

    .line 30
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 34
    const-class v1, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 35
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 39
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 40
    new-array v1, v5, [Ljava/lang/String;

    .line 41
    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    aput-object v2, v1, v3

    .line 42
    const-string/jumbo v2, "com.alipay.security.login"

    aput-object v2, v1, v4

    .line 40
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 44
    const-class v1, Lcom/alipay/mobile/base/config/ConfigUpdateBroadCastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 45
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 47
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 48
    const-class v1, Lcom/alipay/mobile/base/config/ConfigBizValve;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 49
    const-class v1, Lcom/alipay/mobile/base/config/ConfigBizValve;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 50
    const-string/jumbo v1, "com.alipay.mobile.client.STARTED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 51
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 54
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 55
    new-array v1, v6, [Ljava/lang/String;

    .line 56
    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    aput-object v2, v1, v3

    .line 57
    const-string/jumbo v2, "com.alipay.mobile.framework.USERLEAVEHINT"

    aput-object v2, v1, v4

    .line 58
    const-string/jumbo v2, "com.alipay.mobile.TIMER_AUTO_WAKEUP"

    aput-object v2, v1, v5

    .line 55
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 60
    const-class v1, Lcom/alipay/mobile/base/receiver/SensorMonitorReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 61
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 64
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 65
    new-array v1, v5, [Ljava/lang/String;

    .line 66
    const-string/jumbo v2, "com.alipay.security.login"

    aput-object v2, v1, v3

    .line 67
    const-string/jumbo v2, "com.alipay.security.logout"

    aput-object v2, v1, v4

    .line 65
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 69
    const-class v1, Lcom/alipay/android/launcher/badge/BadgeBizBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 70
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 73
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 74
    const-class v1, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver$AliveReport;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 75
    const-class v1, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver$AliveReport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 76
    const-string/jumbo v1, "com.alipay.mobile.client.STARTED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 77
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 79
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 80
    new-array v1, v5, [Ljava/lang/String;

    .line 81
    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    aput-object v2, v1, v3

    .line 82
    const-string/jumbo v2, "com.alipay.mobile.framework.USERLEAVEHINT"

    aput-object v2, v1, v4

    .line 80
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 84
    const-class v1, Lcom/alipay/mobile/base/security/CheckInjectReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 85
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 88
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 89
    const-class v1, Lcom/alipay/mobile/base/resourceclean/TasksExecutor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 90
    const-class v1, Lcom/alipay/mobile/base/resourceclean/TasksExecutor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 91
    const-string/jumbo v1, "com.alipay.mobile.client.STARTED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 92
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 95
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 96
    const-class v1, Lcom/alipay/mobile/base/poweroptimize/FrameworkInitTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 97
    const-class v1, Lcom/alipay/mobile/base/poweroptimize/FrameworkInitTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 98
    const-string/jumbo v1, "com.alipay.mobile.framework.INITED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 99
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 101
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 102
    const-class v1, Lcom/alipay/mobile/base/poweroptimize/ClientStartedTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 103
    const-class v1, Lcom/alipay/mobile/base/poweroptimize/ClientStartedTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 104
    const-string/jumbo v1, "com.alipay.mobile.client.STARTED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 105
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 108
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 109
    const-class v1, Lcom/alipay/android/launcher/badge/BadgeBizValve;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 110
    const-string/jumbo v1, "BadgeBizValve"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 111
    const-string/jumbo v1, "com.alipay.mobile.client.STARTED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 112
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 114
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 115
    const-class v1, Lcom/alipay/android/launcher/TabLauncherValve;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 116
    const-string/jumbo v1, "TabLauncherValve"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 117
    const-string/jumbo v1, "com.alipay.mobile.PORTAL_TABLAUNCHER_ACTIVATED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 118
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 120
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 121
    const-string/jumbo v1, "activityResumeReceiverDes"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 122
    const-class v1, Lcom/alipay/mobile/base/receiver/ActivityLifecycleReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 123
    new-array v1, v4, [Ljava/lang/String;

    .line 124
    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    aput-object v2, v1, v3

    .line 123
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 126
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 128
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 129
    const-string/jumbo v1, "20000001"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v1

    const-string/jumbo v2, "launcher"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.launcher.TabLauncherApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 130
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addApplication(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 132
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 133
    const-string/jumbo v1, "TabLauncherBroadcastReceiver"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 134
    const-class v1, Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 135
    new-array v1, v6, [Ljava/lang/String;

    .line 136
    const-string/jumbo v2, "com.alipay.security.login"

    aput-object v2, v1, v3

    .line 137
    const-string/jumbo v2, "com.alipay.mobile.client.CONFIG_CHANGE"

    aput-object v2, v1, v4

    .line 138
    const-string/jumbo v2, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    aput-object v2, v1, v5

    .line 135
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 140
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 142
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 143
    const-string/jumbo v1, "WelcomeBroadcastReceiver"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 144
    const-class v1, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 145
    new-array v1, v5, [Ljava/lang/String;

    .line 146
    const-string/jumbo v2, "com.alipay.security.login"

    aput-object v2, v1, v3

    .line 147
    const-string/jumbo v2, "com.alipay.mobile.push.CMD_TRANSFERD"

    aput-object v2, v1, v4

    .line 145
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 149
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 150
    return-void
.end method
