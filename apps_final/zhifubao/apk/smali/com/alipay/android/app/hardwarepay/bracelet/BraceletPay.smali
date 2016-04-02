.class public Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;
.super Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;


# static fields
.field private static isCallBack:Z


# instance fields
.field private callBack:Ljava/lang/Object;

.field private cancelDownload:Z

.field private cancelDownloadService:Z

.field private progressDialog:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

.field private properties:Ljava/util/Properties;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private supportHardwarePay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownloadService:Z

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownload:Z

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->properties:Ljava/util/Properties;

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/m;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/m;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownload:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownload:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->createInitReplyJson(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->toCallback(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->dismissProgressDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Ljava/lang/String;ILandroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)Landroid/app/Dialog;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->showConfirmDialogToDownload(Ljava/lang/String;ILandroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownloadService:Z

    return v0
.end method

.method static synthetic access$702(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownloadService:Z

    return p1
.end method

.method static synthetic access$800(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->progressDialog:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->progressDialog:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->download(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    return-void
.end method

.method private addInitJson(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 5

    const/16 v4, 0x64

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a()Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->b()[Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    const-string/jumbo v1, "support_hardware"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "bl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const-string/jumbo v2, "bl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    if-ne v2, v4, :cond_4

    const-string/jumbo v2, "hd_vc"

    const-string/jumbo v3, "v5"

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_3
    :goto_1
    const-string/jumbo v2, "authType"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string/jumbo v2, "vendor"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string/jumbo v2, "phoneModel"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {p1, v2, v3}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->b(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "protocolVersion"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string/jumbo v2, "protocolType"

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string/jumbo v2, "bl_downloadUrl"

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-virtual {p1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "deviceId"

    const/4 v3, 0x6

    aget-object v0, v0, v3

    invoke-static {p1, v2, v0, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_3

    const/16 v2, 0x64

    iput v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    const-string/jumbo v2, "hd_vc"

    const-string/jumbo v3, "v4"

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private createInitReplyJson(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "message"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->addInitJson(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private dismissProgressDialog(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/l;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/l;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, ""

    const-string/jumbo v1, "mini_start_download"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/q;

    invoke-direct {v0, p0, p3, p4, p5}, Lcom/alipay/android/app/hardwarepay/bracelet/q;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/b;

    invoke-direct {v0, p0, p3, p4, p5}, Lcom/alipay/android/app/hardwarepay/bracelet/b;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/down/FileDownloadService;->a()Lcom/alipay/android/app/down/FileDownloadService;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/app/hardwarepay/bracelet/c;

    invoke-direct {v2, p0, v1, p3, p2}, Lcom/alipay/android/app/hardwarepay/bracelet/c;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/String;)V

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

.method private showConfirmDialogToDownload(Ljava/lang/String;ILandroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)Landroid/app/Dialog;
    .locals 9

    const-string/jumbo v0, "mini_install_tips"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "mini_download"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/o;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/hardwarepay/bracelet/o;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    const-string/jumbo v1, "alipay_cancel"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/android/app/hardwarepay/bracelet/p;

    invoke-direct {v6, p0, p3, p4, p5}, Lcom/alipay/android/app/hardwarepay/bracelet/p;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    move-object v1, p3

    move-object v2, v7

    move-object v3, v8

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private showProgressDialog(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->progressDialog:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->progressDialog:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    const-string/jumbo v1, "mini_loading"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Ljava/lang/CharSequence;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->progressDialog:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->progressDialog:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->show()V

    goto :goto_0
.end method

.method private toCallback(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Ljava/lang/Object;ILjava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b()V

    return-void
.end method


# virtual methods
.method protected callbackWhenFailed(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V
    .locals 3

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "type"

    const/16 v2, 0x1f8

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "result"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v1, p3, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->toCallback(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs execute(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a()Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_9

    array-length v3, p3

    if-lez v3, :cond_9

    array-length v6, p3

    move v5, v2

    move-object v3, v4

    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v2, p3, v5

    if-eqz v2, :cond_4

    instance-of v7, v2, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v7, :cond_1

    check-cast v2, Lcom/alipay/android/app/json/JSONObject;

    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    goto :goto_1

    :cond_1
    instance-of v7, v2, Ljava/util/Properties;

    if-eqz v7, :cond_2

    check-cast v2, Ljava/util/Properties;

    iput-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->properties:Ljava/util/Properties;

    move-object v2, v3

    goto :goto_2

    :cond_2
    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_3

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_2

    :cond_3
    iput-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    :cond_4
    move-object v2, v3

    goto :goto_2

    :cond_5
    move-object v8, v3

    :goto_3
    const-string/jumbo v2, "type"

    invoke-virtual {v8, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_6
    :goto_4
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[BraceletPay-execute]:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[isCallBack]=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ex"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    new-instance v2, Lcom/alipay/android/app/hardwarepay/bracelet/a;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/alipay/android/app/hardwarepay/bracelet/a;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_4

    :sswitch_2
    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Landroid/content/Context;Ljava/lang/Object;)V

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :sswitch_3
    invoke-virtual {v1, p1, v8}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Landroid/content/Context;Ljava/lang/Object;)V

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :sswitch_4
    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p2, v5}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v3, "extraPara"

    invoke-virtual {v8, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "extraPara"

    invoke-virtual {v8, v3}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_5
    const-string/jumbo v4, "data"

    invoke-virtual {v8, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[extraPara:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    const-string/jumbo v3, "version"

    invoke-virtual {v8, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(IILjava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V

    goto/16 :goto_4

    :sswitch_5
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/e;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/app/hardwarepay/bracelet/e;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;I)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_4

    :sswitch_6
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(ILjava/lang/Object;)V

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_4

    :sswitch_7
    sget-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownloadService:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownload:Z

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v7, v0

    invoke-direct {p0, v7}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->showProgressDialog(Landroid/app/Activity;)V

    new-instance v2, Lcom/alipay/android/app/hardwarepay/bracelet/f;

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/app/hardwarepay/bracelet/f;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Landroid/content/Context;ILandroid/app/Activity;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_4

    :sswitch_8
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    const-string/jumbo v1, "force_close"

    invoke-static {p2, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(ILjava/lang/Object;)V

    goto/16 :goto_4

    :sswitch_9
    const-string/jumbo v2, "type"

    invoke-virtual {v8, v2}, Lcom/alipay/android/app/json/JSONObject;->remove(Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/base/HardwareConstants;->a()Landroid/util/SparseIntArray;

    move-result-object v3

    sget v4, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v8, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, p2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->toCallback(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    goto/16 :goto_4

    :sswitch_a
    sget-boolean v2, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z

    if-nez v2, :cond_6

    sget-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "type"

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/base/HardwareConstants;->a()Landroid/util/SparseIntArray;

    move-result-object v4

    sget v5, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[BraceletPay-execute-MSG_MSP_EXIT]:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3, p2, v2}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->toCallback(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->isCallBack:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_8
    move-object v3, v4

    goto/16 :goto_5

    :cond_9
    move-object v8, v4

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x70 -> :sswitch_2
        0x1f4 -> :sswitch_0
        0x1f5 -> :sswitch_5
        0x1f6 -> :sswitch_6
        0x1f7 -> :sswitch_9
        0x1f8 -> :sswitch_7
        0x1f9 -> :sswitch_8
        0x1fa -> :sswitch_a
        0x1fb -> :sswitch_3
    .end sparse-switch
.end method

.method public varargs init(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 7

    const/16 v6, 0x7f

    const/16 v5, 0x64

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, p3, v1

    instance-of v0, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a()Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    move-result-object v2

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/util/Properties;

    invoke-virtual {v2, p1, p2, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Landroid/content/Context;ILjava/util/Properties;)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u652f\u4ed8\u8bf7\u6c42\u624b\u73af\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    const-string/jumbo v1, ""

    sget v3, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    const/16 v4, 0x1f5

    if-eq v3, v4, :cond_2

    sget v3, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    const/16 v4, 0x1f6

    if-eq v3, v4, :cond_2

    sget v3, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    const/16 v4, 0x1f8

    if-eq v3, v4, :cond_2

    sget v3, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    const/16 v4, 0x1f9

    if-ne v3, v4, :cond_6

    :cond_2
    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    const/16 v4, 0x69

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    const/16 v4, 0x6a

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    if-ne v3, v6, :cond_4

    :cond_3
    const-string/jumbo v1, "bl"

    :cond_4
    :goto_1
    const-string/jumbo v3, "support_hardware"

    invoke-static {v0, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "external_info"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "external_info"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "out_trade_no"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->b(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "hd_isopen"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    :cond_5
    invoke-direct {p0, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->addInitJson(Lcom/alipay/android/app/json/JSONObject;)V

    goto/16 :goto_0

    :cond_6
    sget v3, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    if-eq v3, v5, :cond_7

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I

    if-ne v3, v6, :cond_4

    :cond_7
    const-string/jumbo v1, "bl"

    goto :goto_1
.end method

.method protected showDialogForService(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V
    .locals 1

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/bracelet/i;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
