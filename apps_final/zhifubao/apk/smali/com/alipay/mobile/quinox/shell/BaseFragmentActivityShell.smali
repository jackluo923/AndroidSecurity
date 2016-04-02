.class public Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;
.super Landroid/support/v4/app/FragmentActivity;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field protected activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

.field protected defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

.field protected dexLoader:Ldalvik/system/DexClassLoader;

.field protected targetActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    const-class v1, Landroid/content/Intent;

    aput-object v1, v0, v5

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p3, v1, v5

    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onActivityResult"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/app/Activity;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onChildTitleChanged"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onCreateDialog"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v4

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onCreateDialog"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1, v2, v2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onLowMemory()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/apk/common/AbstractEngine;->onActivityShellPause()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v1, "onPostResume"

    invoke-static {v0, v1, v2, v2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Landroid/app/Dialog;

    aput-object v1, v0, v4

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onPrepareDialog"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Landroid/app/Dialog;

    aput-object v1, v0, v4

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v5

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    aput-object p3, v1, v5

    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onPrepareDialog"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/apk/common/AbstractEngine;->onActivityShellResume()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onResumeFragments()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v1, "onResumeFragments"

    invoke-static {v0, v1, v2, v2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onSearchRequested()Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onTitleChanged"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
