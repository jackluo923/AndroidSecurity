.class public Lcom/alipay/android/app/template/anim/TemplateSpecEvaluator;
.super Ljava/lang/Object;
.source "TemplateSpecEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 12
    if-nez p2, :cond_0

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 15
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v3

    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v4

    .line 18
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v0

    .line 19
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v5

    .line 23
    if-eq v3, v2, :cond_1

    if-ne v0, v2, :cond_3

    :cond_1
    move v0, v2

    .line 30
    :cond_2
    :goto_0
    int-to-float v1, v4

    sub-int v2, v5, v4

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->makeUnitSpec(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 25
    :cond_3
    if-eqz v3, :cond_4

    if-nez v0, :cond_2

    :cond_4
    move v0, v1

    .line 26
    goto :goto_0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/template/anim/TemplateSpecEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
