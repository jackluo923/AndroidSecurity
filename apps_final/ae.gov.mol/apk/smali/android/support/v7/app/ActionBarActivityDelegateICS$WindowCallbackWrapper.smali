.class Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateICS.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarActivityDelegateICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WindowCallbackWrapper"
.end annotation


# instance fields
.field final mWrapped:Landroid/view/Window$Callback;

.field final synthetic this$0:Landroid/support/v7/app/ActionBarActivityDelegateICS;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateICS;Landroid/view/Window$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/view/Window$Callback;

    .prologue
    .line 239
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    .line 241
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 352
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateICS;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateICS;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 353
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 346
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateICS;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateICS;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 347
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 316
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 306
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 275
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 321
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 290
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 325
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 326
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 301
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 311
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
