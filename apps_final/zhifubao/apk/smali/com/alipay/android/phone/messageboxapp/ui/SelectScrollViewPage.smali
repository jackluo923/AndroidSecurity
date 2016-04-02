.class public Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;
.super Landroid/support/v4/view/ViewPager;
.source "SelectScrollViewPage.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;->a:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;->a:Z

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;->a:Z

    .line 39
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;->a:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;->a:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentItem(I)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 79
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 73
    return-void
.end method
