.class public Lae/gov/mol/helper/SimpleGestureFilter;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SimpleGestureFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;
    }
.end annotation


# static fields
.field private static final ACTION_FAKE:I = -0xd

.field public static final MODE_DYNAMIC:I = 0x2

.field public static final MODE_SOLID:I = 0x1

.field public static final MODE_TRANSPARENT:I = 0x0

.field public static final SWIPE_DOWN:I = 0x2

.field public static final SWIPE_LEFT:I = 0x3

.field public static final SWIPE_RIGHT:I = 0x4

.field public static final SWIPE_UP:I = 0x1


# instance fields
.field private context:Landroid/app/Activity;

.field private detector:Landroid/view/GestureDetector;

.field private listener:Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;

.field private mode:I

.field private running:Z

.field private swipe_Max_Distance:I

.field private swipe_Min_Distance:I

.field private swipe_Min_Velocity:I

.field private tapIndicator:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "sgl"    # Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 26
    const/16 v0, 0x4b

    iput v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Min_Distance:I

    .line 27
    const/16 v0, 0x15e

    iput v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Max_Distance:I

    .line 28
    const/16 v0, 0x32

    iput v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Min_Velocity:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->mode:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->running:Z

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->tapIndicator:Z

    .line 40
    iput-object p1, p0, Lae/gov/mol/helper/SimpleGestureFilter;->context:Landroid/app/Activity;

    .line 41
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->detector:Landroid/view/GestureDetector;

    .line 42
    iput-object p2, p0, Lae/gov/mol/helper/SimpleGestureFilter;->listener:Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;

    .line 43
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->mode:I

    return v0
.end method

.method public getSwipeMaxDistance()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Max_Distance:I

    return v0
.end method

.method public getSwipeMinDistance()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Min_Distance:I

    return v0
.end method

.method public getSwipeMinVelocity()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Min_Velocity:I

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    iget-object v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->listener:Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;

    invoke-interface {v0}, Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;->onDoubleTap()V

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg"    # Landroid/view/MotionEvent;

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 110
    .local v1, "xDistance":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 112
    .local v2, "yDistance":F
    iget v3, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Max_Distance:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Max_Distance:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 136
    :cond_1
    :goto_0
    return v0

    .line 115
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 116
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "result":Z
    iget v3, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Min_Velocity:I

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_4

    iget v3, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Min_Distance:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 121
    iget-object v3, p0, Lae/gov/mol/helper/SimpleGestureFilter;->listener:Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;->onSwipe(I)V

    .line 125
    :goto_1
    const/4 v0, 0x1

    .line 126
    goto :goto_0

    .line 123
    :cond_3
    iget-object v3, p0, Lae/gov/mol/helper/SimpleGestureFilter;->listener:Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;->onSwipe(I)V

    goto :goto_1

    .line 127
    :cond_4
    iget v3, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Min_Velocity:I

    int-to-float v3, v3

    cmpl-float v3, p4, v3

    if-lez v3, :cond_1

    iget v3, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Min_Distance:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 129
    iget-object v3, p0, Lae/gov/mol/helper/SimpleGestureFilter;->listener:Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;->onSwipe(I)V

    .line 133
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_5
    iget-object v3, p0, Lae/gov/mol/helper/SimpleGestureFilter;->listener:Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;->onSwipe(I)V

    goto :goto_2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg"    # Landroid/view/MotionEvent;

    .prologue
    .line 160
    iget v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 161
    const/16 v0, -0xd

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 162
    iget-object v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->context:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 165
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->tapIndicator:Z

    .line 142
    iget-object v0, p0, Lae/gov/mol/helper/SimpleGestureFilter;->listener:Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;

    invoke-interface {v0}, Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;->onTap()V

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    iget-boolean v1, p0, Lae/gov/mol/helper/SimpleGestureFilter;->running:Z

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v1, p0, Lae/gov/mol/helper/SimpleGestureFilter;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 52
    .local v0, "result":Z
    iget v1, p0, Lae/gov/mol/helper/SimpleGestureFilter;->mode:I

    if-ne v1, v4, :cond_2

    .line 53
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 54
    :cond_2
    iget v1, p0, Lae/gov/mol/helper/SimpleGestureFilter;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, -0xd

    if-ne v1, v2, :cond_3

    .line 57
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 58
    :cond_3
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 60
    :cond_4
    iget-boolean v1, p0, Lae/gov/mol/helper/SimpleGestureFilter;->tapIndicator:Z

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 62
    iput-boolean v3, p0, Lae/gov/mol/helper/SimpleGestureFilter;->tapIndicator:Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lae/gov/mol/helper/SimpleGestureFilter;->running:Z

    .line 79
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "m"    # I

    .prologue
    .line 70
    iput p1, p0, Lae/gov/mol/helper/SimpleGestureFilter;->mode:I

    .line 71
    return-void
.end method

.method public setSwipeMaxDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 82
    iput p1, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Max_Distance:I

    .line 83
    return-void
.end method

.method public setSwipeMinDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 86
    iput p1, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Min_Distance:I

    .line 87
    return-void
.end method

.method public setSwipeMinVelocity(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 90
    iput p1, p0, Lae/gov/mol/helper/SimpleGestureFilter;->swipe_Min_Velocity:I

    .line 91
    return-void
.end method
