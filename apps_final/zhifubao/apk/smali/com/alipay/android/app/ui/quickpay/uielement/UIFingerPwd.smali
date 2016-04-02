.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Landroid/widget/Button;

.field private O:I

.field private P:Landroid/app/Activity;

.field private Q:Ljava/lang/String;

.field private R:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

.field private S:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

.field private T:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->M:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->O:I

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->Q:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/o;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/o;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->T:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->H:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)V
    .locals 5

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->F()Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v1

    array-length v0, v1

    if-lez v0, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    new-instance v4, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    invoke-direct {v4, v3}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-virtual {p0, p0, v4}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->P:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->I:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)Lcom/alipay/android/app/ui/quickpay/window/IUIForm;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->R:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->J:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->S:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->K:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->L:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->Q:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final M()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->M:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->P:Landroid/app/Activity;

    move-object v0, p2

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->N:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->N:Landroid/widget/Button;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->a(Landroid/widget/TextView;Landroid/content/Context;)V

    move-object v0, p2

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->k()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/n;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/n;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "fingerprint_authenticate_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->P:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    :try_start_0
    const-string/jumbo v0, "fingervalue"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "fingervalue"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->M:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/window/IFormShower;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->S:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    return-void
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->R:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    return-void
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "fingerpwd"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->H:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "maxretrytime"

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->O:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "forcePwd"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->Q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "vendor"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->I:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "protocolVersion"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->J:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "protocolType"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->K:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "deviceId"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->L:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->dispose()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->P:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->H:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->M:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->h:[Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->i:[Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->N:Landroid/widget/Button;

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->Q:Ljava/lang/String;

    return-void
.end method

.method protected final p()I
    .locals 1

    const-string/jumbo v0, "mini_ui_button"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final q()V
    .locals 0

    return-void
.end method
