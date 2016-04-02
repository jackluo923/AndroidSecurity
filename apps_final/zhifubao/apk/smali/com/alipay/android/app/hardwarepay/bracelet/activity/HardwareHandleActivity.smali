.class public Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;
.super Lcom/alipay/android/app/AbsActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$c;,
        Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;,
        Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;
    }
.end annotation


# instance fields
.field private b:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

.field private c:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

.field private volatile d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

.field private g:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

.field private h:I

.field private i:I

.field private j:Ljava/lang/Object;

.field private k:Z

.field private l:Z

.field private m:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

.field private n:Landroid/content/BroadcastReceiver;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/AbsActivity;-><init>()V

    iput v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->h:I

    iput v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->i:I

    const-class v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->j:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->k:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->l:Z

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/v;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->t:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->h:I

    return p1
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->n:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->p:Ljava/lang/String;

    const-string/jumbo v1, "new"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->i:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v1, 0x10

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x7d6

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    const-string/jumbo v1, "exit"

    iput-object v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    iget v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->i:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v1, 0xa

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x3ee

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "mini_install_tips"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "mini_download"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/hardwarepay/bracelet/activity/d;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/d;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/lang/String;)V

    const-string/jumbo v0, "alipay_cancel"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/android/app/hardwarepay/bracelet/activity/e;

    invoke-direct {v5, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/e;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/f;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const-string/jumbo v0, ""

    const-string/jumbo v1, "mini_start_download"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/down/FileDownloadService;->a()Lcom/alipay/android/app/down/FileDownloadService;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;

    invoke-direct {v2, p0, v1, p2}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1, v2}, Lcom/alipay/android/app/down/FileDownloadService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x2

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "data"

    const-string/jumbo v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "version"

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->p:Ljava/lang/String;

    const-string/jumbo v5, "new"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "extraPara"

    invoke-virtual {v3, v0, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    const-string/jumbo v4, "toConnectDevice"

    invoke-static {v0, v4, p2}, Lcom/alipay/android/app/util/LogAgent;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v4, v1, v2}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    invoke-direct {v0, p0, p4, p3}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->o:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "bracelet_register_result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/q;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/q;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->c:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;->setEnabled(Z)V

    const-string/jumbo v0, "backImg"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    const-string/jumbo v0, "backTxt"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "mini_hardware_bl_list_header"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v0, "name"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v2, "mini_bracelet_connected"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v0, "connectedDevics"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->c:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->c:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->g:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->c:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->g:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->c:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/p;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/p;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 6

    const-string/jumbo v0, "mini_open_bluetooth_tips"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "mini_open_bluetooth"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/hardwarepay/bracelet/activity/g;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/g;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    const-string/jumbo v0, "alipay_cancel"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/android/app/hardwarepay/bracelet/activity/i;

    invoke-direct {v5, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/i;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/j;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/w;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/w;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->f:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->g:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->h:I

    return v0
.end method

.method static synthetic j(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->i:I

    return v0
.end method

.method static synthetic l(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->m:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->t:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->c:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    return-object v0
.end method

.method static synthetic p(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->n:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic t(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->k:Z

    return v0
.end method

.method static synthetic u(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->k:Z

    return v0
.end method

.method static synthetic v(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->m:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->m:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    const-string/jumbo v1, "mini_open_bluetooth_now"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Ljava/lang/CharSequence;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->m:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->m:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->show()V

    return-void
.end method

.method static synthetic w(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->l:Z

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->setResult(I)V

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->a()V

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-virtual {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->finish()V

    :cond_0
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "onCreate"

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/util/LogAgent;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->q:Ljava/lang/String;

    const-string/jumbo v1, "reqMsg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->r:Ljava/lang/String;

    const-string/jumbo v1, "submitMsgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->s:Ljava/lang/String;

    const-string/jumbo v1, "bizId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->i:I

    const-string/jumbo v1, "protocol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->p:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->e:Ljava/util/List;

    const-string/jumbo v0, "mini_hardware_scan"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->setContentView(I)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->s:Ljava/lang/String;

    const-string/jumbo v0, "braceletLayout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v0, "title"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v4, "mini_bracelet"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v4, "mini_hardware_bl_list_header"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v0, "scanDevics"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->f:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->f:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    new-instance v4, Lcom/alipay/android/app/hardwarepay/bracelet/activity/n;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/n;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/o;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/o;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    const-string/jumbo v4, "backImg"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v4, "backTxt"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "cs"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->finish()V

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    const-string/jumbo v1, "\u521d\u59cb\u5316\u51fa\u9519"

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogAgent;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/m;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/m;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->f:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->c:Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->g:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->t:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onStop()V

    return-void
.end method
