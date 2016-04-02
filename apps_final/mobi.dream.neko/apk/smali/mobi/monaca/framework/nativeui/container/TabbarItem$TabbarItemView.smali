.class public Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;
.super Landroid/widget/LinearLayout;
.source "TabbarItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/nativeui/container/TabbarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabbarItemView"
.end annotation


# instance fields
.field protected badgeTextView:Landroid/widget/TextView;

.field protected imageView:Landroid/widget/ImageView;

.field protected isSelected:Z

.field protected textView:Landroid/widget/TextView;

.field final synthetic this$0:Lmobi/monaca/framework/nativeui/container/TabbarItem;


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/nativeui/container/TabbarItem;Lmobi/monaca/framework/nativeui/UIContext;)V
    .locals 10
    .param p2, "context"    # Lmobi/monaca/framework/nativeui/UIContext;

    .prologue
    const/16 v9, 0x11

    const/4 v8, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 106
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->this$0:Lmobi/monaca/framework/nativeui/container/TabbarItem;

    .line 107
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->isSelected:Z

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->setOrientation(I)V

    .line 111
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "layout":Landroid/widget/FrameLayout;
    sget v1, Lmobi/monaca/framework/psedo/R$drawable;->monaca_selected_tab_bg:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->setBackgroundResource(I)V

    .line 115
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->textView:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->textView:Landroid/widget/TextView;

    const/16 v2, 0xe

    invoke-virtual {p2, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getFontSizeFromDip(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x34000000    # -3.3554432E7f

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 121
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->imageView:Landroid/widget/ImageView;

    .line 122
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->imageView:Landroid/widget/ImageView;

    const/16 v2, 0x10

    invoke-static {p2, v2}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {p2, v3}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v2, v6, v3, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 123
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 125
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 127
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    const/high16 v2, -0x670000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 129
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    const/16 v2, 0x9

    invoke-virtual {p2, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getFontSizeFromDip(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 131
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, -0x67000000

    invoke-virtual {v1, v7, v2, v7, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 132
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 133
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/monaca/framework/nativeui/UIContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$drawable;->monaca_tab_badge:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->imageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x5

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {p0, v9}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->setGravity(I)V

    .line 142
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->textView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v2}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->switchToUnselected()V

    .line 147
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 158
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 159
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-void
.end method

.method public initializeSelected()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->isSelected:Z

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 184
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->textView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->isSelected:Z

    .line 187
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->this$0:Lmobi/monaca/framework/nativeui/container/TabbarItem;

    # getter for: Lmobi/monaca/framework/nativeui/container/TabbarItem;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;
    invoke-static {v0}, Lmobi/monaca/framework/nativeui/container/TabbarItem;->access$200(Lmobi/monaca/framework/nativeui/container/TabbarItem;)Lmobi/monaca/framework/nativeui/UIContext;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->this$0:Lmobi/monaca/framework/nativeui/container/TabbarItem;

    iget-object v1, v1, Lmobi/monaca/framework/nativeui/container/TabbarItem;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->changeCurrentUri(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 190
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->invalidate()V

    .line 191
    return-void
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->isSelected:Z

    return v0
.end method

.method public setBadgeText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->badgeTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 150
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->this$0:Lmobi/monaca/framework/nativeui/container/TabbarItem;

    # getter for: Lmobi/monaca/framework/nativeui/container/TabbarItem;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;
    invoke-static {v1}, Lmobi/monaca/framework/nativeui/container/TabbarItem;->access$000(Lmobi/monaca/framework/nativeui/container/TabbarItem;)Lmobi/monaca/framework/nativeui/UIContext;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p1, v1}, Lmobi/monaca/framework/nativeui/UIUtil;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 151
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->this$0:Lmobi/monaca/framework/nativeui/container/TabbarItem;

    # getter for: Lmobi/monaca/framework/nativeui/container/TabbarItem;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;
    invoke-static {v1}, Lmobi/monaca/framework/nativeui/container/TabbarItem;->access$100(Lmobi/monaca/framework/nativeui/container/TabbarItem;)Lmobi/monaca/framework/nativeui/UIContext;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/UIContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 152
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 153
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    return-void

    .line 152
    :cond_0
    const v1, -0x66000001

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    return-void
.end method

.method public switchToSelected()V
    .locals 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->isSelected:Z

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 198
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->textView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->isSelected:Z

    .line 200
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->this$0:Lmobi/monaca/framework/nativeui/container/TabbarItem;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->handler:Landroid/os/Handler;

    new-instance v1, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView$1;

    invoke-direct {v1, p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView$1;-><init>(Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 208
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->invalidate()V

    .line 209
    return-void
.end method

.method public switchToUnselected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-boolean v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->isSelected:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 215
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->textView:Landroid/widget/TextView;

    const v1, -0x66000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iput-boolean v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->isSelected:Z

    .line 219
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 220
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->invalidate()V

    .line 221
    return-void
.end method
