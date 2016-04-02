.class public Lcom/alipay/android/app/logic/request/RequestConfig;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/logic/request/RequestConfig;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->j:Z

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->k:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->o:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->p:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->q:Z

    const-string/jumbo v2, "alipay.msp.cashier.dispatch"

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->r:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->s:I

    iput-object p1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->i:Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.mobilecashier"

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->b:Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.quickpay"

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->c:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->f:Ljava/lang/String;

    const-string/jumbo v2, "cashier"

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->d:Ljava/lang/String;

    const-string/jumbo v2, "main"

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->e:Ljava/lang/String;

    const-string/jumbo v2, "application/octet-stream;binary/octet-stream"

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->m:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/IAppConfig;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->h:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->g:Z

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->c:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    :try_start_0
    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->i:Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "namespace"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "namespace"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->b:Ljava/lang/String;

    :cond_1
    const-string/jumbo v2, "apiVersion"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "apiVersion"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->f:Ljava/lang/String;

    :cond_2
    const-string/jumbo v2, "name"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "name"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "js://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v5

    if-le v6, v0, :cond_3

    const/4 v2, 0x1

    aget-object v2, v5, v2

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    if-le v5, v7, :cond_5

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iput-object v5, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->d:Ljava/lang/String;

    :cond_4
    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iput-object v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->e:Ljava/lang/String;

    :cond_5
    const-string/jumbo v2, "https"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "https"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->g:Z

    :cond_6
    const-string/jumbo v0, "apiName"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "apiName"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->b()Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->c:Ljava/lang/String;

    :cond_8
    const-string/jumbo v0, "host"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "host"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->h:Ljava/lang/String;

    :cond_9
    iget-boolean v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->g:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->q:Z

    if-eqz v0, :cond_a

    const-string/jumbo v1, "mobilegw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->g:Z

    if-nez v0, :cond_a

    const-string/jumbo v0, "alipay.security.security.dispatch"

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->r:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->q:Z

    :cond_a
    const-string/jumbo v0, "request_param"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "request_param"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->l:Ljava/lang/String;

    :cond_b
    const-string/jumbo v0, "enctype"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "enctype"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->m:Ljava/lang/String;

    :cond_c
    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->g:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->p:Z
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_1
    return-void

    :cond_e
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->s:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->n:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->o:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->p:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->j:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->o:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.alipay.mobilecashier"

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->g:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->j:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->k:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "application/octet-stream;binary/octet-stream"

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->m:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->q:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/android/app/logic/request/RequestConfig;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->s:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->s:I

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->r:Ljava/lang/String;

    return-object v0
.end method
