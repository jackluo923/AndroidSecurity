.class public final Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
.super Lcom/alipay/mobile/commonui/widget/APEditText;


# instance fields
.field final TAG:Ljava/lang/String;

.field private a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Landroid/view/View$OnTouchListener;

.field private d:Landroid/view/View$OnFocusChangeListener;

.field private e:Landroid/view/View$OnFocusChangeListener;

.field private f:Landroid/view/View$OnFocusChangeListener;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/app/Dialog;

.field private k:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OkButtonIsShowCallback;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:J

.field private u:J

.field private v:I

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "APSafeEditText"

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->h:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->i:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->m:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->n:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->o:Z

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->p:I

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->r:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->s:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->v:I

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "APSafeEditText"

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->h:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->i:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->m:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->n:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->o:Z

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->p:I

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->r:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->s:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->v:I

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "APSafeEditText"

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->h:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->i:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->m:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->n:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->o:Z

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->p:I

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->r:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->s:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->v:I

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a()V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/Class;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Object"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->isUseSafeKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getInputType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setInputType(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->f:Landroid/view/View$OnFocusChangeListener;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->f:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->h:Z

    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->h:Z

    :goto_1
    return v0

    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->o:Z

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->t:J

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->v:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->v:I

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->u:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->u:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->b()V

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->c()V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->k:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;

    return-object v0
.end method

.method private b()V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->u:J

    iget-wide v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->t:J

    sub-long v3, v0, v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "focusLoseTime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->u:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "focusGetTime :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->t:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timeUse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    cmp-long v0, v3, v7

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/32 v0, 0x1d4c0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->getInstance(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->getIsUseDefaultKeyboard()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isUseSafeKeyboard:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_4

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->v:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->v:I

    goto :goto_0

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "focusGetTxtLen:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->v:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->v:I

    sub-int/2addr v5, v6

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->v:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pstrLen:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "pstr:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    if-lez v5, :cond_0

    long-to-float v0, v3

    int-to-float v2, v5

    div-float v2, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "aovct:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->kb:Lcom/alipay/mobile/commonui/widget/keyboard/KeyboardBehavor;

    if-eqz v0, :cond_0

    iput-wide v7, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->u:J

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->kb:Lcom/alipay/mobile/commonui/widget/keyboard/KeyboardBehavor;

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/commonui/widget/keyboard/KeyboardBehavor;->onEditEnd(ZFJI)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto/16 :goto_3
.end method

.method private c()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->hideSafeKeyboardAndDestroy()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->n:Z

    goto :goto_0
.end method

.method public static final hideNormalKeyboard(Landroid/widget/EditText;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method static final l(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final showNormalKeyboard(Landroid/widget/EditText;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "first show fail"

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "second show fail"

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "thrid show fail"

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final closeSafeKeyboard()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->c()V

    return-void
.end method

.method public final getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->j:Landroid/app/Dialog;

    return-object v0
.end method

.method public final getOkButtonIsShowCallback()Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OkButtonIsShowCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->q:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OkButtonIsShowCallback;

    return-object v0
.end method

.method public final getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSafeKeyboard()Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->getInstance(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    goto :goto_0
.end method

.method public final getSafeKeyboardInputType()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->p:I

    return v0
.end method

.method public final getSafeText()Landroid/text/Editable;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Landroid/text/Editable;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->r:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    :goto_1
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_2
.end method

.method public final bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final isAutoShowSafeKeyboard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->o:Z

    return v0
.end method

.method public final isOnShowEnableOk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->m:Z

    return v0
.end method

.method public final isPasswordType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    return v0
.end method

.method public final isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->n:Z

    return v0
.end method

.method public final isTextSelectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->isTextSelectable()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->isTextSelectable()Z

    move-result v0

    goto :goto_0
.end method

.method public final isUseSafePassKeyboard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->i:Z

    return v0
.end method

.method public final onCheckIsTextEditor()Z
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0
.end method

.method protected final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->u:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ondetached focusLoseTime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->u:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->b()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->closeSafeKeyboard()V

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->r:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "mListeners"

    invoke-direct {p0, p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    instance-of v1, v1, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeTextWatcher;

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/commonui/widget/APEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setAutoShowSafeKeyboard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->o:Z

    return-void
.end method

.method public final setDialog(Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->j:Landroid/app/Dialog;

    return-void
.end method

.method public final setGreatWall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->r:Z

    return-void
.end method

.method public final setInputType(I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    and-int/lit16 v4, p1, 0xfff

    const/16 v0, 0x81

    if-ne v4, v0, :cond_2

    move v0, v1

    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_5

    const/16 v3, 0xe1

    if-ne v4, v3, :cond_3

    move v3, v1

    :goto_1
    const/16 v5, 0x12

    if-ne v4, v5, :cond_4

    :goto_2
    move v2, v3

    :goto_3
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSafeKeyboard()V

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->p:I

    :cond_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setInputType(I)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public final setOKListener(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->k:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;

    return-void
.end method

.method public final setOKText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getImeActionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method public final setOkButtonIsShowCallback(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OkButtonIsShowCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->q:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OkButtonIsShowCallback;

    return-void
.end method

.method public final setOkEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isUseSafeKeyboard:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeKeyboard()Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->setOkEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setImeOptions(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getImeActionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method public final setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method public final setOnShowEnableOk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->m:Z

    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->b:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public final setSafeKeyboard()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "setSoftInputShownOnFocus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setSoftInputShownOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    new-instance v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$1;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->c:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->c:Landroid/view/View$OnTouchListener;

    invoke-super {p0, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->e:Landroid/view/View$OnFocusChangeListener;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v5, "setShowSoftInputOnFocus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setShowSoftInputOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public final setSafeKeyboardInputType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->p:I

    return-void
.end method

.method public final setShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->n:Z

    return-void
.end method

.method public final setUseSafePassKeyboard(Z)V
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->p:I

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setUseSafePassKeyboard(ZI)V

    return-void
.end method

.method public final setUseSafePassKeyboard(ZI)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->i:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSafeKeyboard()V

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->p:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    invoke-super {p0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->e:Landroid/view/View$OnFocusChangeListener;

    goto :goto_0
.end method

.method public final showSafeKeyboard()V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->w:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->n:Z

    new-instance v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "call show normal"

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$5;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
