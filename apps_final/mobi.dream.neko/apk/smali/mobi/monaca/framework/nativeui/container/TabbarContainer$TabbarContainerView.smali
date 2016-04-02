.class public Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;
.super Landroid/widget/LinearLayout;
.source "TabbarContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/nativeui/container/TabbarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabbarContainerView"
.end annotation


# instance fields
.field protected content:Landroid/widget/LinearLayout;

.field protected currentItemView:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

.field protected items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmobi/monaca/framework/nativeui/container/TabbarContainer;


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/nativeui/container/TabbarContainer;Lmobi/monaca/framework/nativeui/UIContext;)V
    .locals 5
    .param p2, "context"    # Lmobi/monaca/framework/nativeui/UIContext;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 137
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->this$0:Lmobi/monaca/framework/nativeui/container/TabbarContainer;

    .line 138
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->items:Ljava/util/ArrayList;

    .line 134
    const/4 v2, 0x0

    iput-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->currentItemView:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    .line 139
    invoke-virtual {p0, v1}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->setOrientation(I)V

    .line 141
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->content:Landroid/widget/LinearLayout;

    .line 142
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->content:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 145
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->content:Landroid/widget/LinearLayout;

    sget v3, Lmobi/monaca/framework/psedo/R$drawable;->monaca_tabbar_bg:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 147
    invoke-virtual {p2}, Lmobi/monaca/framework/nativeui/UIContext;->getSettings()Lmobi/monaca/framework/InternalSettings;

    move-result-object v2

    iget-boolean v2, v2, Lmobi/monaca/framework/InternalSettings;->disableUIContainerBorder:Z

    if-eqz v2, :cond_0

    .line 148
    .local v0, "borderWidth":I
    :goto_0
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->createBorderView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->content:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    return-void

    .end local v0    # "borderWidth":I
    :cond_0
    move v0, v1

    .line 147
    goto :goto_0
.end method


# virtual methods
.method public addTabbarItemView(Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;)V
    .locals 5
    .param p1, "itemView"    # Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 167
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 170
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 171
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 173
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->this$0:Lmobi/monaca/framework/nativeui/container/TabbarContainer;

    # getter for: Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;
    invoke-static {v2}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->access$100(Lmobi/monaca/framework/nativeui/container/TabbarContainer;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "activeIndex"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, "activeIndex":I
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v0, :cond_0

    .line 177
    invoke-virtual {p1}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->initializeSelected()V

    .line 178
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->currentItemView:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    .line 181
    :cond_0
    invoke-virtual {p1, p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method protected createBorderView()Landroid/view/View;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->this$0:Lmobi/monaca/framework/nativeui/container/TabbarContainer;

    # getter for: Lmobi/monaca/framework/nativeui/container/TabbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;
    invoke-static {v1}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->access$000(Lmobi/monaca/framework/nativeui/container/TabbarContainer;)Lmobi/monaca/framework/nativeui/UIContext;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "v":Landroid/view/View;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 163
    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getItemSize()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    move-object v1, p1

    check-cast v1, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    .line 205
    .local v1, "item":Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;
    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->switchToSelected()V

    .line 206
    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->requestFocus()Z

    .line 208
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 211
    .local v2, "newActiveIndex":I
    :try_start_0
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->this$0:Lmobi/monaca/framework/nativeui/container/TabbarContainer;

    # getter for: Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;
    invoke-static {v3}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->access$200(Lmobi/monaca/framework/nativeui/container/TabbarContainer;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "activeIndex"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v2    # "newActiveIndex":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->currentItemView:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    if-eqz v3, :cond_1

    .line 218
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->currentItemView:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    invoke-virtual {v3}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->switchToUnselected()V

    .line 219
    iput-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->currentItemView:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    .line 220
    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->switchToSelected()V

    .line 222
    :cond_1
    return-void

    .line 212
    .restart local v2    # "newActiveIndex":I
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public resetBackground()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->content:Landroid/widget/LinearLayout;

    sget v1, Lmobi/monaca/framework/psedo/R$drawable;->monaca_tabbar_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 154
    return-void
.end method

.method public setActiveIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 186
    const/4 p1, 0x0

    .line 188
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->currentItemView:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->currentItemView:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->switchToUnselected()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->currentItemView:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    .line 192
    :cond_1
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_2

    .line 193
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->currentItemView:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    .line 194
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->currentItemView:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->switchToSelected()V

    .line 196
    :cond_2
    return-void
.end method
