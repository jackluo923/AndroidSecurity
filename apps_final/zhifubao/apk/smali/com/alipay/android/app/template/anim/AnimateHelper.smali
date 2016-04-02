.class public Lcom/alipay/android/app/template/anim/AnimateHelper;
.super Ljava/lang/Object;
.source "AnimateHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 29
    iput-object p1, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->a:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 31
    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMargins()[I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    return-object v0
.end method

.method public getPaddings()[I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    return-object v0
.end method

.method public getRight()I
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->a:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 169
    return-void
.end method

.method public setBottom(I)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 158
    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    .line 87
    return-void
.end method

.method public setLeft(I)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 150
    return-void
.end method

.method public setMargins([I)V
    .locals 1

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    goto :goto_0
.end method

.method public setPaddings([I)V
    .locals 1

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    goto :goto_0
.end method

.method public setRight(I)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 142
    return-void
.end method

.method public setTop(I)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 134
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->a:Landroid/view/View;

    .line 49
    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimateHelper;->b:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    .line 69
    return-void
.end method
