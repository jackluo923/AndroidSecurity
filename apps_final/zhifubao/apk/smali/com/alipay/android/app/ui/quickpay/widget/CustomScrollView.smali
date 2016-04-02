.class public Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;
.super Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;Landroid/widget/EditText;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;->getLocationInWindow([I)V

    aget v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->getLocationInWindow([I)V

    aget v0, v0, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " custom scroll view "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " old "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sub-int v0, p4, p2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;->startScroll()V

    :cond_0
    return-void
.end method

.method public startScroll()V
    .locals 3

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/b;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
