.class public final Lcom/alipay/android/app/widget/ResizeLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/IElementFocusChanged;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/alipay/android/app/widget/m;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/widget/m;-><init>(Lcom/alipay/android/app/widget/ResizeLayout;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/app/widget/ResizeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/widget/ResizeLayout;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/ResizeLayout;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/widget/ResizeLayout;Landroid/widget/ScrollView;Landroid/widget/EditText;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    aget v1, v0, v2

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->getLocationInWindow([I)V

    aget v0, v0, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/widget/ResizeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "msp_margin_default"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onFocusChange(I)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/widget/ResizeLayout;->a()V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/widget/ResizeLayout;->a()V

    goto :goto_0
.end method

.method public final setScrollView(Landroid/widget/ScrollView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/ResizeLayout;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method
