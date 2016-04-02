.class public abstract Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;
.implements Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/android/app/sys/IDispose;",
        "Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;"
    }
.end annotation


# static fields
.field private static final L:Ljava/util/regex/Pattern;

.field protected static t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected A:Ljava/lang/String;

.field protected B:Z

.field protected C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

.field protected final D:Ljava/lang/String;

.field protected final E:Ljava/lang/String;

.field protected final F:Ljava/lang/String;

.field protected final G:Ljava/lang/String;

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

.field private g:Ljava/lang/String;

.field private h:[F

.field private i:[F

.field private j:Z

.field protected k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

.field protected l:Z

.field protected m:Z

.field protected n:Lcom/alipay/android/app/json/JSONObject;

.field protected o:F

.field protected p:I

.field protected q:I

.field protected r:Z

.field protected s:Z

.field protected u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

.field protected v:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/String;

.field protected y:Ljava/lang/String;

.field protected z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->t:Ljava/util/Map;

    const-string/jumbo v0, "(\\{\\{(.+?)\\}\\})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->L:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->l:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->m:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->e:Z

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->n:Lcom/alipay/android/app/json/JSONObject;

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->f:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->o:F

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->r:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->s:Z

    const-string/jumbo v0, "onclick"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->D:Ljava/lang/String;

    const-string/jumbo v0, "onchange"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->E:Ljava/lang/String;

    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->F:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->G:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->B:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v3, "\\."

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x1

    if-ne v5, v3, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->n:Lcom/alipay/android/app/json/JSONObject;

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->n:Lcom/alipay/android/app/json/JSONObject;

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->t:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->n:Lcom/alipay/android/app/json/JSONObject;

    move v8, v0

    move-object v0, v3

    move v3, v8

    :goto_1
    add-int/lit8 v6, v5, -0x1

    if-ge v3, v6, :cond_4

    aget-object v6, v4, v3

    instance-of v7, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v7, :cond_2

    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_2
    if-eqz v0, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    instance-of v7, v0, Lcom/alipay/android/app/json/JSONArray;

    if-eqz v7, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    check-cast v0, Lcom/alipay/android/app/json/JSONArray;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    add-int/lit8 v3, v5, -0x1

    aget-object v3, v4, v3

    instance-of v4, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v4, :cond_6

    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move-object v0, v2

    goto :goto_3
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->f:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    return-object v0
.end method


# virtual methods
.method public final A()Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    return-object v0
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a:Z

    return v0
.end method

.method public final C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->c:Z

    return v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final F()Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->v:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    return-object v0
.end method

.method public G()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public final H()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "hidden"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "collapse"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final I()I
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public final J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->z:Ljava/lang/String;

    return-object v0
.end method

.method protected L()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->v:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v1, :cond_0

    :cond_2
    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/c;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 9

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->s:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    add-float v4, v0, v1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    add-float v5, v0, v1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    if-nez v0, :cond_a

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v2

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v1

    :cond_0
    :goto_0
    const/4 v6, 0x1

    aget v6, v0, v6

    const/4 v7, 0x3

    aget v7, v0, v7

    add-float/2addr v6, v7

    const/4 v7, 0x0

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v0, v0, v8

    add-float/2addr v0, v7

    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    const-string/jumbo v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-gtz v2, :cond_1

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v2

    :cond_1
    int-to-float v2, v2

    sub-float/2addr v2, v6

    float-to-int v2, v2

    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    invoke-static {v7, p1, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v4

    float-to-int v7, v7

    iput v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    :cond_2
    :goto_1
    iget v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    int-to-float v2, v2

    sub-float/2addr v2, v6

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    :cond_3
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    const-string/jumbo v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-gtz v1, :cond_4

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v1

    :cond_4
    int-to-float v1, v1

    sub-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    :cond_5
    :goto_2
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    int-to-float v1, v1

    sub-float v0, v1, v0

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    :cond_6
    if-eqz v3, :cond_7

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->H:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    float-to-int v4, v4

    instance-of v5, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_14

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_4
    return-void

    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    iget v2, v1, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->r()I

    move-result v1

    const/4 v6, -0x2

    if-ne v2, v6, :cond_b

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v2

    :cond_b
    const/4 v6, -0x2

    if-ne v1, v6, :cond_0

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v1

    goto/16 :goto_0

    :cond_c
    const/4 v7, -0x2

    if-eq v2, v7, :cond_2

    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    invoke-static {v7, p1, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v7

    iput v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    goto/16 :goto_1

    :cond_d
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    const-string/jumbo v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    const-string/jumbo v4, "\\*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v4, v2

    const/4 v6, 0x1

    if-le v4, v6, :cond_5

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v2, v6

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    invoke-static {v2, p1, v4}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    goto/16 :goto_2

    :cond_e
    const/4 v2, -0x2

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    invoke-static {v2, p1, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    goto/16 :goto_2

    :cond_f
    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->r:Z

    if-eqz v0, :cond_12

    if-eqz p3, :cond_11

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v0

    :goto_5
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    :goto_6
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_10
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    const-string/jumbo v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    invoke-static {v0, p1, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    goto/16 :goto_3

    :cond_11
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    goto :goto_5

    :cond_12
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    invoke-static {v0, p1, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;[F)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_3

    :cond_14
    instance-of v5, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v5, :cond_15

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_15
    instance-of v5, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v5, :cond_9

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->f:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/b;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, -0x2

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->e:Z

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    iput-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j:Z

    iput-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->H:Z

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->s:Z

    if-eqz v0, :cond_13

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    :goto_1
    if-eqz p1, :cond_0

    const-string/jumbo v0, "padding"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "padding"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j:Z

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->i:[F

    :cond_2
    const-string/jumbo v0, "margin"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "margin"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->H:Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->e(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->h:[F

    :cond_3
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I:Ljava/lang/String;

    :cond_4
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J:Ljava/lang/String;

    :cond_5
    const-string/jumbo v0, "style"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "style"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cell"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a:Z

    :cond_6
    const-string/jumbo v0, "align"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "align"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "float"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "screen_bottom"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "screen_bottom_center"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->c:Z

    :cond_8
    const-string/jumbo v0, "vertical-align"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "vertical-align"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->d:Ljava/lang/String;

    :cond_9
    const-string/jumbo v0, "_class"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "_class"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->x:Ljava/lang/String;

    :cond_a
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->y:Ljava/lang/String;

    :cond_b
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->z:Ljava/lang/String;

    :cond_c
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->A:Ljava/lang/String;

    :cond_d
    const-string/jumbo v0, "disable"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "disable"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->B:Z

    :cond_e
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "action"

    invoke-static {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->v:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    :cond_f
    const-string/jumbo v0, "onclick"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "onclick"

    invoke-static {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    :cond_10
    const-string/jumbo v0, "visibility"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "visibility"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    :goto_2
    const-string/jumbo v0, "onlongPress"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "onlongPress"

    invoke-static {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->f:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    :cond_11
    const-string/jumbo v0, "needscale"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "needscale"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->l:Z

    :cond_12
    const-string/jumbo v0, "alpha"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "alpha"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->o:F

    goto/16 :goto_0

    :cond_13
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->r:Z

    if-nez v0, :cond_14

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    goto/16 :goto_1

    :cond_14
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v0, "visible"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    return-void
.end method

.method protected final a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    invoke-direct {v1, p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-interface {v0, p1, v1}, Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V
    .locals 3

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract a()Z
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "_class"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->x:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->y:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->z:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "display"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I()I

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "disable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->G()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "visibility"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->I()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    const-string/jumbo v0, "hidden"

    goto :goto_0

    :cond_8
    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    const-string/jumbo v0, "collapse"

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "visible"

    goto :goto_0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "_class"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->x:Ljava/lang/String;

    :goto_0
    return v2

    :cond_0
    const-string/jumbo v0, "type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->y:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->z:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "display"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "false"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v0, "false"

    :goto_1
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->A:Ljava/lang/String;

    if-nez v3, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "true"

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "disable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->B:Z

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->B:Z

    if-nez v0, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->d(Z)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "visibility"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move v2, v1

    goto :goto_0
.end method

.method public abstract b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Z)TT;"
        }
    .end annotation
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->n:Lcom/alipay/android/app/json/JSONObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "{{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "}}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_1
    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->L:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string/jumbo v0, ""

    move v1, v2

    :cond_4
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "|"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-direct {p0, v6, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->t:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto/16 :goto_0
.end method

.method public final b(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->n:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method

.method public final b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->s:Z

    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c()Lcom/alipay/android/app/json/JSONObject;
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "hidden"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(I)V

    return-void

    :cond_0
    const-string/jumbo v0, "collapse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->m:Z

    return-void
.end method

.method public d(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public event(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->j()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v3, "onclick"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/d;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/d;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;Lorg/luaj/vm2/LuaValue;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public abstract j()Landroid/view/View;
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->q:I

    return v0
.end method

.method public final y()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    return-void
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->p:I

    return v0
.end method
