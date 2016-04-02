.class public Lae/gov/mol/AnimationLayout;
.super Landroid/widget/RelativeLayout;
.source "AnimationLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/AnimationLayout$CloseListener;,
        Lae/gov/mol/AnimationLayout$Listener;,
        Lae/gov/mol/AnimationLayout$OpenListener;
    }
.end annotation


# static fields
.field public static final DURATION:I = 0x1f4


# instance fields
.field protected mAnimation:Landroid/view/animation/Animation;

.field protected mCloseListener:Lae/gov/mol/AnimationLayout$CloseListener;

.field protected mContent:Landroid/view/View;

.field protected mListener:Lae/gov/mol/AnimationLayout$Listener;

.field protected mOpenListener:Lae/gov/mol/AnimationLayout$OpenListener;

.field public mOpened:Z

.field protected mPlaceLeft:Z

.field protected mPressed:Z

.field protected mSidebar:Landroid/view/View;

.field protected mSidebarWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lae/gov/mol/AnimationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/AnimationLayout;->mPlaceLeft:Z

    .line 27
    const/16 v0, 0x96

    iput v0, p0, Lae/gov/mol/AnimationLayout;->mSidebarWidth:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/AnimationLayout;->mPressed:Z

    .line 50
    return-void
.end method


# virtual methods
.method public closeSidebar()V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lae/gov/mol/AnimationLayout;->mOpened:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lae/gov/mol/AnimationLayout;->toggleSidebar()V

    .line 212
    :cond_0
    return-void
.end method

.method public isOpening()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lae/gov/mol/AnimationLayout;->mOpened:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWSpec"    # I
    .param p3, "parentHSpec"    # I

    .prologue
    .line 110
    iget-object v2, p0, Lae/gov/mol/AnimationLayout;->mSidebar:Landroid/view/View;

    if-ne p1, v2, :cond_0

    .line 111
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 112
    .local v0, "mode":I
    invoke-virtual {p0}, Lae/gov/mol/AnimationLayout;->getMeasuredWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 113
    .local v1, "width":I
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, p1, v2, p3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;II)V

    .line 117
    .end local v0    # "mode":I
    .end local v1    # "width":I
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 58
    const v0, 0x7f060364

    invoke-virtual {p0, v0}, Lae/gov/mol/AnimationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/AnimationLayout;->mSidebar:Landroid/view/View;

    .line 59
    const v0, 0x7f060365

    invoke-virtual {p0, v0}, Lae/gov/mol/AnimationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lae/gov/mol/AnimationLayout;->mSidebar:Landroid/view/View;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no view id = animation_sidebar"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no view id = animation_content"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Lae/gov/mol/AnimationLayout$OpenListener;

    iget-object v1, p0, Lae/gov/mol/AnimationLayout;->mSidebar:Landroid/view/View;

    iget-object v2, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2}, Lae/gov/mol/AnimationLayout$OpenListener;-><init>(Lae/gov/mol/AnimationLayout;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lae/gov/mol/AnimationLayout;->mOpenListener:Lae/gov/mol/AnimationLayout$OpenListener;

    .line 70
    new-instance v0, Lae/gov/mol/AnimationLayout$CloseListener;

    iget-object v1, p0, Lae/gov/mol/AnimationLayout;->mSidebar:Landroid/view/View;

    iget-object v2, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2}, Lae/gov/mol/AnimationLayout$CloseListener;-><init>(Lae/gov/mol/AnimationLayout;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lae/gov/mol/AnimationLayout;->mCloseListener:Lae/gov/mol/AnimationLayout$CloseListener;

    .line 71
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p0}, Lae/gov/mol/AnimationLayout;->isOpening()Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v3

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 130
    .local v0, "action":I
    if-eq v0, v5, :cond_2

    .line 131
    if-nez v0, :cond_0

    .line 135
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 136
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 137
    .local v2, "y":I
    iget-object v4, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    if-ge v4, v1, :cond_3

    .line 138
    iget-object v4, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    if-le v4, v1, :cond_3

    .line 139
    iget-object v4, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, v2, :cond_3

    .line 140
    iget-object v4, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v2, :cond_3

    .line 142
    iget-boolean v4, p0, Lae/gov/mol/AnimationLayout;->mPressed:Z

    if-eqz v4, :cond_0

    .line 143
    if-ne v0, v5, :cond_0

    .line 144
    iget-object v4, p0, Lae/gov/mol/AnimationLayout;->mListener:Lae/gov/mol/AnimationLayout$Listener;

    if-eqz v4, :cond_0

    .line 145
    iput-boolean v3, p0, Lae/gov/mol/AnimationLayout;->mPressed:Z

    .line 146
    iget-object v3, p0, Lae/gov/mol/AnimationLayout;->mListener:Lae/gov/mol/AnimationLayout$Listener;

    invoke-interface {v3}, Lae/gov/mol/AnimationLayout$Listener;->onContentTouchedWhenOpening()Z

    move-result v3

    goto :goto_0

    .line 149
    :cond_3
    iput-boolean v3, p0, Lae/gov/mol/AnimationLayout;->mPressed:Z

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    .line 79
    move v0, p2

    .line 80
    .local v0, "sidebarLeft":I
    iget-boolean v1, p0, Lae/gov/mol/AnimationLayout;->mPlaceLeft:Z

    if-nez v1, :cond_0

    .line 81
    iget v1, p0, Lae/gov/mol/AnimationLayout;->mSidebarWidth:I

    sub-int v0, p4, v1

    .line 83
    :cond_0
    iget-object v1, p0, Lae/gov/mol/AnimationLayout;->mSidebar:Landroid/view/View;

    iget v2, p0, Lae/gov/mol/AnimationLayout;->mSidebarWidth:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lae/gov/mol/AnimationLayout;->mSidebar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 84
    iget-boolean v1, p0, Lae/gov/mol/AnimationLayout;->mOpened:Z

    if-eqz v1, :cond_2

    .line 85
    iget-boolean v1, p0, Lae/gov/mol/AnimationLayout;->mPlaceLeft:Z

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    iget v2, p0, Lae/gov/mol/AnimationLayout;->mSidebarWidth:I

    add-int/2addr v2, p2

    iget v3, p0, Lae/gov/mol/AnimationLayout;->mSidebarWidth:I

    add-int/2addr v3, p4

    invoke-virtual {v1, v2, v4, v3, p5}, Landroid/view/View;->layout(IIII)V

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    iget v2, p0, Lae/gov/mol/AnimationLayout;->mSidebarWidth:I

    sub-int v2, p2, v2

    iget v3, p0, Lae/gov/mol/AnimationLayout;->mSidebarWidth:I

    sub-int v3, p4, v3

    invoke-virtual {v1, v2, v4, v3, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v1, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1, p2, v4, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->measureChildren(II)V

    .line 102
    iget-object v0, p0, Lae/gov/mol/AnimationLayout;->mSidebar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lae/gov/mol/AnimationLayout;->mSidebarWidth:I

    .line 103
    return-void
.end method

.method public openSidebar()V
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lae/gov/mol/AnimationLayout;->mOpened:Z

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lae/gov/mol/AnimationLayout;->toggleSidebar()V

    .line 203
    :cond_0
    return-void
.end method

.method public setListener(Lae/gov/mol/AnimationLayout$Listener;)V
    .locals 0
    .param p1, "l"    # Lae/gov/mol/AnimationLayout$Listener;

    .prologue
    .line 160
    iput-object p1, p0, Lae/gov/mol/AnimationLayout;->mListener:Lae/gov/mol/AnimationLayout$Listener;

    .line 161
    return-void
.end method

.method public toggleSidebar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-boolean v0, p0, Lae/gov/mol/AnimationLayout;->mOpened:Z

    if-eqz v0, :cond_2

    .line 176
    iget-boolean v0, p0, Lae/gov/mol/AnimationLayout;->mPlaceLeft:Z

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lae/gov/mol/AnimationLayout;->mSidebarWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lae/gov/mol/AnimationLayout;->mAnimation:Landroid/view/animation/Animation;

    .line 181
    :goto_1
    iget-object v0, p0, Lae/gov/mol/AnimationLayout;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lae/gov/mol/AnimationLayout;->mCloseListener:Lae/gov/mol/AnimationLayout$CloseListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 190
    :goto_2
    iget-object v0, p0, Lae/gov/mol/AnimationLayout;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 191
    iget-object v0, p0, Lae/gov/mol/AnimationLayout;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 192
    iget-object v0, p0, Lae/gov/mol/AnimationLayout;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 193
    iget-object v0, p0, Lae/gov/mol/AnimationLayout;->mContent:Landroid/view/View;

    iget-object v1, p0, Lae/gov/mol/AnimationLayout;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 179
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lae/gov/mol/AnimationLayout;->mSidebarWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lae/gov/mol/AnimationLayout;->mAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 183
    :cond_2
    iget-boolean v0, p0, Lae/gov/mol/AnimationLayout;->mPlaceLeft:Z

    if-eqz v0, :cond_3

    .line 184
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lae/gov/mol/AnimationLayout;->mSidebarWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lae/gov/mol/AnimationLayout;->mAnimation:Landroid/view/animation/Animation;

    .line 188
    :goto_3
    iget-object v0, p0, Lae/gov/mol/AnimationLayout;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lae/gov/mol/AnimationLayout;->mOpenListener:Lae/gov/mol/AnimationLayout$OpenListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    .line 186
    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lae/gov/mol/AnimationLayout;->mSidebarWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lae/gov/mol/AnimationLayout;->mAnimation:Landroid/view/animation/Animation;

    goto :goto_3
.end method
