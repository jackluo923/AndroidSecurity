.class public Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;
.super Ljava/lang/Object;
.source "AnimatorLayoutUtil.java"


# static fields
.field private static a:Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->b:Ljava/util/List;

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->a:Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    invoke-direct {v0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->a:Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    .line 23
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->a:Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    return-object v0
.end method


# virtual methods
.method public addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    return-void

    .line 27
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 28
    invoke-virtual {v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->requestLayout()V

    goto :goto_0
.end method
