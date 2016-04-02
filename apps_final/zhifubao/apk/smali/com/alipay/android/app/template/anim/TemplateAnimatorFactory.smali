.class public Lcom/alipay/android/app/template/anim/TemplateAnimatorFactory;
.super Ljava/lang/Object;
.source "TemplateAnimatorFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTemplateIcecreamAnimator()Lcom/alipay/android/app/template/anim/ITemplateAnimator;
    .locals 2

    .prologue
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 6
    new-instance v0, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;

    invoke-direct {v0}, Lcom/alipay/android/app/template/anim/TemplateIcecreamAnimator;-><init>()V

    .line 8
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
