.class public Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mParent:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

.field private mTab:Landroid/support/v7/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 334
    return-void
.end method


# virtual methods
.method attach(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    .param p2, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p3, "forList"    # Z

    .prologue
    .line 337
    iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mParent:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .line 338
    iput-object p2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 340
    if-eqz p3, :cond_0

    .line 341
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 344
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 345
    return-void
.end method

.method public bindTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;

    .prologue
    .line 348
    iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 349
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 350
    return-void
.end method

.method public getTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 354
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 356
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mParent:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mParent:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    iget v0, v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 359
    .local v0, "maxTabWidth":I
    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 360
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 363
    :cond_0
    return-void

    .line 356
    .end local v0    # "maxTabWidth":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 14

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x0

    const/16 v9, 0x8

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 366
    iget-object v5, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 367
    .local v5, "tab":Landroid/support/v7/app/ActionBar$Tab;
    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 368
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 369
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 370
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 371
    if-eqz v1, :cond_0

    .line 372
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 374
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 376
    :cond_1
    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 377
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 378
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    :cond_2
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 381
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    :cond_3
    :goto_0
    return-void

    .line 385
    :cond_4
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 386
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v8}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 387
    iput-object v10, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 390
    :cond_5
    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 391
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 393
    .local v6, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_a

    .line 394
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v8, :cond_6

    .line 395
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 396
    .local v3, "iconView":Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 398
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 399
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    invoke-virtual {p0, v3, v12}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 401
    iput-object v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 403
    .end local v3    # "iconView":Landroid/widget/ImageView;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    :cond_7
    :goto_1
    if-eqz v6, :cond_b

    .line 411
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v8, :cond_8

    .line 412
    new-instance v7, Landroid/support/v7/internal/widget/CompatTextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v7, v8, v10, v9}, Landroid/support/v7/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 414
    .local v7, "textView":Landroid/widget/TextView;
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 415
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 417
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 418
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    invoke-virtual {p0, v7}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 420
    iput-object v7, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 422
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "textView":Landroid/widget/TextView;
    :cond_8
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    :cond_9
    :goto_2
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 430
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 405
    :cond_a
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_7

    .line 406
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 424
    :cond_b
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_9

    .line 425
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
