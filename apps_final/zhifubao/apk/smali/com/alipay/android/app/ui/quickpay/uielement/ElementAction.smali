.class public Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/alipay/android/app/json/JSONObject;

.field private m:Z

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->g:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->h:Z

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;
    .locals 17

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v4, ""

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v1, "name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    const-string/jumbo v1, "host"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "host"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    :try_start_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v12, 0x1

    :cond_1
    if-eqz p0, :cond_2

    const-string/jumbo v1, "params"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "params"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    :cond_2
    if-eqz p0, :cond_3

    :try_start_3
    const-string/jumbo v1, "enctype"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "enctype"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    :cond_3
    if-eqz p0, :cond_4

    :try_start_4
    const-string/jumbo v1, "request_param"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "request_param"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v9

    :cond_4
    if-eqz p0, :cond_5

    :try_start_5
    const-string/jumbo v1, "validate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "validate"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v15}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    :cond_5
    if-eqz p0, :cond_6

    const-string/jumbo v1, "https"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "https"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    :goto_0
    move v7, v1

    :cond_6
    if-eqz p0, :cond_7

    const-string/jumbo v1, "formSubmit"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "formSubmit"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_7
    if-eqz p0, :cond_8

    const-string/jumbo v1, "namespace"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "namespace"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_8
    if-eqz p0, :cond_9

    const-string/jumbo v1, "apiVersion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "apiVersion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_9
    if-eqz p0, :cond_a

    const-string/jumbo v1, "apiName"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "apiName"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_a
    if-eqz p0, :cond_e

    const-string/jumbo v1, "neec"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo v1, "neec"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v1

    :goto_1
    move-object v2, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    :goto_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    :goto_4
    invoke-static {v14}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_c
    new-instance v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    invoke-direct {v14, v13}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;-><init>(Ljava/lang/String;)V

    iput-object v13, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v12, 0x0

    :goto_5
    iput-object v12, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->b:Ljava/lang/String;

    iput-object v10, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->c:Ljava/lang/String;

    iput-object v9, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->d:Ljava/lang/String;

    iput-object v8, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->e:Ljava/lang/String;

    iput-boolean v7, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->f:Z

    iput-boolean v6, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->g:Z

    iput-boolean v5, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->h:Z

    iput-object v4, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->i:Ljava/lang/String;

    iput-object v3, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->j:Ljava/lang/String;

    iput-object v1, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v0, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->l:Lcom/alipay/android/app/json/JSONObject;

    iput-boolean v11, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->m:Z

    iput-object v2, v14, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->n:Ljava/lang/String;

    move-object v1, v14

    goto :goto_3

    :cond_d
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :catch_1
    move-exception v1

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    goto :goto_4

    :catch_2
    move-exception v1

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    goto :goto_4

    :catch_3
    move-exception v1

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    goto :goto_4

    :catch_4
    move-exception v1

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    goto :goto_4

    :catch_5
    move-exception v1

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    goto/16 :goto_4

    :cond_e
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public static a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;
    .locals 2

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    const-string/jumbo v0, "name"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "name"

    invoke-virtual {v1, v0, p0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->m:Z

    return v0
.end method

.method public final b()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->l:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->f:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->g:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->h:Z

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->n:Ljava/lang/String;

    return-object v0
.end method
