.class public Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;
.super Ljava/lang/Object;
.source "TemplateIcecreamAnimator.java"

# interfaces
.implements Lcom/alipay/android/app/template/anim/ITemplateAnimator;


# instance fields
.field private a:Landroid/animation/ObjectAnimator;

.field private b:Ljava/util/List;

.field private c:Lcom/alipay/android/app/template/anim/AnimateHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->b:Ljava/util/List;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->c:Lcom/alipay/android/app/template/anim/AnimateHelper;

    .line 10
    return-void
.end method


# virtual methods
.method public checkAndAddHolder(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3

    .prologue
    .line 20
    .line 21
    if-eqz p3, :cond_0

    new-instance v0, Lcom/alipay/android/app/template/anim/TemplateSpecArrayEvaluator;

    invoke-direct {v0}, Lcom/alipay/android/app/template/anim/TemplateSpecArrayEvaluator;-><init>()V

    .line 22
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 20
    invoke-static {p1, v0, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/alipay/android/app/template/anim/TemplateSpecEvaluator;

    invoke-direct {v0}, Lcom/alipay/android/app/template/anim/TemplateSpecEvaluator;-><init>()V

    goto :goto_0
.end method

.method public requestLayout(ILandroid/view/View;)V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 30
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->a:Landroid/animation/ObjectAnimator;

    .line 31
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->b:Ljava/util/List;

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 31
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 33
    iget-object v1, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->a:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->c:Lcom/alipay/android/app/template/anim/AnimateHelper;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/alipay/android/app/template/anim/AnimateHelper;

    invoke-direct {v0, p2}, Lcom/alipay/android/app/template/anim/AnimateHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->c:Lcom/alipay/android/app/template/anim/AnimateHelper;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->a:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->c:Lcom/alipay/android/app/template/anim/AnimateHelper;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->a:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->c:Lcom/alipay/android/app/template/anim/AnimateHelper;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->a:Landroid/animation/ObjectAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
