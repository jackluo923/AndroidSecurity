.class public Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;
.super Landroid/view/View;
.source "ContainerShadowView.java"


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Z)V
    .locals 1
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "isTop"    # Z

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    if-eqz p2, :cond_0

    .line 14
    sget v0, Lmobi/monaca/framework/psedo/R$drawable;->shadow_bg:I

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;->setBackgroundResource(I)V

    .line 18
    :goto_0
    return-void

    .line 16
    :cond_0
    sget v0, Lmobi/monaca/framework/psedo/R$drawable;->shadow_bg_reverse:I

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 22
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 23
    .local v0, "heightMode":I
    if-eqz v0, :cond_0

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_1

    .line 24
    :cond_0
    const/16 v4, 0x190

    invoke-static {v4, p1}, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;->resolveSize(II)I

    move-result v2

    .line 25
    .local v2, "resolvedWidth":I
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    .line 26
    .local v3, "shadowHeight":I
    invoke-static {v3, p2}, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;->resolveSize(II)I

    move-result v1

    .line 27
    .local v1, "resolvedHeight":I
    invoke-virtual {p0, v2, v1}, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;->setMeasuredDimension(II)V

    .line 31
    .end local v1    # "resolvedHeight":I
    .end local v2    # "resolvedWidth":I
    .end local v3    # "shadowHeight":I
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0
.end method
