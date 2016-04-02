.class Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
.super Landroid/support/v7/internal/view/menu/BaseMenuWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;,
        Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;,
        Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;,
        Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/view/menu/BaseMenuWrapper",
        "<",
        "Landroid/view/MenuItem;",
        ">;",
        "Landroid/support/v4/internal/view/SupportMenuItem;"
    }
.end annotation


# instance fields
.field private final mEmulateProviderVisibilityOverride:Z

.field private mLastRequestVisible:Z


# direct methods
.method constructor <init>(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "object"    # Landroid/view/MenuItem;

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;-><init>(Landroid/view/MenuItem;Z)V

    .line 44
    return-void
.end method

.method constructor <init>(Landroid/view/MenuItem;Z)V
    .locals 1
    .param p1, "object"    # Landroid/view/MenuItem;
    .param p2, "emulateProviderVisibilityOverride"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;-><init>(Ljava/lang/Object;)V

    .line 38
    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z

    .line 39
    iput-boolean p2, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z

    .line 40
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    .prologue
    .line 31
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    .prologue
    .line 31
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z

    return v0
.end method


# virtual methods
.method final checkActionProviderOverrideVisibility()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-boolean v2, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z

    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v0

    .line 326
    .local v0, "provider":Landroid/support/v4/view/ActionProvider;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->wrappedSetVisible(Z)Landroid/view/MenuItem;

    .line 328
    const/4 v1, 0x1

    .line 331
    .end local v0    # "provider":Landroid/support/v4/view/ActionProvider;
    :cond_0
    return v1
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method createActionProviderWrapper(Landroid/support/v4/view/ActionProvider;)Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    .locals 1
    .param p1, "provider"    # Landroid/support/v4/view/ActionProvider;

    .prologue
    .line 317
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/support/v4/view/ActionProvider;)V

    return-object v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "actionView":Landroid/view/View;
    instance-of v1, v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    if-eqz v1, :cond_0

    .line 254
    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    .end local v0    # "actionView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->getWrappedView()Landroid/view/View;

    move-result-object v0

    .line 256
    :cond_0
    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .locals 2

    .prologue
    .line 311
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    .line 313
    .local v0, "providerWrapper":Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/support/v4/view/ActionProvider;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "provider"    # Landroid/view/ActionProvider;

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 262
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->checkActionProviderOverrideVisibility()Z

    .line 265
    :cond_0
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 240
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 242
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, "actionView":Landroid/view/View;
    instance-of v1, v0, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroid/view/MenuItem;

    new-instance v2, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v2, v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 247
    :cond_0
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 230
    instance-of v1, p1, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz v1, :cond_0

    .line 231
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V

    .end local p1    # "view":Landroid/view/View;
    .local v0, "view":Landroid/view/View;
    move-object p1, v0

    .line 233
    .end local v0    # "view":Landroid/view/View;
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 234
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .param p1, "alphaChar"    # C

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 137
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checkable"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 148
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 159
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 187
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 98
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 92
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 109
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 126
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 290
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 291
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    new-instance v1, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;-><init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 209
    return-object p0

    .line 207
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 120
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 1
    .param p1, "actionEnum"    # I

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 220
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "actionEnum"    # I

    .prologue
    .line 224
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 225
    return-object p0
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/support/v4/view/ActionProvider;

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->createActionProviderWrapper(Landroid/support/v4/view/ActionProvider;)Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 306
    return-object p0

    .line 304
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 3
    .param p1, "listener"    # Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .prologue
    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    new-instance v1, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;-><init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 299
    return-object v2

    :cond_0
    move-object v1, v2

    .line 297
    goto :goto_0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 70
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 64
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 81
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 169
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z

    if-eqz v0, :cond_0

    .line 170
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z

    .line 172
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->checkActionProviderOverrideVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    .end local p0    # "this":Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->wrappedSetVisible(Z)Landroid/view/MenuItem;

    move-result-object p0

    goto :goto_0
.end method

.method final wrappedSetVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method
