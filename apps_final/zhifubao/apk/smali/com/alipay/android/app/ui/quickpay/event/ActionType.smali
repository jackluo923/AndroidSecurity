.class public Lcom/alipay/android/app/ui/quickpay/event/ActionType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;
    }
.end annotation


# instance fields
.field public a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/android/app/json/JSONObject;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/alipay/android/app/json/JSONObject;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    return-void
.end method

.method public static a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;
    .locals 13

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_0
    if-nez v5, :cond_1

    new-array v0, v4, [Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    aget-object v1, v0, v2

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Submit:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    iput-object v2, v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    array-length v0, v5

    new-array v0, v0, [Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    array-length v6, v5

    move v3, v2

    move v4, v2

    :goto_2
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    new-instance v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Submit:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v8, v1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->values()[Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    move-result-object v9

    array-length v10, v9

    move v1, v2

    :goto_3
    if-ge v1, v10, :cond_2

    aget-object v11, v9, v1

    invoke-static {v11}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->a(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    iput-object v11, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    :cond_2
    iput-object v7, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->i()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->d:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->l()Z

    move-result v1

    iput-boolean v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->h:Z

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->m()Z

    move-result v1

    iput-boolean v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->i:Z

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->n()Z

    move-result v1

    iput-boolean v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->j:Z

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->b()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->n:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a()Z

    move-result v1

    iput-boolean v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->o:Z

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->p:Ljava/lang/String;

    aput-object v8, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-array v0, v4, [Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    aget-object v1, v0, v2

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Submit:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    iput-object v2, v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    goto/16 :goto_1

    :cond_5
    move-object v5, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->n:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->n:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->d:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->h:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->i:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->j:Z

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->q:Z

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->q:Z

    return v0
.end method
