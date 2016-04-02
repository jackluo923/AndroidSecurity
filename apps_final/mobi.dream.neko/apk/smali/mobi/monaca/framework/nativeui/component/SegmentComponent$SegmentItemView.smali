.class public Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;
.super Landroid/widget/FrameLayout;
.source "SegmentComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/nativeui/component/SegmentComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SegmentItemView"
.end annotation


# instance fields
.field protected activeTextColor:I

.field protected background:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

.field protected button:Landroid/widget/Button;

.field protected isSelected:Z

.field protected textColor:I

.field final synthetic this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;

.field protected tint:I


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/nativeui/component/SegmentComponent;Lmobi/monaca/framework/nativeui/UIContext;Ljava/lang/String;III)V
    .locals 6
    .param p2, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "tint"    # I
    .param p5, "textColor"    # I
    .param p6, "activeTextColor"    # I

    .prologue
    const/4 v5, -0x1

    .line 267
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;

    .line 268
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->isSelected:Z

    .line 270
    iput p4, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->tint:I

    .line 271
    iput p5, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->textColor:I

    .line 272
    iput p6, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->activeTextColor:I

    .line 273
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    .line 274
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 276
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    iget v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 277
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {p2, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getFontSizeFromDip(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 278
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 280
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->setAsSingle()V

    .line 283
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->switchToUnselected()V

    .line 284
    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->isSelected:Z

    return v0
.end method

.method public setAsCenter()V
    .locals 4

    .prologue
    .line 297
    new-instance v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;

    iget-object v1, v1, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    sget-object v2, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->CENTER:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    iget v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->tint:I

    invoke-direct {v0, v1, v2, v3}, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;-><init>(Landroid/content/Context;Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;I)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->background:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    .line 298
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->background:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    return-void
.end method

.method public setAsLeft()V
    .locals 4

    .prologue
    .line 287
    new-instance v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;

    iget-object v1, v1, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    sget-object v2, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->LEFT:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    iget v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->tint:I

    invoke-direct {v0, v1, v2, v3}, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;-><init>(Landroid/content/Context;Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;I)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->background:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    .line 288
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->background:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    return-void
.end method

.method public setAsRight()V
    .locals 4

    .prologue
    .line 292
    new-instance v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;

    iget-object v1, v1, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    sget-object v2, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->RIGHT:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    iget v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->tint:I

    invoke-direct {v0, v1, v2, v3}, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;-><init>(Landroid/content/Context;Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;I)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->background:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    .line 293
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->background:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    return-void
.end method

.method public setAsSingle()V
    .locals 4

    .prologue
    .line 302
    new-instance v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;

    iget-object v1, v1, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    sget-object v2, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->SINGLE:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    iget v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->tint:I

    invoke-direct {v0, v1, v2, v3}, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;-><init>(Landroid/content/Context;Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;I)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->background:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    .line 303
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->background:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 308
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    new-instance v1, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView$1;

    invoke-direct {v1, p0, p1}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView$1;-><init>(Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    return-void
.end method

.method public switchToSelected()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 317
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->background:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->setSelected(Z)V

    .line 318
    iput-boolean v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->isSelected:Z

    .line 319
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    iget v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->activeTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 320
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->invalidate()V

    .line 321
    return-void
.end method

.method public switchToUnselected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->background:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->setSelected(Z)V

    .line 325
    iput-boolean v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->isSelected:Z

    .line 326
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->button:Landroid/widget/Button;

    iget v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 327
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->invalidate()V

    .line 328
    return-void
.end method

.method protected updateSwitchingEffect()V
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->isSelected:Z

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->switchToSelected()V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->switchToUnselected()V

    goto :goto_0
.end method
