.class Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;
.super Landroid/widget/FrameLayout;
.source "SegmentComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/nativeui/component/SegmentComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SegmentComponentView"
.end annotation


# instance fields
.field protected currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

.field protected disabled:Z

.field protected items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;",
            ">;"
        }
    .end annotation
.end field

.field protected layout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/nativeui/component/SegmentComponent;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 130
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;

    .line 131
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 125
    iput-boolean v2, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->disabled:Z

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    .line 133
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->layout:Landroid/widget/LinearLayout;

    .line 134
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->createFrameView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    return-void
.end method


# virtual methods
.method protected addSegmentItemView(Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;)V
    .locals 5
    .param p1, "itemView"    # Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    .prologue
    .line 179
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->layout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 183
    invoke-virtual {p1}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->switchToSelected()V

    .line 184
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    .line 189
    :goto_0
    invoke-virtual {p1, p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void

    .line 186
    :cond_0
    invoke-virtual {p1}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->switchToUnselected()V

    goto :goto_0
.end method

.method public createFrameView()Landroid/view/View;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;

    iget-object v1, v1, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "v":Landroid/view/View;
    sget v1, Lmobi/monaca/framework/psedo/R$drawable;->monaca_button_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 146
    return-object v0
.end method

.method public getAllSegmentItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    iget-boolean v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->disabled:Z

    if-nez v3, :cond_2

    move-object v2, p1

    .line 221
    check-cast v2, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    .line 222
    .local v2, "item":Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;
    invoke-virtual {v2}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->switchToSelected()V

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "activeIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 226
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_3

    .line 227
    move v0, v1

    .line 229
    :try_start_0
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;

    iget-object v3, v3, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->style:Lorg/json/JSONObject;

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_style_activeindex:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_1
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;

    iget-object v3, v3, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_script_segmentindex:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->semicolon:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmobi/monaca/framework/nativeui/UIContext;->react(Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    if-ne v2, v3, :cond_4

    .line 238
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;

    iget-object v3, v3, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->eventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

    invoke-virtual {v3}, Lmobi/monaca/framework/nativeui/ComponentEventer;->onTap()V

    .line 243
    :goto_2
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    if-eq v3, v2, :cond_1

    .line 244
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    invoke-virtual {v3}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->switchToUnselected()V

    .line 246
    :cond_1
    iput-object v2, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    .line 249
    .end local v0    # "activeIndex":I
    .end local v1    # "i":I
    .end local v2    # "item":Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;
    :cond_2
    return-void

    .line 225
    .restart local v0    # "activeIndex":I
    .restart local v1    # "i":I
    .restart local v2    # "item":Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_4
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->this$0:Lmobi/monaca/framework/nativeui/component/SegmentComponent;

    iget-object v3, v3, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->eventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

    invoke-virtual {v3}, Lmobi/monaca/framework/nativeui/ComponentEventer;->onChange()V

    goto :goto_2

    .line 230
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public removeAllSegmentItemViews()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    .line 160
    return-void
.end method

.method public setActiveIndex(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->switchToUnselected()V

    .line 166
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 167
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    .line 168
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->switchToSelected()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->currentItemView:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    goto :goto_0
.end method

.method public setAsSingle()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->setAsSingle()V

    .line 155
    return-void
.end method

.method public setDisable(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->disabled:Z

    .line 176
    return-void
.end method

.method protected updateSegmentItemsWidth()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 193
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v5, "widths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    .line 195
    .local v4, "segment":Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;
    invoke-virtual {v4, v7, v7}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->measure(II)V

    .line 196
    invoke-virtual {v4}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->getMeasuredWidth()I

    .line 197
    invoke-virtual {v4}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v4    # "segment":Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 203
    .local v2, "maxWidth":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    .line 204
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0xf

    invoke-static {v6, v7}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    sub-int/2addr v2, v6

    .line 206
    :cond_1
    iget-object v6, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    .line 207
    .restart local v4    # "segment":Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;
    invoke-virtual {v4}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 208
    .local v3, "p":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 209
    invoke-virtual {v4, v3}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 212
    .end local v3    # "p":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "segment":Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "frame":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 214
    .local v3, "p":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/2addr v6, v2

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 215
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    return-void
.end method
