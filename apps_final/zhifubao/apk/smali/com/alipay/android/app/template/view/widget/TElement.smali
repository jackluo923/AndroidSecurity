.class public abstract Lcom/alipay/android/app/template/view/widget/TElement;
.super Ljava/lang/Object;
.source "TElement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/alipay/android/app/template/TScriptable;


# static fields
.field public static final TAG:Ljava/lang/String; = "template-java"

.field private static final a:Ljava/util/regex/Pattern;

.field protected static l:Ljava/util/Map;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field protected e:Ljava/util/Map;

.field protected f:Ljava/util/Map;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

.field protected i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

.field protected j:Z

.field protected k:Lcom/alipay/android/app/template/TemplateWindow;

.field protected m:Ljava/lang/String;

.field protected n:I

.field protected o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "(\\{\\{(.+?)\\}\\})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 68
    sput-object v0, Lcom/alipay/android/app/template/view/widget/TElement;->a:Ljava/util/regex/Pattern;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/view/widget/TElement;->l:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->e:Ljava/util/Map;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->f:Ljava/util/Map;

    .line 54
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->g:Ljava/lang/String;

    .line 76
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->j:Z

    .line 78
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->b:I

    .line 84
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->c:Ljava/lang/String;

    .line 86
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->d:Ljava/lang/String;

    .line 88
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->p:Ljava/lang/String;

    .line 90
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->q:Ljava/lang/String;

    .line 92
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->r:Ljava/lang/String;

    .line 94
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->s:Ljava/lang/String;

    .line 96
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->t:Ljava/lang/String;

    .line 98
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->m:Ljava/lang/String;

    .line 100
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->n:I

    .line 102
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->o:I

    .line 104
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->u:Z

    .line 106
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->v:Z

    .line 108
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->w:Z

    .line 110
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->x:Z

    .line 532
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->y:J

    .line 113
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 114
    iput-object p2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    .line 115
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/android/app/template/TemplateWindow;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/alipay/android/app/template/view/widget/TElement;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 122
    return-void

    .line 116
    :cond_1
    aget-object v3, v1, v0

    .line 117
    invoke-virtual {p0, v3, p0}, Lcom/alipay/android/app/template/view/widget/TElement;->putClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 209
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getVarJson()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    .line 210
    const-string/jumbo v1, ""

    .line 212
    :try_start_0
    const-string/jumbo v3, "\\."

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 213
    array-length v6, v5

    .line 214
    const/4 v3, 0x1

    if-ne v6, v3, :cond_0

    .line 215
    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 254
    :goto_0
    sget-object v1, Lcom/alipay/android/app/template/view/widget/TElement;->l:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-object v0

    .line 220
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move v9, v0

    move-object v0, v4

    move-object v4, v3

    move v3, v9

    .line 221
    :goto_1
    add-int/lit8 v7, v6, -0x1

    if-lt v3, v7, :cond_2

    .line 240
    :cond_1
    if-eqz v0, :cond_6

    .line 241
    add-int/lit8 v3, v6, -0x1

    aget-object v3, v5, v3

    .line 243
    const-class v5, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 244
    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    .line 246
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 247
    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_2
    aget-object v7, v5, v3

    .line 223
    const-class v8, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 224
    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    :cond_3
    :goto_3
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 225
    :cond_4
    const-class v8, Lcom/alipay/android/app/json/JSONArray;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 226
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 227
    check-cast v0, Lcom/alipay/android/app/json/JSONArray;

    .line 228
    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 229
    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v2

    .line 231
    goto :goto_3

    .line 251
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    move-object v0, v1

    goto :goto_0

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->x:Z

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 519
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v2, Lcom/alipay/android/app/template/view/ViewType;->iframe:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v1, v2, :cond_1

    .line 520
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "template_webview"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 523
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 525
    if-lez v1, :cond_0

    .line 526
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method abstract a(Landroid/app/Activity;)V
.end method

.method a(Landroid/app/Activity;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 439
    .line 440
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getVarJson()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v1, Lcom/alipay/android/app/template/view/LayoutType;->NONE:Lcom/alipay/android/app/template/view/LayoutType;

    if-ne v0, v1, :cond_e

    move v0, v3

    .line 489
    :goto_1
    if-nez v0, :cond_11

    .line 490
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->visibleStr:Ljava/lang/String;

    const-string/jumbo v1, "hidden"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 491
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-boolean v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDisabled:Z

    if-eqz v0, :cond_10

    :goto_3
    invoke-virtual {p0, v2}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Z)V

    .line 500
    :goto_4
    return-void

    .line 442
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 443
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 445
    const-string/jumbo v5, "onclick"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 446
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onClickScript:Ljava/lang/String;

    goto :goto_0

    .line 447
    :cond_2
    const-string/jumbo v5, "src"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 448
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    goto :goto_0

    .line 449
    :cond_3
    const-string/jumbo v5, "defaultvalue"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 450
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultValue:Ljava/lang/String;

    goto :goto_0

    .line 451
    :cond_4
    const-string/jumbo v5, "disabled"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 452
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    const-string/jumbo v5, "disabled"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 454
    const-string/jumbo v5, "true"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 453
    :goto_5
    iput-boolean v0, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDisabled:Z

    goto/16 :goto_0

    :cond_5
    move v0, v3

    .line 454
    goto :goto_5

    .line 455
    :cond_6
    const-string/jumbo v5, "onmouseup"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 456
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseUpScript:Ljava/lang/String;

    goto/16 :goto_0

    .line 457
    :cond_7
    const-string/jumbo v5, "onmousedown"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 458
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseDownScript:Ljava/lang/String;

    goto/16 :goto_0

    .line 459
    :cond_8
    const-string/jumbo v5, "onmousemove"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 460
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseMoveScript:Ljava/lang/String;

    goto/16 :goto_0

    .line 461
    :cond_9
    const-string/jumbo v5, "onmouseout"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 462
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOutScript:Ljava/lang/String;

    goto/16 :goto_0

    .line 463
    :cond_a
    const-string/jumbo v5, "onmouseover"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 464
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOverScript:Ljava/lang/String;

    goto/16 :goto_0

    .line 465
    :cond_b
    const-string/jumbo v5, "oninput"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 466
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    goto/16 :goto_0

    .line 467
    :cond_c
    const-string/jumbo v5, "contentMode"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 468
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/TScaleType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/TScaleType;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->scaleType:Lcom/alipay/android/app/template/view/TScaleType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 471
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 475
    :cond_d
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->parseStyle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    :cond_e
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->displayStr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 483
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->displayStr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v3

    .line 485
    goto/16 :goto_1

    .line 493
    :cond_f
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_10
    move v2, v3

    .line 495
    goto/16 :goto_3

    .line 497
    :cond_11
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_12
    move v0, v2

    goto/16 :goto_1
.end method

.method final a(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 783
    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    .line 784
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    .line 785
    sget v2, Lcom/alipay/android/app/template/util/UiUtil;->STATUS_BAR_HEIGHT:I

    .line 784
    sub-int/2addr v0, v2

    .line 786
    if-nez p2, :cond_0

    .line 787
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateWindow;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v2

    .line 788
    if-eqz v2, :cond_0

    .line 789
    int-to-float v0, v0

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->getOffsetHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 796
    :cond_0
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 797
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 795
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 798
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1098
    return-void
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "{{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    const-string/jumbo v0, "}}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 154
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->u:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 155
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v2, p0}, Lcom/alipay/android/app/template/TemplateWindow;->putNeedResetElement(Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 156
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->u:Z

    .line 158
    :cond_0
    return v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a([Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 167
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 171
    invoke-virtual {p0, v3}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected a_()Z
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public appendChild(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 2

    .prologue
    .line 682
    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 683
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/template/TemplateWindow;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 684
    check-cast p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    .line 685
    invoke-virtual {p1, p0}, Lcom/alipay/android/app/template/view/widget/TElement;->setElementParent(Lcom/alipay/android/app/template/view/widget/TBaseComponent;)V

    .line 686
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->extendParentProperty(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 687
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->addChild(Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 688
    return-void
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getVarJson()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-object p1

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getVarJson()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    .line 268
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TElement;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TElement;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    goto :goto_0

    .line 272
    :cond_2
    const-string/jumbo v0, ""

    .line 273
    invoke-static {}, Lcom/alipay/android/app/template/markup/MarkFactory;->getInstanceSimpleMark()Lcom/alipay/android/app/template/markup/Mark;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/template/markup/Mark;->isInited()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    invoke-static {}, Lcom/alipay/android/app/template/markup/MarkFactory;->getInstanceSimpleMark()Lcom/alipay/android/app/template/markup/Mark;

    move-result-object v0

    .line 275
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->getFastJsonObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/app/template/markup/Mark;->up(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 297
    :cond_3
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TElement;->l:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v2

    .line 298
    goto :goto_0

    .line 277
    :cond_4
    sget-object v2, Lcom/alipay/android/app/template/view/widget/TElement;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    move-object v2, v0

    move v0, v1

    .line 279
    :cond_5
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 280
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 281
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    .line 285
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 286
    const-string/jumbo v7, "|"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 287
    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    .line 288
    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 290
    :cond_6
    invoke-direct {p0, v5, v3}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public blur()V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->t:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 646
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->clearFocus()V

    .line 648
    :cond_0
    return-void
.end method

.method public clearClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->e:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/alipay/android/app/template/TemplateDocument;->updateClass(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;Z)V

    .line 202
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/TemplateWindow;->clearClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 203
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->clearClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 206
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 652
    return-void
.end method

.method public clearVarMap()V
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TElement;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 261
    return-void
.end method

.method public closest(Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1029
    const/4 v2, 0x0

    .line 1030
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1031
    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1033
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1034
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getParentElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 1035
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    .line 1069
    :cond_0
    :goto_1
    return-object v0

    .line 1036
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1040
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getParentElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    goto :goto_0

    .line 1044
    :cond_2
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1046
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1047
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getParentElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v3

    .line 1048
    :goto_2
    if-nez v3, :cond_3

    move-object v0, v2

    goto :goto_1

    .line 1049
    :cond_3
    invoke-virtual {v3}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v0

    iget-object v6, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    if-eqz v6, :cond_4

    move v0, v1

    :goto_3
    array-length v7, v6

    if-lt v0, v7, :cond_5

    :cond_4
    move v0, v1

    :goto_4
    if-eqz v0, :cond_7

    move-object v0, v3

    .line 1051
    goto :goto_1

    .line 1049
    :cond_5
    aget-object v7, v6, v0

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v0, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1053
    :cond_7
    invoke-virtual {v3}, Lcom/alipay/android/app/template/view/widget/TElement;->getParentElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v3

    goto :goto_2

    .line 1058
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getParentElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 1059
    :goto_5
    if-nez v0, :cond_a

    :cond_9
    move-object v0, v2

    goto :goto_1

    .line 1060
    :cond_a
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->tagName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getParentElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    goto :goto_5
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1315
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_4

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1317
    iput-object v4, p0, Lcom/alipay/android/app/template/view/widget/TElement;->e:Ljava/util/Map;

    .line 1318
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1319
    iput-object v4, p0, Lcom/alipay/android/app/template/view/widget/TElement;->f:Ljava/util/Map;

    .line 1320
    iput-object v4, p0, Lcom/alipay/android/app/template/view/widget/TElement;->g:Ljava/lang/String;

    .line 1321
    iput-object v4, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    .line 1322
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TElement;->l:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1323
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TElement;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1325
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v1, :cond_2

    .line 1326
    iput-object v4, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    .line 1328
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->w:Z

    .line 1329
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v0, :cond_3

    .line 1330
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->destroy()V

    .line 1331
    iput-object v4, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 1333
    :cond_3
    return-void

    .line 1315
    :cond_4
    aget-object v3, v1, v0

    invoke-virtual {p0, v3, p0}, Lcom/alipay/android/app/template/view/widget/TElement;->clearClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public extendParentProperty(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 708
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    if-eqz v0, :cond_7

    .line 709
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v2, v2, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    iput v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    if-nez v0, :cond_1

    .line 716
    iget-object v0, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v2, Lcom/alipay/android/app/template/view/LayoutType;->WEBKIT_BOX:Lcom/alipay/android/app/template/view/LayoutType;

    if-eq v0, v2, :cond_1

    .line 718
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    iput-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-nez v0, :cond_2

    .line 722
    iget-object v0, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    iput-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLongClickScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 727
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onClickScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 728
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v2, v2, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLongClickScript:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLongClickScript:Ljava/lang/String;

    .line 731
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    if-gez v0, :cond_4

    .line 732
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v2, v2, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    iput v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    .line 735
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxLines:I

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxLines:I

    if-ne v0, v3, :cond_5

    .line 736
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v2, v2, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxLines:I

    iput v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxLines:I

    .line 739
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v2, Lcom/alipay/android/app/template/view/LayoutType;->WEBKIT_BOX:Lcom/alipay/android/app/template/view/LayoutType;

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->orientation:I

    if-nez v0, :cond_8

    move v0, v1

    .line 741
    :goto_0
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-boolean v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mParentWebkitBox:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    .line 742
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-boolean v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mParentWebkitBox:Z

    .line 746
    :cond_7
    return-void

    .line 739
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fillElementView(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 329
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/android/app/template/TemplateWindow;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 332
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->c()V

    .line 334
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onClickScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLongClickScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->setAlpha(Landroid/view/View;F)V

    .line 343
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseDownScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseMoveScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOutScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOverScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseUpScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 350
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->initBackground(Landroid/app/Activity;)V

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Landroid/app/Activity;Z)V

    .line 353
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onKeyDownScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 354
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 356
    :cond_6
    return-void
.end method

.method public focus()V
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->s:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->requestFocus()V

    .line 637
    :cond_0
    return-void
.end method

.method public getClassName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1173
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    .line 1174
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 1175
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 1179
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1175
    :cond_1
    aget-object v4, v2, v0

    .line 1176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getClientHeight()I
    .locals 3

    .prologue
    .line 997
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v1

    .line 998
    const/4 v0, 0x0

    .line 999
    if-eqz v1, :cond_0

    .line 1000
    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/TElement;->getOffsetHeight()I

    move-result v0

    .line 1002
    :cond_0
    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    sget v2, Lcom/alipay/android/app/template/util/UiUtil;->STATUS_BAR_HEIGHT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v1, v2

    int-to-float v0, v0

    sub-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method public getClientWidth()I
    .locals 2

    .prologue
    .line 993
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-boolean v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDisabled:Z

    return v0
.end method

.method public getElementById(Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->f:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->getElementById(Ljava/util/Map;Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    return-object v0
.end method

.method public getElementType()Lcom/alipay/android/app/template/view/ViewType;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    return-object v0
.end method

.method public getElementView()Landroid/view/View;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    return-object v0
.end method

.method public getElementsByClassName(Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->e:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->getElementsByClassName(Ljava/util/Map;Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 2

    .prologue
    .line 179
    invoke-static {p0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->getElementsByTagName(Lcom/alipay/android/app/template/view/widget/TElement;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/template/view/widget/TElement;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJsObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1269
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetHeight()I
    .locals 2

    .prologue
    .line 1243
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->o:I

    if-gez v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1245
    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->o:I

    .line 1249
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->o:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1250
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1251
    if-gez v0, :cond_1

    .line 1252
    const/16 v0, 0x10

    .line 1254
    :cond_1
    add-int/lit8 v0, v0, 0x4

    .line 1258
    :goto_0
    return v0

    :cond_2
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->o:I

    goto :goto_0
.end method

.method public getOffsetWidth()I
    .locals 2

    .prologue
    .line 1233
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->n:I

    if-gez v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 1235
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->measureBody(Landroid/view/View;)V

    .line 1236
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1237
    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->n:I

    .line 1239
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->n:I

    return v0
.end method

.method public getOnblur()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getOnfocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getParentElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    return-object v0
.end method

.method public getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    return-object v0
.end method

.method public getScriptConfigJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 846
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 847
    sget-object v0, Lcom/alipay/android/app/template/TScriptConfigHelper;->sConfigsGroupByClass:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    sget-object v0, Lcom/alipay/android/app/template/TScriptConfigHelper;->sConfigsGroupByClass:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 855
    :goto_0
    return-object v0

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getJsObjName()Ljava/lang/String;

    move-result-object v0

    .line 851
    invoke-static {}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getInstance()Lcom/alipay/android/app/template/TScriptConfigHelper;

    move-result-object v2

    .line 852
    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 853
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getScriptJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    sget-object v2, Lcom/alipay/android/app/template/TScriptConfigHelper;->sConfigsGroupByClass:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/ViewType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getViewId()I
    .locals 2

    .prologue
    .line 585
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 586
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->b:I

    .line 588
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getWindow()Lcom/alipay/android/app/template/TemplateWindow;
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    return-object v0
.end method

.method public getWindowHashCode()I
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public initBackground(Landroid/app/Activity;)V
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 360
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v2, Lcom/alipay/android/app/template/view/ViewType;->payword:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v2, :cond_3

    .line 361
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    aget-object v0, v0, v6

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    aget-object v0, v0, v4

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    aget-object v1, v1, v5

    .line 363
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 364
    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v7, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v8, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->blurRadius:I

    move-object v5, p1

    .line 362
    invoke-static/range {v0 .. v8}, Lcom/alipay/android/app/template/util/UiUtil;->loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;I)V

    .line 408
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->backgroundWSize:I

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v0, v2, :cond_a

    .line 368
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v0

    .line 369
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->backgroundWSize:I

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v0

    float-to-int v0, v0

    .line 373
    :goto_1
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->backgroundHSize:I

    sget v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v2, v3, :cond_1

    .line 374
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    invoke-static {v1}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v1

    .line 375
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->backgroundHSize:I

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v1

    float-to-int v1, v1

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    .line 378
    invoke-static {p1, v2, v0, v1, v3}, Lcom/alipay/android/app/template/util/UiUtil;->genButtonSelector(Landroid/content/Context;Lcom/alipay/android/app/template/view/ViewType;II[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    .line 380
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderRadius:I

    if-gtz v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 390
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 392
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v3, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    .line 393
    if-eqz v3, :cond_5

    .line 394
    aget-object v0, v3, v5

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 395
    aget-object v0, v3, v6

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 396
    aget-object v0, v3, v4

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 398
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v4, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 400
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    aget v0, v0, v5

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v5

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v5, v0, :cond_7

    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :cond_6
    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    :goto_2
    int-to-float v0, v0

    .line 401
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderRadius:I

    int-to-float v1, v1

    .line 402
    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v5, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    .line 399
    invoke-static {v0, v2, v1, v3, v5}, Lcom/alipay/android/app/template/util/UiUtil;->generateBackGroundDrawable(FIF[Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 398
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 400
    :cond_7
    if-nez v5, :cond_9

    int-to-float v0, v1

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    .line 404
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->a()V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method public initView(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Landroid/app/Activity;)V

    .line 511
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 512
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/template/view/ViewType;->dragList:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v1, v2, :cond_1

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    :cond_1
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 1336
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->w:Z

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 1279
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->v:Z

    return v0
.end method

.method public measureBody(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Landroid/view/View;Z)V

    .line 780
    return-void
.end method

.method public offsetTop()I
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 985
    new-array v0, v2, [I

    .line 986
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 987
    new-array v1, v2, [I

    .line 988
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v2, v2, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 989
    aget v0, v0, v3

    aget v1, v1, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->onClick(Landroid/view/View;)V

    .line 759
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 767
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getGlobalClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->x:Z

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TemplateWindow;->setGlobalClick(Z)V

    .line 774
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/Tracker;->recordClick(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getEvent()Lcom/alipay/android/app/template/TemplateWindowEvent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/TemplateWindowEvent;->setCurrentTarget(Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 776
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onClickScript:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->onClick(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onClickCallback(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1306
    const/4 v0, 0x1

    return v0
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 1312
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1288
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateWindow;->getGlobalClick()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1301
    :goto_0
    return v0

    .line 1291
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/template/TemplateWindow;->setGlobalClick(Z)V

    .line 1292
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateWindow;->getEvent()Lcom/alipay/android/app/template/TemplateWindowEvent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1293
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateWindow;->getEvent()Lcom/alipay/android/app/template/TemplateWindowEvent;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alipay/android/app/template/TemplateWindowEvent;->setKeycode(I)V

    .line 1295
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v3}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/app/template/TemplateWindow;->hiddenKeyboardService(Landroid/view/View;Z)Z

    .line 1296
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onKeyDownScript:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1297
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onKeyDownScript:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/app/template/ScriptPropertyType;->onkeydown:Lcom/alipay/android/app/template/ScriptPropertyType;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->executePropertyScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    move-result v0

    goto :goto_0

    .line 1298
    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1299
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TElement;->m:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/template/TemplateWindow;->getEvent()Lcom/alipay/android/app/template/TemplateWindowEvent;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1301
    goto :goto_0
.end method

.method public onLoad()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 801
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_3

    .line 803
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    if-gez v0, :cond_0

    .line 804
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "UiUtil\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_1

    .line 809
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 810
    invoke-virtual {p0, v0, v3}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Landroid/view/View;Z)V

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->measureBody(Landroid/view/View;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getVarJson()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 815
    if-eqz v1, :cond_2

    .line 816
    const-string/jumbo v2, "var flybird = flybird || {}; flybird.rpcData ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :cond_2
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getConsole()Lcom/alipay/android/app/template/TemplateConsole;

    move-result-object v1

    .line 822
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 821
    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/TemplateConsole;->getConsoleScriptStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getPageScriptStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLoadScript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 830
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alipay/android/app/template/ScriptPropertyType;->onload:Lcom/alipay/android/app/template/ScriptPropertyType;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/template/TemplateWindow;->executePropertyScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    .line 831
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/template/TemplateWindow;->setIsExecutedOnload(Z)V

    .line 834
    :cond_3
    return-void
.end method

.method public onLongClick()V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->onLongClick(Landroid/view/View;)Z

    .line 763
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 750
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 751
    const/4 v0, 0x0

    .line 754
    :goto_0
    return v0

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/Tracker;->recordLongClick(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLongClickScript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TemplateWindow;->onClick(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 536
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    if-nez v2, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v1

    .line 539
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 542
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 544
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateWindow;->getEvent()Lcom/alipay/android/app/template/TemplateWindowEvent;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sget v6, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/alipay/android/app/template/TemplateWindowEvent;->setX(F)V

    .line 545
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateWindow;->getEvent()Lcom/alipay/android/app/template/TemplateWindowEvent;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sget v6, Lcom/alipay/android/app/template/util/UiUtil;->STATUS_BAR_HEIGHT:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget v6, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v6}, Lcom/alipay/android/app/template/TemplateWindow;->getNavHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/alipay/android/app/template/TemplateWindowEvent;->setY(F)V

    .line 546
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 548
    if-eqz v2, :cond_3

    .line 549
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_3
    move v0, v1

    .line 579
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getConsole()Lcom/alipay/android/app/template/TemplateConsole;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "event type "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " current Y "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "onTouch time "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/TemplateConsole;->error(Ljava/lang/String;)V

    move v1, v0

    .line 581
    goto/16 :goto_0

    .line 551
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getEvent()Lcom/alipay/android/app/template/TemplateWindowEvent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/TemplateWindowEvent;->setCurrentTarget(Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 552
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseDownScript:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->d:Ljava/lang/String;

    sget-object v5, Lcom/alipay/android/app/template/ScriptPropertyType;->onmousedown:Lcom/alipay/android/app/template/ScriptPropertyType;

    invoke-virtual {v0, v1, v2, v5}, Lcom/alipay/android/app/template/TemplateWindow;->onTouch(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    move-result v2

    .line 553
    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->y:J

    move v0, v2

    .line 555
    goto :goto_1

    .line 553
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 557
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseMoveScript:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TElement;->p:Ljava/lang/String;

    sget-object v6, Lcom/alipay/android/app/template/ScriptPropertyType;->onmousemove:Lcom/alipay/android/app/template/ScriptPropertyType;

    invoke-virtual {v1, v2, v5, v6}, Lcom/alipay/android/app/template/TemplateWindow;->onTouch(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    goto :goto_1

    .line 563
    :pswitch_2
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseUpScript:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TElement;->q:Ljava/lang/String;

    sget-object v6, Lcom/alipay/android/app/template/ScriptPropertyType;->onmouseup:Lcom/alipay/android/app/template/ScriptPropertyType;

    invoke-virtual {v1, v2, v5, v6}, Lcom/alipay/android/app/template/TemplateWindow;->onTouch(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    move-result v1

    .line 564
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateWindow;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v2

    .line 565
    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->isFullscreen()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getScrollView()Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 566
    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getScrollView()Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->setScrollable(Z)V

    .line 569
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/alipay/android/app/template/view/widget/TElement;->y:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1f4

    cmp-long v0, v5, v7

    if-gez v0, :cond_6

    .line 570
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move v0, v1

    .line 573
    goto/16 :goto_1

    .line 575
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOutScript:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->r:Ljava/lang/String;

    sget-object v5, Lcom/alipay/android/app/template/ScriptPropertyType;->onmouseout:Lcom/alipay/android/app/template/ScriptPropertyType;

    invoke-virtual {v0, v1, v2, v5}, Lcom/alipay/android/app/template/TemplateWindow;->onTouch(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    move-result v0

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_1

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public putClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->e:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/alipay/android/app/template/TemplateDocument;->updateClass(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;Z)V

    .line 185
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/TemplateWindow;->putClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 186
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->putClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 189
    :cond_0
    return-void
.end method

.method public putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->f:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcom/alipay/android/app/template/TemplateDocument;->putElement(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 141
    :cond_0
    return-void
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 862
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 864
    const-string/jumbo v0, "getProparser"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 865
    const-string/jumbo v1, "style"

    invoke-virtual {p1, p2, v1, v0, v8}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 867
    const-string/jumbo v0, "getOffsetWidth"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 868
    const-string/jumbo v1, "offsetWidth"

    invoke-virtual {p1, p2, v1, v0, v8}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 870
    const-string/jumbo v0, "getOffsetHeight"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 871
    const-string/jumbo v1, "offsetHeight"

    invoke-virtual {p1, p2, v1, v0, v8}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 873
    const-string/jumbo v0, "setType"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 874
    const-string/jumbo v1, "type"

    invoke-virtual {p1, p2, v1, v8, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 876
    const-string/jumbo v0, "getElementById"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 877
    const-string/jumbo v1, "getElementById"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 879
    const-string/jumbo v0, "getElementsByTagName"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 880
    const-string/jumbo v1, "getElementsByTagName"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 882
    const-string/jumbo v0, "getElementsByClassName"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 883
    const-string/jumbo v1, "getElementsByClassName"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 885
    const-string/jumbo v0, "querySelectorAll"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 886
    const-string/jumbo v1, "querySelectorAll"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 888
    const-string/jumbo v0, "querySelector"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 889
    const-string/jumbo v1, "querySelector"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 891
    const-string/jumbo v0, "focus"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 892
    const-string/jumbo v1, "focus"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 894
    const-string/jumbo v0, "blur"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 895
    const-string/jumbo v1, "blur"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 897
    const-string/jumbo v0, "onClick"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 898
    const-string/jumbo v1, "click"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 900
    const-string/jumbo v0, "onLongClick"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 901
    const-string/jumbo v1, "longpress"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 903
    const-string/jumbo v0, "appendChild"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/alipay/android/app/template/view/widget/TElement;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 904
    const-string/jumbo v1, "appendChild"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 906
    const-string/jumbo v0, "removeChild"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/alipay/android/app/template/view/widget/TElement;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 907
    const-string/jumbo v1, "removeChild"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 909
    const-string/jumbo v0, "getClassName"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 910
    const-string/jumbo v1, "setClassName"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v6, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 911
    const-string/jumbo v2, "className"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 913
    const-string/jumbo v0, "setOnclick"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 914
    const-string/jumbo v1, "onclick"

    invoke-virtual {p1, p2, v1, v8, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 916
    const-string/jumbo v0, "getOnfocus"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 917
    const-string/jumbo v1, "setOnfocus"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v6, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 918
    const-string/jumbo v2, "onfocus"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 920
    const-string/jumbo v0, "getOnblur"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 921
    const-string/jumbo v1, "setOnblur"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v6, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 922
    const-string/jumbo v2, "onblur"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 924
    const-string/jumbo v0, "getId"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 925
    const-string/jumbo v1, "setId"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v6, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 926
    const-string/jumbo v2, "id"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 928
    const-string/jumbo v0, "toString"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 929
    const-string/jumbo v1, "toString"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 932
    const-string/jumbo v0, "setHref"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 933
    const-string/jumbo v0, "getHref"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 935
    const-string/jumbo v2, "href"

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 937
    const-string/jumbo v0, "setOnMouseDown"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 938
    const-string/jumbo v1, "onmousedown"

    invoke-virtual {p1, p2, v1, v8, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 940
    const-string/jumbo v0, "setOnMouseMove"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 941
    const-string/jumbo v1, "onmousemove"

    invoke-virtual {p1, p2, v1, v8, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 943
    const-string/jumbo v0, "setOnMouseUp"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 944
    const-string/jumbo v1, "onmouseup"

    invoke-virtual {p1, p2, v1, v8, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 946
    const-string/jumbo v0, "setOnMouseOutside"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 947
    const-string/jumbo v1, "onmouseoutside"

    invoke-virtual {p1, p2, v1, v8, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 949
    const-string/jumbo v0, "getDisabled"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 950
    const-string/jumbo v1, "setDisabled"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v7

    invoke-virtual {v6, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 951
    const-string/jumbo v2, "disabled"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 953
    const-string/jumbo v0, "closest"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 954
    const-string/jumbo v1, "closest"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 956
    const-string/jumbo v0, "getOptionText"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 957
    const-string/jumbo v1, "setText"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v6, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 958
    const-string/jumbo v2, "text"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 960
    const-string/jumbo v0, "setValue"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 961
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getValue"

    new-array v3, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 962
    const-string/jumbo v2, "value"

    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 964
    const-string/jumbo v0, "getTagName"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 965
    const-string/jumbo v1, "tagName"

    invoke-virtual {p1, p2, v1, v0, v8}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 967
    const-string/jumbo v0, "getClientWidth"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 968
    const-string/jumbo v1, "clientWidth"

    invoke-virtual {p1, p2, v1, v0, v8}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 970
    const-string/jumbo v0, "getClientHeight"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 971
    const-string/jumbo v1, "clientHeight"

    invoke-virtual {p1, p2, v1, v0, v8}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 973
    const-string/jumbo v0, "scrollTop"

    new-array v1, v5, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 974
    const-string/jumbo v1, "scrollTop"

    invoke-virtual {p1, p2, v1, v8, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 976
    const-string/jumbo v0, "offsetTop"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 977
    const-string/jumbo v1, "offsetTop"

    invoke-virtual {p1, p2, v1, v0, v8}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 978
    return-void
.end method

.method public querySelector(Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 2

    .prologue
    .line 673
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->querySelectorAll(Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 675
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 677
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public querySelectorAll(Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 655
    if-nez p1, :cond_0

    .line 656
    const/4 v0, 0x0

    .line 668
    :goto_0
    return-object v0

    .line 658
    :cond_0
    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementById(Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v1

    .line 660
    if-nez v1, :cond_1

    .line 661
    new-array v0, v3, [Lcom/alipay/android/app/template/view/widget/TElement;

    goto :goto_0

    .line 663
    :cond_1
    new-array v0, v2, [Lcom/alipay/android/app/template/view/widget/TElement;

    aput-object v1, v0, v3

    goto :goto_0

    .line 665
    :cond_2
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 666
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementsByClassName(Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    goto :goto_0

    .line 668
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementsByTagName(Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    goto :goto_0
.end method

.method public removeChild(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/TemplateDocument;->removeElement(Ljava/util/Map;Ljava/lang/String;)V

    .line 693
    check-cast p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    .line 694
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->removeChild(Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 695
    return-void
.end method

.method public requestFocus()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 641
    return-void
.end method

.method public resetElements(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 837
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getNeedResetElements()Ljava/util/List;

    move-result-object v0

    .line 838
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->requestLayout()V

    .line 842
    return-void

    .line 838
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 839
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public scrollTop(I)V
    .locals 4

    .prologue
    .line 981
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    const/4 v1, 0x0

    int-to-float v2, p1

    sget v3, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 982
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1184
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getStyleSheetMap()Ljava/util/Map;

    move-result-object v3

    .line 1185
    const-string/jumbo v1, ""

    .line 1187
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v4, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    .line 1189
    if-eqz v4, :cond_0

    array-length v2, v4

    if-lez v2, :cond_0

    .line 1190
    array-length v5, v4

    move v2, v0

    :goto_0
    if-lt v2, v5, :cond_2

    .line 1195
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, " +"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1196
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    .line 1197
    array-length v4, v2

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_1
    if-lt v1, v4, :cond_3

    .line 1203
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->parseStyle(Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->initLayoutType(Lcom/alipay/android/app/template/view/ViewType;)V

    .line 1205
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    .line 1206
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1208
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->fillElementView(Landroid/app/Activity;)V

    .line 1212
    :cond_1
    return-void

    .line 1190
    :cond_2
    aget-object v6, v4, v2

    .line 1191
    invoke-virtual {p0, v6, p0}, Lcom/alipay/android/app/template/view/widget/TElement;->clearClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 1190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1197
    :cond_3
    aget-object v5, v2, v1

    .line 1198
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1201
    :cond_4
    invoke-virtual {p0, v5, p0}, Lcom/alipay/android/app/template/view/widget/TElement;->putClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 1197
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setDisabled(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1089
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDisabled:Z

    .line 1090
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Z)V

    .line 1092
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1094
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1091
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1092
    goto :goto_1
.end method

.method public setElementParent(Lcom/alipay/android/app/template/view/widget/TBaseComponent;)V
    .locals 5

    .prologue
    .line 608
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    if-eqz v0, :cond_0

    .line 609
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "element parent has been set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    .line 613
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_2

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 622
    return-void

    .line 614
    :cond_2
    aget-object v3, v1, v0

    .line 615
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    invoke-virtual {v4, v3, p0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->putClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 619
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TElement;->i:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 620
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/template/TemplateWindow;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    goto :goto_1
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->href:Ljava/lang/String;

    .line 601
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    .line 1143
    invoke-virtual {p0, p1, p0}, Lcom/alipay/android/app/template/view/widget/TElement;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 1144
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0, p1, p0}, Lcom/alipay/android/app/template/TemplateWindow;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 1145
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1147
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->c()V

    .line 1149
    :cond_0
    return-void
.end method

.method public setIsFullscreen(Z)V
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_0

    .line 1274
    iput-boolean p1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->v:Z

    .line 1276
    :cond_0
    return-void
.end method

.method public setLocalClickFlag(Z)V
    .locals 4

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->x:Z

    .line 126
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TElement$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/TElement$1;-><init>(Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 132
    const-wide/16 v2, 0xbb8

    .line 127
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    :cond_0
    return-void
.end method

.method public setNeedMarkUp()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/TemplateWindow;->putNeedResetElement(Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->u:Z

    .line 164
    return-void
.end method

.method public setOnMouseDown(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->d:Ljava/lang/String;

    .line 1107
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1108
    return-void
.end method

.method public setOnMouseMove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->p:Ljava/lang/String;

    .line 1112
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1113
    return-void
.end method

.method public setOnMouseOutside(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->r:Ljava/lang/String;

    .line 1122
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1123
    return-void
.end method

.method public setOnMouseUp(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->q:Ljava/lang/String;

    .line 1117
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1118
    return-void
.end method

.method public setOnTemplateClickListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)V
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateWindow;->setListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)V

    .line 1265
    :cond_0
    return-void
.end method

.method public setOnblur(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->t:Ljava/lang/String;

    .line 1165
    return-void
.end method

.method public setOnclick(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->c:Ljava/lang/String;

    .line 1153
    return-void
.end method

.method public setOnfocus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->s:Ljava/lang/String;

    .line 1157
    return-void
.end method

.method public setOnkeyDown(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->m:Ljava/lang/String;

    .line 1102
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1103
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    .line 1021
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1219
    invoke-static {p1}, Lcom/alipay/android/app/template/view/ViewType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v1

    iput-object v0, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1220
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1010
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->value:Ljava/lang/String;

    .line 1013
    :cond_0
    return-void
.end method

.method public setVarJson(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateWindow;->setVarJson(Lcom/alipay/android/app/json/JSONObject;)V

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "classes : "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 1133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "; id = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1129
    :cond_1
    aget-object v4, v2, v0

    .line 1130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " ,"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
