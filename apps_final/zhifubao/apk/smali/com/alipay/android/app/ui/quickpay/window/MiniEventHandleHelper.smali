.class public Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper$1;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Landroid/app/Activity;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/String;

.field private l:Landroid/app/Dialog;

.field private m:Z

.field private n:Z

.field private o:Lcom/alipay/android/app/IAlixPay;

.field private p:Ljava/lang/Runnable;

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Landroid/content/ServiceConnection;

.field private s:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->h:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->m:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/ag;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/ag;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->p:Ljava/lang/Runnable;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/am;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/am;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->q:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/x;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/x;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->r:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/y;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/y;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->s:Lcom/alipay/android/app/IRemoteServiceCallback;

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->b:Z

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->d:Z

    iput-boolean p4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->e:Z

    iput-boolean p5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->l:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    const-string/jumbo v3, "com.alipay.android.app.MspService"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-boolean v6, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->r:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    :try_start_0
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    if-nez v2, :cond_1

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->r:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    iput-boolean v5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    :goto_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v2

    :try_start_5
    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->r:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    iput-boolean v5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    :goto_4
    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    goto :goto_1

    :cond_2
    :try_start_7
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->s:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->s:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->r:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :goto_5
    iput-boolean v5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    goto :goto_4

    :catch_2
    move-exception v2

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    goto :goto_5

    :catch_3
    move-exception v2

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_9
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->r:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :goto_6
    iput-boolean v5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    throw v0

    :catch_4
    move-exception v2

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    goto :goto_6

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->m:Z

    return p1
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/pay/ResultStatus;->c()Lcom/alipay/android/app/pay/ResultStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ResultStatus;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/pay/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/temp.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->show()V

    invoke-static {}, Lcom/alipay/android/app/down/FileDownloadService;->a()Lcom/alipay/android/app/down/FileDownloadService;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->k:Ljava/lang/String;

    new-instance v4, Lcom/alipay/android/app/ui/quickpay/window/af;

    invoke-direct {v4, p0, v1, v0}, Lcom/alipay/android/app/ui/quickpay/window/af;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/alipay/android/app/down/FileDownloadService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->p:Ljava/lang/Runnable;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alipay/android/app/util/BaseHelper;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/aj;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/aj;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->q:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->l:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;Lcom/alipay/android/app/ui/quickpay/window/IFormShower;Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)Z
    .locals 11

    new-instance v2, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v2}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->b()I

    move-result v3

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v3, 0xb

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->j:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v5

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper$1;->a:[I

    iget-object v4, v5, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-virtual {v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->h()V

    :cond_0
    move v2, v9

    :goto_0
    return v2

    :pswitch_0
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->d:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    instance-of v4, v2, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->v()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/widget/EditText;)V

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->f:Z

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->m()Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->b:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->e:Z

    move-object/from16 v0, p6

    invoke-static {v2, v3, p3, v4, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IFormShower;ZLcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    move v2, v9

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->i()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b(Z)V

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;ILcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->i()V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->a()Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->j()V

    move v2, v9

    goto/16 :goto_0

    :pswitch_2
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->c()V

    :cond_5
    if-eqz p5, :cond_6

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b(Z)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v2

    const-string/jumbo v3, "6001"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    move v2, v9

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    :try_start_0
    const-string/jumbo v5, "code"

    invoke-virtual {v2, v5}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "result"

    invoke-virtual {v2, v5}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    if-eqz p5, :cond_0

    invoke-static {v3, v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v2, v4

    goto :goto_2

    :pswitch_4
    if-eqz p3, :cond_0

    const-string/jumbo v2, "message"

    invoke-virtual {p2, v2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_5
    if-eqz p3, :cond_7

    invoke-interface {p3}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->c()V

    :cond_7
    const/4 v2, 0x1

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->g()V

    goto/16 :goto_0

    :pswitch_6
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a([Ljava/lang/String;)V

    const/16 v3, 0xb

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v3, 0x3ea

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->b(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z

    move-result v3

    :cond_8
    if-eqz v3, :cond_38

    move-object/from16 v0, p6

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    if-eqz v2, :cond_9

    move-object/from16 v2, p6

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->v()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v2, p6

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->w()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a([Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a([Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    :pswitch_8
    const/16 v3, 0xa

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v3, 0x3ec

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->u()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->b(Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_a
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->e:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/window/w;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/w;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->t()Z

    move-result v2

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    array-length v3, v2

    if-lez v3, :cond_c

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->g:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    if-nez v2, :cond_b

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->g()J

    move-result-wide v6

    move-object/from16 v5, p6

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;-><init>(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;J)V

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->g:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    :cond_b
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a()Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->g:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)V

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->b(Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->d(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->LocalDismiss:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v3, v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_10
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->h:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_d

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/ab;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/ab;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->h:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.alipay.security.namecertified"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_d
    const-string/jumbo v2, "alipays://platformapi/startApp?appId=20000038"

    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p3, v3}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Landroid/content/Intent;)V

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->LocalDismiss:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v3, v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-static {v3, v2}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v2, v3

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    array-length v2, v3

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    array-length v2, v3

    div-int/lit8 v2, v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    array-length v2, v3

    div-int/lit8 v2, v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_3
    array-length v6, v3

    if-ge v2, v6, :cond_f

    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_e

    div-int/lit8 v6, v2, 0x2

    aget-object v7, v3, v2

    aput-object v7, v4, v6

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    div-int/lit8 v6, v2, 0x2

    aget-object v7, v3, v2

    aput-object v7, v5, v6

    goto :goto_4

    :cond_f
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v2, v5, v4}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v2, v6

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v6, v2

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    array-length v2, v5

    new-array v4, v2, [Ljava/lang/String;

    array-length v2, v5

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_5
    array-length v7, v5

    if-ge v2, v7, :cond_11

    aget-object v7, v5, v2

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    array-length v8, v7

    const/4 v10, 0x2

    if-ne v8, v10, :cond_10

    const/4 v8, 0x0

    aget-object v8, v7, v8

    aput-object v8, v4, v2

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v3, v2

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    instance-of v2, p1, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;

    if-eqz v2, :cond_12

    check-cast p1, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;

    iget-object v2, p1, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/4 v5, 0x1

    aget-object v5, v6, v5

    const/4 v7, 0x2

    aget-object v6, v6, v7

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v8}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;Ljava/lang/String;)V

    :cond_12
    move v2, v9

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v4, v2, v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v2

    if-eqz v2, :cond_18

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(I)V

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->u()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_18

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->B()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_14

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_13

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v7, :cond_18

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v8, 0x1

    if-ne v5, v8, :cond_16

    const-string/jumbo v8, "mini_block_single_item"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_15
    :goto_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    :cond_16
    const/4 v8, 0x1

    if-le v5, v8, :cond_15

    if-nez v3, :cond_17

    const-string/jumbo v8, "mini_block_item_top_bg"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    :cond_17
    const-string/jumbo v8, "mini_block_item_normal_bg"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    :cond_18
    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    if-eqz v2, :cond_0

    check-cast p6, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v6, :cond_1a

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(I)V

    :cond_19
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    :cond_1a
    move v2, v9

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v4, v2, v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v2

    if-eqz v2, :cond_20

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(I)V

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->u()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_20

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->B()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v5, :cond_1c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1b

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v7, :cond_20

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1e

    const-string/jumbo v8, "mini_block_single_item"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1d
    :goto_c
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_b

    :cond_1e
    const/4 v8, 0x1

    if-le v5, v8, :cond_1d

    if-nez v3, :cond_1f

    const-string/jumbo v8, "mini_block_item_top_bg"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c

    :cond_1f
    const-string/jumbo v8, "mini_block_item_normal_bg"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c

    :cond_20
    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    if-eqz v2, :cond_0

    check-cast p6, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v6, :cond_22

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(I)V

    :cond_21
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d

    :cond_22
    move v2, v9

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v2

    instance-of v3, v2, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;

    if-eqz v3, :cond_23

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;->M()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    move v2, v9

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v2, v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    if-eqz v2, :cond_0

    check-cast p6, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    instance-of v2, v3, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    if-eqz v2, :cond_24

    move-object v2, v3

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->l()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    aget-object v2, v4, v2

    const-string/jumbo v6, "true"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    check-cast v3, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Z)V

    goto :goto_e

    :cond_25
    check-cast v3, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Z)V

    goto :goto_e

    :cond_26
    move v2, v9

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v3

    iput-object v2, v3, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    move v2, v9

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v3

    instance-of v2, v3, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    if-eqz v2, :cond_27

    move-object v2, v3

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->v()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    check-cast v3, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-virtual {v3}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->v()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    move v2, v9

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.DIAL"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_1c
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_1d
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_1e
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/16 v3, 0x8

    move-object/from16 v0, p6

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;ILcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    if-eqz v3, :cond_28

    check-cast p1, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->M()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->a(Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    invoke-virtual {p1, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->a(Lcom/alipay/android/app/ui/quickpay/window/IFormShower;)V

    :cond_28
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v4, v2

    const-string/jumbo v3, "bl"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_1
    const-string/jumbo v3, "type"

    const/4 v6, 0x3

    invoke-virtual {v2, v3, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v3, "data"

    const/4 v6, 0x2

    aget-object v6, v4, v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "version"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v3, p4, v6, v7}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(J)V

    move-object/from16 v0, p6

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    if-eqz v2, :cond_29

    move-object/from16 v0, p6

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->v()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p6

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->w()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a([Ljava/lang/String;)V

    :goto_f
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/16 v3, 0x8

    move-object/from16 v0, p6

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;ILcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/z;

    move-object v3, p0

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v8}, Lcom/alipay/android/app/ui/quickpay/window/z;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;[Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/event/ActionType;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;J)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "bracelet_authenticate_result"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    move v2, v9

    goto/16 :goto_0

    :cond_29
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_20
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const-string/jumbo v4, "com.alipay.android.app.hardwarepay.bracelet.activity.HardwareHandleActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    array-length v4, v3

    const/4 v6, 0x3

    if-le v4, v6, :cond_2a

    const-string/jumbo v4, "protocol"

    const-string/jumbo v6, "old"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "type"

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "action"

    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "reqMsg"

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "submitMsgName"

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "bizId"

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->b()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2a
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    array-length v3, v2

    if-lez v3, :cond_2c

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string/jumbo v4, "bl"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    :try_start_2
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v4, "type"

    const/16 v5, 0x1f7

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const/4 v4, 0x1

    aget-object v4, v2, v4

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string/jumbo v2, "result"

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    :cond_2b
    :goto_10
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/4 v5, 0x2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2c
    :goto_11
    if-eqz p3, :cond_2d

    invoke-interface {p3}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->c()V

    :cond_2d
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    :cond_2e
    move v2, v9

    goto/16 :goto_0

    :cond_2f
    const/4 v4, 0x1

    :try_start_3
    aget-object v4, v2, v4

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v5, "type"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v5, "data"

    const/4 v6, 0x2

    aget-object v2, v2, v6

    invoke-virtual {v4, v5, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/4 v6, 0x2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    const-string/jumbo v2, "result"

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto :goto_10

    :catch_2
    move-exception v2

    goto :goto_11

    :cond_30
    const/4 v4, 0x1

    aget-object v4, v2, v4

    const-string/jumbo v5, "query"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x2

    aget-object v4, v2, v4

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string/jumbo v2, "result"

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_10

    :cond_31
    const/4 v4, 0x2

    aget-object v2, v2, v4

    const-string/jumbo v4, "false"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string/jumbo v2, "result"

    const/16 v4, 0xc8

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_10

    :cond_32
    const-string/jumbo v2, "result"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_10

    :cond_33
    const/4 v4, 0x1

    aget-object v4, v2, v4

    const-string/jumbo v5, "force_close"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string/jumbo v4, "result"

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v5, "type"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V
    :try_end_3
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string/jumbo v5, "data"

    const/4 v6, 0x2

    aget-object v2, v2, v6

    const-string/jumbo v6, "utf-8"

    invoke-static {v2, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_12
    :try_start_5
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/4 v6, 0x2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_34
    const-string/jumbo v2, "result"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V
    :try_end_5
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_10

    :pswitch_22
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->w:Lcom/alipay/android/app/json/JSONArray;

    if-eqz v2, :cond_0

    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->w:Lcom/alipay/android/app/json/JSONArray;

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    new-array v4, v3, [Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    new-array v5, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_36

    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->w:Lcom/alipay/android/app/json/JSONArray;

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_35

    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    const-string/jumbo v7, "action"

    invoke-static {v6, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v6

    aput-object v6, v4, v2

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_36
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    move-object/from16 v0, p6

    invoke-static {v2, v4, v5, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;[Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;[Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    move v2, v9

    goto/16 :goto_0

    :pswitch_23
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/ac;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v5, v0}, Lcom/alipay/android/app/ui/quickpay/window/ac;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/event/ActionType;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/ac;->start()V

    move v2, v9

    goto/16 :goto_0

    :pswitch_24
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/ad;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v5, v0}, Lcom/alipay/android/app/ui/quickpay/window/ad;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/event/ActionType;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/ad;->start()V

    move v2, v9

    goto/16 :goto_0

    :pswitch_25
    invoke-static {p4}, Lcom/alipay/android/app/sys/DeviceInfo;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_37

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/ae;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/ae;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/ae;->start()V

    move v2, v9

    goto/16 :goto_0

    :cond_37
    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->h()V

    move v2, v9

    goto/16 :goto_0

    :pswitch_26
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    move v2, v9

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto/16 :goto_12

    :cond_38
    move v2, v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method
