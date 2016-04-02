.class public Lcom/alipay/android/app/template/TemplateWindow;
.super Ljava/lang/Object;
.source "TemplateWindow.java"

# interfaces
.implements Lcom/alipay/android/app/template/TScriptable;


# static fields
.field private static o:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/android/app/json/JSONObject;

.field private c:Lcom/alipay/android/app/template/TemplateDocument;

.field private d:Lcom/alipay/android/app/template/TemplateConsole;

.field private duktapeCtx:J

.field private e:Lcom/alipay/android/app/template/TemplateWindowNavigator;

.field private f:Lcom/alipay/android/app/template/TemplateWindowEvent;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/List;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/util/List;

.field private m:Landroid/app/Activity;

.field private n:Z

.field private final p:Ljava/util/List;

.field private final q:Ljava/util/List;

.field private r:Z

.field private s:Lcom/alipay/android/app/template/TemplateKeyboardService;

.field private t:Lcom/alipay/android/app/template/TemplateKeyboardService;

.field private u:Lcom/alipay/android/app/template/TemplatePasswordService;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Landroid/widget/LinearLayout;

.field private y:Ljava/lang/Runnable;

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/template/TemplateWindow;->o:Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->checkSoCopy()V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->a:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/alipay/android/app/template/TemplateWindow;->g:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->h:Ljava/util/List;

    .line 52
    iput-boolean v3, p0, Lcom/alipay/android/app/template/TemplateWindow;->i:Z

    .line 54
    iput-boolean v3, p0, Lcom/alipay/android/app/template/TemplateWindow;->j:Z

    .line 56
    iput-boolean v3, p0, Lcom/alipay/android/app/template/TemplateWindow;->k:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->l:Ljava/util/List;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->duktapeCtx:J

    .line 64
    iput-object v2, p0, Lcom/alipay/android/app/template/TemplateWindow;->m:Landroid/app/Activity;

    .line 66
    iput-boolean v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->n:Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->p:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->q:Ljava/util/List;

    .line 72
    iput-boolean v3, p0, Lcom/alipay/android/app/template/TemplateWindow;->r:Z

    .line 74
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->genDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->s:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 76
    iput-object v2, p0, Lcom/alipay/android/app/template/TemplateWindow;->t:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 78
    iput-object v2, p0, Lcom/alipay/android/app/template/TemplateWindow;->u:Lcom/alipay/android/app/template/TemplatePasswordService;

    .line 80
    iput-boolean v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->v:Z

    .line 82
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->w:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/alipay/android/app/template/TemplateWindow;->x:Landroid/widget/LinearLayout;

    .line 86
    new-instance v0, Lcom/alipay/android/app/template/TemplateWindow$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/TemplateWindow$1;-><init>(Lcom/alipay/android/app/template/TemplateWindow;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->y:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Lcom/alipay/android/app/template/TemplateWindow$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/template/TemplateWindow$2;-><init>(Lcom/alipay/android/app/template/TemplateWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->z:Landroid/os/Handler;

    .line 123
    new-instance v0, Lcom/alipay/android/app/template/TemplateDocument;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/TemplateDocument;-><init>(Lcom/alipay/android/app/template/TemplateWindow;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    .line 124
    new-instance v0, Lcom/alipay/android/app/template/TemplateWindowNavigator;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/TemplateWindowNavigator;-><init>(Lcom/alipay/android/app/template/TemplateWindow;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->e:Lcom/alipay/android/app/template/TemplateWindowNavigator;

    .line 125
    new-instance v0, Lcom/alipay/android/app/template/TemplateWindowEvent;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/TemplateWindowEvent;-><init>(Lcom/alipay/android/app/template/TemplateWindow;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->f:Lcom/alipay/android/app/template/TemplateWindowEvent;

    .line 126
    new-instance v0, Lcom/alipay/android/app/template/TemplateConsole;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/TemplateConsole;-><init>(Lcom/alipay/android/app/template/TemplateWindow;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->d:Lcom/alipay/android/app/template/TemplateConsole;

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateWindow;Lcom/alipay/android/app/template/TemplateWindow;)I
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/TemplateWindow;->releaseDuktapeContext(Lcom/alipay/android/app/template/TemplateWindow;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateWindow;Ljava/lang/String;[Ljava/lang/Object;Lcom/alipay/android/app/template/TemplateWindow;)I
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;Lcom/alipay/android/app/template/TemplateWindow;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateWindow;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateWindow;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v1

    .line 589
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->inflateChildren(Landroid/app/Activity;)V

    .line 590
    if-eqz v1, :cond_0

    .line 591
    invoke-virtual {v1, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->inflateChildren(Landroid/app/Activity;)V

    .line 593
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateWindow;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/TemplateWindow;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/template/TemplateWindow;)Ljava/util/List;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->q:Ljava/util/List;

    return-object v0
.end method

.method private native bindObjectsToJS(Lcom/alipay/android/app/template/TemplateWindow;Lcom/alipay/android/app/template/TemplateDocument;Lcom/alipay/android/app/template/TemplateAnt;Lcom/alipay/android/app/template/TemplateConsole;Lcom/alipay/android/app/template/TemplateWindowNavigator;Lcom/alipay/android/app/template/TemplateWindowEvent;)J
.end method

.method static synthetic c(Lcom/alipay/android/app/template/TemplateWindow;)Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->p:Ljava/util/List;

    return-object v0
.end method

.method private native callJsMethod(Ljava/lang/String;[Ljava/lang/Object;Lcom/alipay/android/app/template/TemplateWindow;)I
.end method

.method static synthetic d(Lcom/alipay/android/app/template/TemplateWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->z:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/template/TemplateWindow;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->k:Z

    return v0
.end method

.method private native executeScript(Lcom/alipay/android/app/template/TemplateWindow;Ljava/lang/String;Z)Lcom/alipay/android/app/template/TNativeResult;
.end method

.method static synthetic f(Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->duktapeCtx:J

    return-void
.end method

.method static synthetic g(Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->r:Z

    return-void
.end method

.method private native releaseDuktapeContext(Lcom/alipay/android/app/template/TemplateWindow;)I
.end method


# virtual methods
.method public callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/alipay/android/app/template/TemplateWindow;->duktapeCtx:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 434
    :cond_1
    :goto_0
    return v0

    .line 414
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 415
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow;->z:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/android/app/template/TemplateWindow$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/android/app/template/TemplateWindow$3;-><init>(Lcom/alipay/android/app/template/TemplateWindow;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 427
    :cond_3
    invoke-direct {p0, p1, p2, p0}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;Lcom/alipay/android/app/template/TemplateWindow;)I

    move-result v2

    .line 428
    iget-boolean v3, p0, Lcom/alipay/android/app/template/TemplateWindow;->k:Z

    if-nez v3, :cond_4

    .line 429
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->requestLayout()V

    .line 432
    :cond_4
    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public callOnreload(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p1, "{}"

    .line 381
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateDocument;->getAnt()Lcom/alipay/android/app/template/TemplateAnt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateAnt;->getOnreload()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 386
    :goto_0
    return v0

    .line 383
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/TemplateDocument;->clearClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 271
    return-void
.end method

.method public clearInterval(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 439
    return-void
.end method

.method public native clearJniContext()V
.end method

.method public clearTimeout(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    return-void
.end method

.method public clearWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 445
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->x:Landroid/widget/LinearLayout;

    .line 446
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->t:Lcom/alipay/android/app/template/TemplateKeyboardService;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->t:Lcom/alipay/android/app/template/TemplateKeyboardService;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->destroyKeyboard(Landroid/view/View;)V

    .line 448
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->t:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->z:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->z:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 457
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->clearDocument()V

    .line 459
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->f:Lcom/alipay/android/app/template/TemplateWindowEvent;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindowEvent;->clear()V

    .line 462
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->f:Lcom/alipay/android/app/template/TemplateWindowEvent;

    .line 463
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->e:Lcom/alipay/android/app/template/TemplateWindowNavigator;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindowNavigator;->clear()V

    .line 464
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->e:Lcom/alipay/android/app/template/TemplateWindowNavigator;

    .line 465
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->d:Lcom/alipay/android/app/template/TemplateConsole;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateConsole;->clear()V

    .line 466
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->d:Lcom/alipay/android/app/template/TemplateConsole;

    .line 467
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->a:Ljava/lang/String;

    .line 468
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->m:Landroid/app/Activity;

    .line 469
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->b:Lcom/alipay/android/app/json/JSONObject;

    .line 470
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->y:Ljava/lang/Runnable;

    .line 471
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->s:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 472
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->t:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 473
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->u:Lcom/alipay/android/app/template/TemplatePasswordService;

    .line 474
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 475
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->l:Ljava/util/List;

    .line 476
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->g:Ljava/util/Map;

    .line 477
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->z:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/template/TemplateWindow$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/TemplateWindow$4;-><init>(Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 484
    const-wide/16 v2, 0x64

    .line 477
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    iput-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->z:Landroid/os/Handler;

    .line 486
    return-void

    .line 453
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/TemplateWindow;->clearInterval(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executePropertyScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/app/template/TemplateWindow;->executeScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;Z)Lcom/alipay/android/app/template/TNativeResult;

    move-result-object v1

    .line 358
    if-eqz v1, :cond_0

    iget v1, v1, Lcom/alipay/android/app/template/TNativeResult;->returnValue:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public executeScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;Z)Lcom/alipay/android/app/template/TNativeResult;
    .locals 7

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    iget-wide v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->duktapeCtx:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string/jumbo v0, "msp"

    const-string/jumbo v1, "TemplateWindow bindObjectsIfNecessary  "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getAnt()Lcom/alipay/android/app/template/TemplateAnt;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/template/TemplateWindow;->d:Lcom/alipay/android/app/template/TemplateConsole;

    iget-object v5, p0, Lcom/alipay/android/app/template/TemplateWindow;->e:Lcom/alipay/android/app/template/TemplateWindowNavigator;

    iget-object v6, p0, Lcom/alipay/android/app/template/TemplateWindow;->f:Lcom/alipay/android/app/template/TemplateWindowEvent;

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/template/TemplateWindow;->bindObjectsToJS(Lcom/alipay/android/app/template/TemplateWindow;Lcom/alipay/android/app/template/TemplateDocument;Lcom/alipay/android/app/template/TemplateAnt;Lcom/alipay/android/app/template/TemplateConsole;Lcom/alipay/android/app/template/TemplateWindowNavigator;Lcom/alipay/android/app/template/TemplateWindowEvent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->duktapeCtx:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    invoke-direct {p0, p0, p1, p3}, Lcom/alipay/android/app/template/TemplateWindow;->executeScript(Lcom/alipay/android/app/template/TemplateWindow;Ljava/lang/String;Z)Lcom/alipay/android/app/template/TNativeResult;

    move-result-object v0

    .line 367
    :cond_1
    sget-object v1, Lcom/alipay/android/app/template/ScriptPropertyType;->onload:Lcom/alipay/android/app/template/ScriptPropertyType;

    if-eq p2, v1, :cond_2

    .line 368
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->requestLayout()V

    .line 370
    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    return-object v0
.end method

.method public getConsole()Lcom/alipay/android/app/template/TemplateConsole;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->d:Lcom/alipay/android/app/template/TemplateConsole;

    return-object v0
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->m:Landroid/app/Activity;

    return-object v0
.end method

.method public getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->s:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-object v0
.end method

.method public getDocument()Lcom/alipay/android/app/template/TemplateDocument;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    return-object v0
.end method

.method public getEvent()Lcom/alipay/android/app/template/TemplateWindowEvent;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->f:Lcom/alipay/android/app/template/TemplateWindowEvent;

    return-object v0
.end method

.method public getGlobalClick()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->n:Z

    return v0
.end method

.method public getInnerHeight()I
    .locals 3

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateWindow;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v1

    .line 314
    const/4 v0, 0x0

    .line 315
    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/TElement;->getOffsetHeight()I

    move-result v0

    .line 318
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

.method public getInnerWidth()I
    .locals 2

    .prologue
    .line 309
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getJsObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const-string/jumbo v0, "window"

    return-object v0
.end method

.method public getKeyboardParentView()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->x:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    return-object v0
.end method

.method public getNavHeight()I
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateWindow;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateWindow;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getOffsetHeight()I

    move-result v0

    .line 492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigator()Lcom/alipay/android/app/template/TemplateWindowNavigator;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->e:Lcom/alipay/android/app/template/TemplateWindowNavigator;

    return-object v0
.end method

.method public getNeedResetElements()Ljava/util/List;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->h:Ljava/util/List;

    return-object v0
.end method

.method public getPageScriptStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptConfigJson()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 276
    sget-object v0, Lcom/alipay/android/app/template/TemplateWindow;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getInstance()Lcom/alipay/android/app/template/TScriptConfigHelper;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateWindow;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setInterval"

    new-array v4, v8, [Ljava/lang/Class;

    .line 280
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    .line 279
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 281
    const-string/jumbo v3, "setInterval"

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "clearInterval"

    new-array v4, v7, [Ljava/lang/Class;

    .line 283
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    .line 282
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 284
    const-string/jumbo v3, "clearInterval"

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 287
    const-string/jumbo v3, "setTimeout"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 288
    const-string/jumbo v3, "setTimeout"

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "open"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 291
    const-string/jumbo v3, "open"

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "clearTimeout"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 294
    const-string/jumbo v3, "clearTimeout"

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getInnerHeight"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 297
    const-string/jumbo v3, "innerHeight"

    invoke-virtual {v0, v1, v3, v2, v9}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getInnerWidth"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 300
    const-string/jumbo v3, "innerWidth"

    invoke-virtual {v0, v1, v3, v2, v9}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 302
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getScriptJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/TemplateWindow;->o:Ljava/lang/String;

    .line 305
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/TemplateWindow;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleSheetMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->t:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-object v0
.end method

.method public getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->u:Lcom/alipay/android/app/template/TemplatePasswordService;

    return-object v0
.end method

.method public getVarJson()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->b:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public getWindowHashCode()I
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hasOnreloadFunc()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getAnt()Lcom/alipay/android/app/template/TemplateAnt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateAnt;->getOnreload()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hiddenKeyboardService(Landroid/view/View;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 627
    .line 628
    iget-boolean v1, p0, Lcom/alipay/android/app/template/TemplateWindow;->v:Z

    if-nez v1, :cond_2

    .line 629
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow;->t:Lcom/alipay/android/app/template/TemplateKeyboardService;

    invoke-interface {v1, p1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v1

    .line 631
    :goto_0
    if-eqz p2, :cond_1

    .line 632
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow;->s:Lcom/alipay/android/app/template/TemplateKeyboardService;

    invoke-interface {v1, p1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    :goto_1
    return v0

    .line 632
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public inflateView(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->r:Z

    .line 566
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 567
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/TemplateWindow;->a(Landroid/app/Activity;)V

    .line 580
    :goto_0
    return-void

    .line 569
    :cond_0
    new-instance v0, Lcom/alipay/android/app/template/TemplateWindow$5;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/TemplateWindow$5;-><init>(Lcom/alipay/android/app/template/TemplateWindow;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isDefaultKeyboard()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->v:Z

    return v0
.end method

.method public isExecutedFillView()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->j:Z

    return v0
.end method

.method public isExecutedOnload()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->i:Z

    return v0
.end method

.method public isInflateSuccess()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->r:Z

    return v0
.end method

.method public lockLayout()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->k:Z

    .line 557
    return-void
.end method

.method public onClick(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/alipay/android/app/template/ScriptPropertyType;->onclick:Lcom/alipay/android/app/template/ScriptPropertyType;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/TemplateWindow;->executePropertyScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    sget-object v0, Lcom/alipay/android/app/template/ScriptPropertyType;->onclick:Lcom/alipay/android/app/template/ScriptPropertyType;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/TemplateWindow;->executePropertyScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    .line 337
    :cond_0
    :goto_0
    return v3

    .line 334
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateWindow;->f:Lcom/alipay/android/app/template/TemplateWindowEvent;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onTouch(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    :goto_0
    return v0

    .line 344
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 345
    invoke-virtual {p0, p1, p3}, Lcom/alipay/android/app/template/TemplateWindow;->executePropertyScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    :cond_1
    :goto_1
    move v0, v1

    .line 353
    goto :goto_0

    .line 346
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 347
    sget-object v2, Lcom/alipay/android/app/template/ScriptPropertyType;->onmouse:Lcom/alipay/android/app/template/ScriptPropertyType;

    if-ne p3, v2, :cond_3

    .line 348
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/android/app/template/TemplateWindow;->f:Lcom/alipay/android/app/template/TemplateWindowEvent;

    aput-object v3, v2, v0

    invoke-virtual {p0, p2, v2}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->m:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/alipay/android/app/template/UiAssistantor;->openWeb(Ljava/lang/String;Landroid/content/Context;)V

    .line 502
    return-void
.end method

.method public putClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/TemplateDocument;->putClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 267
    return-void
.end method

.method public putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/TemplateDocument;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 239
    return-void
.end method

.method public putNeedResetElement(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    return-void
.end method

.method public setBodyElement(Lcom/alipay/android/app/template/view/widget/TBaseComponent;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->setBodyElement(Lcom/alipay/android/app/template/view/widget/TBaseComponent;)V

    .line 243
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindow;->m:Landroid/app/Activity;

    .line 259
    return-void
.end method

.method public setGlobalClick(Z)V
    .locals 2

    .prologue
    .line 150
    const-wide/16 v0, 0x258

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/android/app/template/TemplateWindow;->setGlobalClick(ZJ)V

    .line 151
    return-void
.end method

.method public setGlobalClick(ZJ)V
    .locals 2

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/alipay/android/app/template/TemplateWindow;->n:Z

    .line 155
    if-nez p1, :cond_1

    .line 156
    const-wide/16 v0, 0x7d0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    :cond_1
    return-void
.end method

.method public setInterval(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 522
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 523
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 524
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 525
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 526
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow;->z:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 528
    return-object p1
.end method

.method public setIsExecutedFillView(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/alipay/android/app/template/TemplateWindow;->j:Z

    .line 207
    return-void
.end method

.method public setIsExecutedOnload(Z)V
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/alipay/android/app/template/TemplateWindow;->i:Z

    .line 203
    return-void
.end method

.method public setKeyboardParent(Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindow;->x:Landroid/widget/LinearLayout;

    .line 184
    return-void
.end method

.method public setListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->setListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)V

    .line 235
    return-void
.end method

.method public setNavElement(Lcom/alipay/android/app/template/view/widget/TBaseComponent;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->c:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->setNavElement(Lcom/alipay/android/app/template/view/widget/TBaseComponent;)V

    .line 251
    return-void
.end method

.method public setPageScriptStr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindow;->a:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setStyleSheetMap(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindow;->g:Ljava/util/Map;

    .line 219
    return-void
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindow;->w:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setTemplateKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)V
    .locals 1

    .prologue
    .line 600
    if-eqz p1, :cond_0

    .line 601
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindow;->t:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->v:Z

    .line 604
    :cond_0
    return-void
.end method

.method public setTemplatePasswordService(Lcom/alipay/android/app/template/TemplatePasswordService;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindow;->u:Lcom/alipay/android/app/template/TemplatePasswordService;

    .line 620
    return-void
.end method

.method public setTimeout(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 532
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 533
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 534
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 535
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 536
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow;->z:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 537
    return-object p1
.end method

.method public setVarJson(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindow;->b:Lcom/alipay/android/app/json/JSONObject;

    .line 139
    return-void
.end method

.method public unlockLayout()V
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateWindow;->k:Z

    .line 561
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->requestLayout()V

    .line 562
    return-void
.end method
