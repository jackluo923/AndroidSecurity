.class public Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;
.super Landroid/widget/EditText;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;,
        Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;,
        Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/widget/PopupWindow;

.field private i:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;

.field private j:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->e:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->f:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->g:I

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->e:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->f:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->g:I

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->e:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->f:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->g:I

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->dispose()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v0, v2

    div-int/lit8 v4, v2, 0x4

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    sub-int v0, v1, v3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->e:I

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->f:I

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->g:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v5, v0, v5}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->j:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->i:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->hiddenPopHint()V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->j:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->i:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;

    return-void
.end method

.method public hiddenPopHint()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->removeIcon()V

    :cond_0
    return-void
.end method

.method public initOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->dispose()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public justInitIconListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    return-void
.end method

.method public onEditorAction(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->i:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->i:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;->a()V

    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    check-cast p1, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->showCloseIcon()V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->j:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->j:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;

    invoke-interface {v0, p2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;->a(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->removeIcon()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->hiddenPopHint()V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->hiddenPopHint()V

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->f:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->e:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->g:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;->a()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeIcon()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    goto :goto_0
.end method

.method public setCustomOnFocusChangeListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->j:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;

    return-void
.end method

.method public setDelIconShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    return-void
.end method

.method public setOnDoneListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->i:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;

    return-void
.end method

.method public setOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->dispose()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a()V

    invoke-super {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public showCloseIcon()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const-string/jumbo v0, "mini_icon_clean"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    :cond_1
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a()V

    goto :goto_0
.end method

.method public showPopHint(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const-string/jumbo v1, "msp_popup_inline_error_right"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getPaddingBottom()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    rsub-int/lit8 v3, v3, 0x0

    if-gez v1, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getWidth()I

    move-result v1

    if-le v2, v1, :cond_1

    const-string/jumbo v1, "msp_popup_inline_error_left"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v0, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "msp_edit_warning"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    iput-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
