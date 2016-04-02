.class public Lcom/alipay/android/app/template/anim/TemplateSpecArrayEvaluator;
.super Ljava/lang/Object;
.source "TemplateSpecArrayEvaluator.java"

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
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p2, [I

    check-cast p3, [I

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/template/anim/TemplateSpecArrayEvaluator;->evaluate(F[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public evaluate(F[I[I)[I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    array-length v0, p3

    new-array v4, v0, [I

    move v3, v1

    .line 12
    :goto_0
    const/4 v0, 0x4

    if-lt v3, v0, :cond_0

    .line 34
    return-object v4

    .line 13
    :cond_0
    aget v0, p2, v3

    .line 14
    aget v5, p3, v3

    .line 16
    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v6

    .line 17
    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v7

    .line 19
    invoke-static {v5}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v0

    .line 20
    invoke-static {v5}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v5

    .line 24
    if-eq v6, v2, :cond_1

    if-ne v0, v2, :cond_3

    :cond_1
    move v0, v2

    .line 32
    :cond_2
    :goto_1
    int-to-float v6, v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 31
    invoke-static {v5, v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->makeUnitSpec(II)I

    move-result v0

    aput v0, v4, v3

    .line 12
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 26
    :cond_3
    if-eqz v6, :cond_4

    if-nez v0, :cond_2

    :cond_4
    move v0, v1

    .line 27
    goto :goto_1
.end method
