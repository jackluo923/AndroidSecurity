.class public Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
.super Landroid/widget/LinearLayout;
.source "ToolbarContainerView.java"


# static fields
.field protected static final SUBTITLE_ID:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field protected static final TITLE_ID:I

.field private static mContentViewId:I


# instance fields
.field protected center:Landroid/widget/LinearLayout;

.field protected content:Landroid/widget/FrameLayout;

.field protected context:Lmobi/monaca/framework/nativeui/UIContext;

.field isTop:Z

.field protected left:Landroid/widget/LinearLayout;

.field private mDefaultSubtitleFontSize:I

.field private mDefaultTitleFontSize:I

.field protected right:Landroid/widget/LinearLayout;

.field private subTitleMainTitleView:Landroid/widget/TextView;

.field private subtitleView:Landroid/widget/TextView;

.field private titleImageView:Landroid/widget/ImageView;

.field protected titleImageWrapper:Landroid/widget/LinearLayout;

.field protected titleSubtitleWrapper:Landroid/widget/LinearLayout;

.field private titleView:Landroid/widget/TextView;

.field protected titleWrapper:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->TAG:Ljava/lang/String;

    .line 46
    const/16 v0, 0x2710

    sput v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->mContentViewId:I

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Z)V
    .locals 13
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "isTop"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v12, 0x11

    const/4 v11, -0x2

    const/4 v4, 0x1

    const/4 v10, -0x1

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-boolean v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->isTop:Z

    .line 87
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->context:Lmobi/monaca/framework/nativeui/UIContext;

    .line 88
    iput-boolean p2, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->isTop:Z

    .line 90
    invoke-virtual {p0, v4}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setOrientation(I)V

    .line 91
    invoke-virtual {p0, v4}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setFocusable(Z)V

    .line 92
    invoke-virtual {p0, v4}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setFocusableInTouchMode(Z)V

    .line 94
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->content:Landroid/widget/FrameLayout;

    .line 95
    sget v5, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->mContentViewId:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->mContentViewId:I

    .line 96
    sget v5, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->mContentViewId:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setId(I)V

    .line 98
    invoke-virtual {p1}, Lmobi/monaca/framework/nativeui/UIContext;->getSettings()Lmobi/monaca/framework/InternalSettings;

    move-result-object v5

    iget-boolean v5, v5, Lmobi/monaca/framework/InternalSettings;->disableUIContainerBorder:Z

    if-eqz v5, :cond_0

    move v0, v3

    .line 100
    .local v0, "borderWidth":I
    :goto_0
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->createBorderView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->content:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->createBorderView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->left:Landroid/widget/LinearLayout;

    .line 105
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->left:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->left:Landroid/widget/LinearLayout;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 108
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    .line 109
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 112
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->right:Landroid/widget/LinearLayout;

    .line 113
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 114
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->right:Landroid/widget/LinearLayout;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 116
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleView:Landroid/widget/TextView;

    .line 117
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setId(I)V

    .line 118
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleView:Landroid/widget/TextView;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x34000000    # -3.3554432E7f

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 120
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 121
    const/16 v5, 0x12

    invoke-virtual {p1, v5}, Lmobi/monaca/framework/nativeui/UIContext;->getFontSizeFromDip(I)I

    move-result v5

    iput v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->mDefaultTitleFontSize:I

    .line 122
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleView:Landroid/widget/TextView;

    iget v6, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->mDefaultTitleFontSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageView:Landroid/widget/ImageView;

    .line 126
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleWrapper:Landroid/widget/LinearLayout;

    .line 127
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleWrapper:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 130
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleWrapper:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageWrapper:Landroid/widget/LinearLayout;

    .line 133
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageWrapper:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 136
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageWrapper:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageView:Landroid/widget/ImageView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x41880000    # 17.0f

    invoke-direct {v7, v11, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subTitleMainTitleView:Landroid/widget/TextView;

    .line 140
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subTitleMainTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setId(I)V

    .line 141
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subTitleMainTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subTitleMainTitleView:Landroid/widget/TextView;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x34000000    # -3.3554432E7f

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 143
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subTitleMainTitleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 144
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subTitleMainTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 145
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subTitleMainTitleView:Landroid/widget/TextView;

    iget v6, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->mDefaultTitleFontSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    const/16 v5, 0xc

    invoke-virtual {p1, v5}, Lmobi/monaca/framework/nativeui/UIContext;->getFontSizeFromDip(I)I

    move-result v5

    iput v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->mDefaultSubtitleFontSize:I

    .line 148
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subtitleView:Landroid/widget/TextView;

    .line 149
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setId(I)V

    .line 150
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subtitleView:Landroid/widget/TextView;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x34000000    # -3.3554432E7f

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 152
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 153
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subtitleView:Landroid/widget/TextView;

    iget v6, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->mDefaultSubtitleFontSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 155
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-direct {v1, v11, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 158
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    .line 159
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 160
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 162
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subTitleMainTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 168
    .local v2, "p":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->content:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->left:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x13

    invoke-direct {v5, v11, v10, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->content:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->right:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v11, v10, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->content:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v11, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 174
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->content:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->content:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->content:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    return-void

    .end local v0    # "borderWidth":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "p":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    move v0, v4

    .line 98
    goto/16 :goto_0
.end method


# virtual methods
.method protected createBorderView()Landroid/view/View;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->context:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "v":Landroid/view/View;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected measureInnerWidth(Landroid/widget/LinearLayout;)I
    .locals 3
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 58
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 59
    .local v1, "widthSpecMode":I
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 60
    .local v0, "canResizeWidth":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->prepareCenterLayoutWidth()V

    .line 63
    :cond_0
    return-void

    .line 59
    .end local v0    # "canResizeWidth":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareCenterLayoutWidth()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 66
    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->left:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->measureInnerWidth(Landroid/widget/LinearLayout;)I

    move-result v0

    .line 67
    .local v0, "leftComponentWidth":I
    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->right:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->measureInnerWidth(Landroid/widget/LinearLayout;)I

    move-result v3

    .line 68
    .local v3, "rightComponentWidth":I
    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->context:Lmobi/monaca/framework/nativeui/UIContext;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    .line 69
    .local v2, "padding":I
    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 70
    .local v1, "p":Landroid/view/ViewGroup$MarginLayoutParams;
    add-int v4, v0, v2

    add-int v5, v3, v2

    invoke-virtual {v1, v4, v6, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 71
    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void
.end method

.method public setCenterView(Ljava/util/List;Z)V
    .locals 11
    .param p2, "expandItemWidth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobi/monaca/framework/nativeui/component/ToolbarComponent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lmobi/monaca/framework/nativeui/component/ToolbarComponent;>;"
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 238
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    if-eqz p2, :cond_2

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/component/ToolbarComponent;

    .line 242
    .local v0, "component":Lmobi/monaca/framework/nativeui/component/Component;
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->context:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 243
    .local v1, "container":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 245
    .local v2, "containerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 246
    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/Component;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->context:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v5, v9}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->context:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v6, v9}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v5, v8, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 252
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 254
    .end local v0    # "component":Lmobi/monaca/framework/nativeui/component/Component;
    .end local v1    # "container":Landroid/widget/FrameLayout;
    .end local v2    # "containerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->content:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->left:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 255
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->content:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 269
    :cond_1
    return-void

    .line 259
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/component/ToolbarComponent;

    .line 260
    .restart local v0    # "component":Lmobi/monaca/framework/nativeui/component/Component;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    .restart local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->context:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v5, v9}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->context:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v6, v9}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v5, v8, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 263
    instance-of v5, v0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    if-eqz v5, :cond_3

    .line 264
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 266
    :cond_3
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/Component;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setLeftView(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobi/monaca/framework/nativeui/component/ToolbarComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lmobi/monaca/framework/nativeui/component/ToolbarComponent;>;"
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 227
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->left:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/component/ToolbarComponent;

    .line 229
    .local v0, "component":Lmobi/monaca/framework/nativeui/component/Component;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 230
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x13

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 231
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->context:Lmobi/monaca/framework/nativeui/UIContext;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 232
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->left:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/Component;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 234
    .end local v0    # "component":Lmobi/monaca/framework/nativeui/component/Component;
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setRightView(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobi/monaca/framework/nativeui/component/ToolbarComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lmobi/monaca/framework/nativeui/component/ToolbarComponent;>;"
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 217
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/component/ToolbarComponent;

    .line 219
    .local v0, "component":Lmobi/monaca/framework/nativeui/component/Component;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x15

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 221
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->context:Lmobi/monaca/framework/nativeui/UIContext;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 222
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->right:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/Component;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 224
    .end local v0    # "component":Lmobi/monaca/framework/nativeui/component/Component;
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setSubitleFontScale(Ljava/lang/String;)V
    .locals 3
    .param p1, "subtitleFontScale"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string v1, ""

    if-ne p1, v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 312
    .local v0, "titleFontScaleFloat":F
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subtitleView:Landroid/widget/TextView;

    iget v2, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->mDefaultSubtitleFontSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public setSubtitleColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "colorString"    # Ljava/lang/String;

    .prologue
    .line 287
    sget v0, Lmobi/monaca/framework/psedo/R$string;->sharp:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lmobi/monaca/framework/psedo/R$string;->sharp:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 290
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subtitleView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    return-void
.end method

.method public setTitleColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "colorString"    # Ljava/lang/String;

    .prologue
    .line 273
    sget v0, Lmobi/monaca/framework/psedo/R$string;->sharp:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lmobi/monaca/framework/psedo/R$string;->sharp:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    :cond_1
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subTitleMainTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subTitleMainTitleView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    :cond_2
    return-void
.end method

.method public setTitleFontScale(Ljava/lang/String;)V
    .locals 4
    .param p1, "titleFontScale"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 294
    const-string v1, ""

    if-ne p1, v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 298
    .local v0, "titleFontScaleFloat":F
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 299
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleView:Landroid/widget/TextView;

    iget v2, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->mDefaultTitleFontSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 301
    :cond_2
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subTitleMainTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->subTitleMainTitleView:Landroid/widget/TextView;

    iget v2, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->mDefaultTitleFontSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public setTitleSubtitle(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subtitle"    # Ljava/lang/String;
    .param p3, "titleImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 186
    if-eqz p3, :cond_1

    .line 187
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    :goto_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    if-eqz p3, :cond_0

    .line 212
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 214
    :cond_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 192
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 197
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->center:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleSubtitleWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->titleImageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
