.class public Lae/gov/mol/helper/ViewPagerCustomDuration;
.super Landroid/support/v4/view/ViewPager;
.source "ViewPagerCustomDuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/helper/ViewPagerCustomDuration$MyScroller;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0}, Lae/gov/mol/helper/ViewPagerCustomDuration;->setMyScroller()V

    .line 18
    return-void
.end method

.method private setMyScroller()V
    .locals 5

    .prologue
    .line 23
    :try_start_0
    const-class v2, Landroid/support/v4/view/ViewPager;

    .line 24
    .local v2, "viewpager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 25
    .local v1, "scroller":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    new-instance v3, Lae/gov/mol/helper/ViewPagerCustomDuration$MyScroller;

    invoke-virtual {p0}, Lae/gov/mol/helper/ViewPagerCustomDuration;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lae/gov/mol/helper/ViewPagerCustomDuration$MyScroller;-><init>(Lae/gov/mol/helper/ViewPagerCustomDuration;Landroid/content/Context;)V

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v1    # "scroller":Ljava/lang/reflect/Field;
    .end local v2    # "viewpager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
