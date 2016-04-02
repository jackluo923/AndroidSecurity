.class public abstract Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "AbstractHomeFragment.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field protected static c:Ljava/lang/String;


# instance fields
.field protected a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

.field protected final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field protected f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field protected g:Z

.field protected h:Landroid/os/Handler;

.field private final i:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->d:Ljava/util/List;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->g:Z

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->h:Landroid/os/Handler;

    .line 269
    new-instance v0, Lcom/alipay/android/phone/home/ui/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/a;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->i:Landroid/content/BroadcastReceiver;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 56
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 55
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 58
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 57
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    const-string/jumbo v1, "tarVerifyFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v3, "registerReceiver h5AppReceiver"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected appStatusUpdate(Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected checkHomeAppLastOne()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 228
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 230
    const-class v2, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 231
    if-nez v0, :cond_0

    move v0, v1

    .line 240
    :goto_0
    return v0

    .line 233
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getHomeAppsFromLocal()Ljava/util/List;

    move-result-object v0

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_3

    move v0, v1

    goto :goto_0

    .line 235
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 236
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected installStatusUpdate(Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected jumpToSaomafu()V
    .locals 4

    .prologue
    .line 208
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 209
    const-string/jumbo v1, "20000002"

    const-string/jumbo v2, "20000056"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

.method protected jumpToSaoyisao()V
    .locals 4

    .prologue
    .line 216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    const-string/jumbo v1, "sourceId"

    const-string/jumbo v2, "20000001#topIcon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 219
    const-string/jumbo v2, "20000002"

    const-string/jumbo v3, "10000007"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method protected memoryAppsChange(Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    return-void
.end method

.method public onReLogin()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->g:Z

    .line 72
    return-void
.end method

.method public abstract onRefresh()V
.end method

.method protected refreshAppListData()V
    .locals 5

    .prologue
    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v2, "refreshAppListData"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->addObserver(Ljava/util/Observer;)V

    .line 172
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getHomeAppsFromLocal()Ljava/util/List;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tempList.size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->whenRefreshApplistData()V

    .line 180
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Ljava/util/List;)V

    .line 181
    return-void
.end method

.method protected refreshHomeAppsData()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->isFetchingHomeUrgentApps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v2, "refreshHomeAppsData() return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/ui/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/f;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected showLastAppDialog()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 244
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 245
    const-string/jumbo v1, "\u63d0\u793a"

    const-string/jumbo v2, "\u6700\u540e\u4e00\u4e2a\u5566\uff0c\u7559\u4e0b\u6211\u5427\uff5e"

    const-string/jumbo v3, "\u597d\u7684"

    new-instance v4, Lcom/alipay/android/phone/home/ui/g;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/home/ui/g;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;)V

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 252
    return-void
.end method

.method protected showMoreAppFullAlert()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 255
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 256
    const-string/jumbo v1, "\u63d0\u793a"

    const-string/jumbo v2, "\u66f4\u591a\u5e94\u7528\u5df2\u6ee1\uff0c\u8bf7\u79fb\u9664\u66f4\u591a\u67d0\u4e2a\u5e94\u7528\u540e\u6dfb\u52a0\u3002"

    const-string/jumbo v3, "\u597d\u7684"

    .line 257
    new-instance v4, Lcom/alipay/android/phone/home/ui/h;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/home/ui/h;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;)V

    move-object v6, v5

    .line 256
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 264
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 100
    if-nez p2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    if-eqz v0, :cond_4

    .line 105
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 106
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/b;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/b;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/c;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/c;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :cond_3
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->appStatusUpdate(Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V

    goto :goto_0

    .line 123
    :cond_4
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    if-eqz v0, :cond_7

    .line 124
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    .line 125
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "installStatusUpdate:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 128
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/d;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/d;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    :cond_5
    :goto_1
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->installStatusUpdate(Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V

    goto :goto_0

    .line 135
    :cond_6
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 136
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 137
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "\u542f\u52a8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    .line 144
    :cond_7
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    if-eqz v0, :cond_9

    move-object v0, p2

    .line 146
    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;->getParentStageCode()Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "indexStage"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 148
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    .line 149
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    if-eqz v0, :cond_8

    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/e;-><init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    :cond_8
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->memoryAppsChange(Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;)V

    goto/16 :goto_0

    .line 158
    :cond_9
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    if-eqz v0, :cond_0

    .line 160
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;->getParentStageCode()Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string/jumbo v1, "urgentStage"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected whenRefreshApplistData()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
