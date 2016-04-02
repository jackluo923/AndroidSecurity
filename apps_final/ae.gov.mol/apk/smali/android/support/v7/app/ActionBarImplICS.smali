.class Landroid/support/v7/app/ActionBarImplICS;
.super Landroid/support/v7/app/ActionBar;
.source "ActionBarImplICS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarImplICS$TabWrapper;,
        Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;,
        Landroid/support/v7/app/ActionBarImplICS$OnNavigationListenerWrapper;
    }
.end annotation


# instance fields
.field final mActionBar:Landroid/app/ActionBar;

.field final mActivity:Landroid/app/Activity;

.field private mAddedMenuVisWrappers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field final mCallback:Landroid/support/v7/app/ActionBar$Callback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBar$Callback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/support/v7/app/ActionBar$Callback;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mAddedMenuVisWrappers:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS;->mActivity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Landroid/support/v7/app/ActionBarImplICS;->mCallback:Landroid/support/v7/app/ActionBar$Callback;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    .line 43
    return-void
.end method

.method private findAndRemoveMenuVisWrapper(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;
    .locals 4
    .param p1, "compatListener"    # Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplICS;->mAddedMenuVisWrappers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 48
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplICS;->mAddedMenuVisWrappers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;

    .line 49
    .local v2, "wrapper":Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;
    if-nez v2, :cond_1

    .line 50
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplICS;->mAddedMenuVisWrappers:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 47
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    iget-object v3, v2, Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;->mWrappedListener:Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    if-ne v3, p1, :cond_0

    .line 52
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplICS;->mAddedMenuVisWrappers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    .end local v2    # "wrapper":Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    new-instance v0, Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;

    invoke-direct {v0, p1}, Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;-><init>(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V

    .line 301
    .local v0, "w":Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS;->mAddedMenuVisWrappers:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 304
    .end local v0    # "w":Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;
    :cond_0
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;

    .end local p1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    iget-object v1, p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 220
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;I)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;

    .end local p1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    iget-object v1, p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1, p2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 230
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 234
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;

    .end local p1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    iget-object v1, p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 235
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;

    .end local p1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    iget-object v1, p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1, p2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 225
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBar$Tab;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 264
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 290
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public newTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 3

    .prologue
    .line 211
    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 212
    .local v0, "realTab":Landroid/app/ActionBar$Tab;
    new-instance v1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;-><init>(Landroid/support/v7/app/ActionBarImplICS;Landroid/app/ActionBar$Tab;)V

    .line 213
    .local v1, "result":Landroid/support/v7/app/ActionBarImplICS$TabWrapper;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 214
    return-object v1
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 250
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarImplICS;->findAndRemoveMenuVisWrapper(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;

    move-result-object v0

    .line 309
    .local v0, "l":Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 310
    return-void
.end method

.method public removeTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;

    .end local p1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    iget-object v1, p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 240
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->removeTabAt(I)V

    .line 245
    return-void
.end method

.method public selectTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    check-cast p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;

    .end local p1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    iget-object v1, p1, Landroid/support/v7/app/ActionBarImplICS$TabWrapper;->mWrappedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 255
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    return-void
.end method

.method public setCustomView(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 76
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/support/v7/app/ActionBar$LayoutParams;

    .prologue
    .line 66
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .local v0, "lp":Landroid/app/ActionBar$LayoutParams;
    iget v1, p2, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 70
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 71
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "showHomeAsUp"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 162
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 142
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 1
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 147
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 1
    .param p1, "showCustom"    # Z

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 172
    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 1
    .param p1, "showHome"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 157
    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 1
    .param p1, "showTitle"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 167
    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1
    .param p1, "useLogo"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 152
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 81
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 86
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/support/v7/app/ActionBar$OnNavigationListener;

    .prologue
    .line 100
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    if-eqz p2, :cond_0

    new-instance v0, Landroid/support/v7/app/ActionBarImplICS$OnNavigationListenerWrapper;

    invoke-direct {v0, p2}, Landroid/support/v7/app/ActionBarImplICS$OnNavigationListenerWrapper;-><init>(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 102
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setLogo(I)V

    .line 91
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 202
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 107
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 137
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 127
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 285
    return-void
.end method
