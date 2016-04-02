.class public Lcom/alipay/mobile/commonui/widget/APTitleBar;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# static fields
.field public static final TITLE_CENTER:I = 0x11

.field public static final TITLE_LEFT:I = 0x10


# instance fields
.field private A:Lcom/alipay/mobile/commonui/widget/APButton;

.field private B:Landroid/view/View;

.field private C:Landroid/content/res/ColorStateList;

.field private final D:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private final H:Z

.field private final I:Z

.field private final J:Z

.field private final K:I

.field private final L:I

.field private final M:I

.field private final N:I

.field private final O:I

.field private P:Landroid/view/View;

.field private Q:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

.field private R:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private a:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private d:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private f:Landroid/view/View;

.field private g:Lcom/alipay/mobile/commonui/widget/APButton;

.field private h:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private i:Lcom/alipay/mobile/commonui/widget/APButton;

.field icon_height:F

.field icon_width:F

.field private j:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private k:Landroid/view/View;

.field private l:Lcom/alipay/mobile/commonui/widget/APButton;

.field private m:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field margin_left_generic:F

.field margin_right:F

.field margin_right_generic:F

.field margin_seperator:F

.field private n:Landroid/view/View;

.field private o:Lcom/alipay/mobile/commonui/widget/APButton;

.field private p:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private q:Lcom/alipay/mobile/commonui/widget/APProgressBar;

.field private r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private s:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private t:Lcom/alipay/mobile/commonui/widget/APButton;

.field touch_height:F

.field touch_width:F

.field private u:Lcom/alipay/mobile/commonui/widget/APButton;

.field private v:Landroid/view/View;

.field private w:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private x:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private y:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private z:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->C:Landroid/content/res/ColorStateList;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_right:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_right_generic:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_left_generic:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_height:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_width:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_seperator:F

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_title_bar:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->titleBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->D:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->E:Ljava/lang/String;

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->K:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->F:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->L:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->G:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->M:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->H:Z

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->I:Z

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->J:Z

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->O:I

    const/16 v1, 0xa

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->N:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->C:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_icon_margin_right_generic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_right_generic:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_icon_margin_left_generic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_left_generic:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_icon_margin_seperator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_seperator:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_icon_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->margin_right:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_icon_touch_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_height:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_icon_touch_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_width:F

    return-void
.end method

.method private a()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->A:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->A:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FLcom/alipay/mobile/commonui/widget/APButton;)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v0, v1

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    float-to-int v0, p2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    int-to-float v1, v1

    div-float v1, v2, v1

    float-to-int v1, v1

    :goto_1
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p3, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    int-to-float v1, v0

    sub-float v1, p2, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "leftMargin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rightMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private static a(Lcom/alipay/mobile/commonui/widget/APButton;FF)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_1
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    const-class v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APTitleBar;)Lcom/alipay/mobile/commonui/widget/APProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->q:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    return-object v0
.end method


# virtual methods
.method public addAnnuouncement(Ljava/lang/String;ILcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->addAnnuouncement(Ljava/lang/String;ILcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;II)V

    return-void
.end method

.method public addAnnuouncement(Ljava/lang/String;ILcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;II)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->Q:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->Q:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$dimen;->announcement_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    sget v2, Lcom/alipay/mobile/ui/R$id;->titlebar_kenel:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-lez p5, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->Q:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->Q:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->Q:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setAnnouncement(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->Q:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setCallBack(Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->Q:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    invoke-virtual {v0, p2, p4, p5}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setAnnouncementType(III)V

    return-void
.end method

.method public attachNewFlagView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->P:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->titlebar_kenel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->R:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->R:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public clearTitleTextClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->x:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->w:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->w:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getAnnouncementView()Lcom/alipay/mobile/commonui/widget/APAnnouncementView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->Q:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    return-object v0
.end method

.method public getBackButton()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->u:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getContainerRightButton()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getFeedbackButton()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getGenericButtonLeftLine()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->f:Landroid/view/View;

    return-object v0
.end method

.method public getGenericButtonParent()Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    return-object v0
.end method

.method public getLeftButton()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getLeftGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getLeftLine()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->v:Landroid/view/View;

    return-object v0
.end method

.method public getRightButton()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getSecondTitleTextView()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getTitleBarTopRl()Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->w:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getTitleTextView()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getTitlebarBg()Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-object v0
.end method

.method public hideBackButton()V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_no_back_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->title_bar_no_back_right_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->y:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v2, v0, v3, v1, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/16 v4, 0x8

    const/4 v2, -0x2

    const/4 v3, 0x0

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_title_second:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_generic_button_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_generic_button_left_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->f:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_generic_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_back_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->switch_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_left_button_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->h:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_left_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_right_button_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->j:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_right_button_left_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->k:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_right_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_third_button_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->z:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_third_button_right_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->B:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_third_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->A:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_progress:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->q:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_top_ll:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_feedback_button_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->m:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_feedback_button_left_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->n:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_feedback_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->titlebar_kenel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->r:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_left_generic_button_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->s:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_left_generic_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_left_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->v:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_top_rl:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->w:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->menu_click_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->x:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_bar_title_rl:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->y:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->u:Lcom/alipay/mobile/commonui/widget/APButton;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APTitleBar$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar$1;-><init>(Lcom/alipay/mobile/commonui/widget/APTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnTextChangeListener(Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->D:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->E:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->N:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->J:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APTitleBar$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar$2;-><init>(Lcom/alipay/mobile/commonui/widget/APTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->O:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->O:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setImageBackButtonIcon(I)V

    :cond_2
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->K:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->K:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->M:I

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->M:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->L:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->L:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->C:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->C:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->I:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->H:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setSwitchContainerVisiable(Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a()V

    return-void

    :pswitch_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->w:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->v:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_no_back_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->title_bar_no_back_right_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->y:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v2, v0, v3, v1, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->G:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setLeftButtonText(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->F:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setRightButtonText(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_height:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_width:F

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Lcom/alipay/mobile/commonui/widget/APButton;FF)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_height:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_width:F

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Lcom/alipay/mobile/commonui/widget/APButton;FF)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_height:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->touch_width:F

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Lcom/alipay/mobile/commonui/widget/APButton;FF)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->redpoint_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->redpoint_left_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->P:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->P:Landroid/view/View;

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APButton;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->P:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APButton;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->P:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v6}, Lcom/alipay/mobile/commonui/widget/APButton;->getRight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->P:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v5}, Lcom/alipay/mobile/commonui/widget/APButton;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->P:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public setBackButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBackButtonText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCloseButton(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->title_bar_close_btn_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFeedbackButtonVisible(Z)V
    .locals 3

    const/16 v1, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->m:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FLcom/alipay/mobile/commonui/widget/APButton;)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setGenericButtonIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setGenericButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setGenericButtonText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGenericButtonVisiable(Z)V
    .locals 3

    const/16 v1, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setImageBackButtonIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setImageResource(I)V

    return-void
.end method

.method public setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FLcom/alipay/mobile/commonui/widget/APButton;)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setLeftButtonIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setLeftGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FLcom/alipay/mobile/commonui/widget/APButton;)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FLcom/alipay/mobile/commonui/widget/APButton;)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setRightButtonIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setSecondTitleTextView(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_ll_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v2, v0, v2, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSecondTitleTextView(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_ll_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v2, v0, v2, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSecondTitleTextViewGone()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_ll_padding_orginial:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v2, v0, v2, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSwitchContainerVisiable(Z)V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->p:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setThirdButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->A:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->A:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_height:F

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->icon_width:F

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->A:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FLcom/alipay/mobile/commonui/widget/APButton;)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setThirdButtonIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setThirdButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThirdButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->A:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setThirdButtonVisiable(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->z:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->A:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleTextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->x:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->w:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->w:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showBackButton()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->title_bar_show_back_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->title_bar_show_back_right_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->y:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v2, v0, v3, v1, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public startProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->q:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APTitleBar$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar$3;-><init>(Lcom/alipay/mobile/commonui/widget/APTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->q:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APTitleBar$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar$4;-><init>(Lcom/alipay/mobile/commonui/widget/APTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unAttachNewFlagView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->P:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->R:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->R:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar;->P:Landroid/view/View;

    :cond_1
    return-void
.end method
