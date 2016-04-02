.class public final Lcom/google/android/gms/plus/PlusOneButton;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;
    }
.end annotation


# static fields
.field public static final ANNOTATION_BUBBLE:I = 0x1

.field public static final ANNOTATION_INLINE:I = 0x2

.field public static final ANNOTATION_NONE:I = 0x0

.field public static final SIZE_MEDIUM:I = 0x1

.field public static final SIZE_SMALL:I = 0x0

.field public static final SIZE_STANDARD:I = 0x3

.field public static final SIZE_TALL:I = 0x2


# instance fields
.field private final hQ:Lcom/google/android/gms/internal/el;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/plus/PlusOneButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/internal/el;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/el;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->hQ:Lcom/google/android/gms/internal/el;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->hQ:Lcom/google/android/gms/internal/el;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/google/android/gms/plus/PlusClient;Ljava/lang/String;I)V
    .locals 2
    .param p1, "plusClient"    # Lcom/google/android/gms/plus/PlusClient;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "activityRequestCode"    # I

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    const-string v1, "To use this method, the PlusOneButton must be placed in an Activity. Use initialize(PlusClient, String, OnPlusOneClickListener)."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ac;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->hQ:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/el;->initialize(Lcom/google/android/gms/plus/PlusClient;Ljava/lang/String;I)V

    return-void
.end method

.method public initialize(Lcom/google/android/gms/plus/PlusClient;Ljava/lang/String;Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .locals 2
    .param p1, "plusClient"    # Lcom/google/android/gms/plus/PlusClient;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "plusOneClickListener"    # Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->hQ:Lcom/google/android/gms/internal/el;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/el;->initialize(Lcom/google/android/gms/plus/PlusClient;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->hQ:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/el;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->hQ:Lcom/google/android/gms/internal/el;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/gms/internal/el;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->hQ:Lcom/google/android/gms/internal/el;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/plus/PlusOneButton;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/plus/PlusOneButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAnnotation(I)V
    .locals 1
    .param p1, "annotation"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->hQ:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/el;->setAnnotation(I)V

    return-void
.end method

.method public setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->hQ:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/el;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V

    return-void
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->hQ:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/el;->setSize(I)V

    return-void
.end method
