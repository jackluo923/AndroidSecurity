.class public Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
.super Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/alipay/android/app/json/JSONObject;

.field private j:Lcom/alipay/android/app/json/JSONObject;

.field private k:Lcom/alipay/android/app/json/JSONObject;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/view/View;

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->b:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->n:Landroid/view/View;

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->o:I

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->p:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->q:I

    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    const-string/jumbo v2, ""

    const-string/jumbo v4, "resultStatus"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v0, "resultStatus"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v4, "memo"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v1, "memo"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v2, "result"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resultStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "};"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "memo="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "};"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "result="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->p:I

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->n:Landroid/view/View;

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->k:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->m:Ljava/lang/String;

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a:I

    return-void
.end method

.method public final b(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->i:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->l:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->o:I

    return-void
.end method

.method public final c(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->j:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->q:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f:Ljava/lang/String;

    return-void
.end method

.method public final e()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->p:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->k:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final g()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->i:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final h()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->j:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->o:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->n:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    const-string/jumbo v2, "dispose"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resultStatus={"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "memo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "result={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    const-string/jumbo v2, "success=\"true\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    const-string/jumbo v2, "call_back_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    const-string/jumbo v3, "\""

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v1, :cond_2

    if-le v2, v1, :cond_2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";callBackUrl={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "openTime={-1}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public final o()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->n:Landroid/view/View;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c:Z

    return v0
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c:Z

    return-void
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->q:I

    return v0
.end method
