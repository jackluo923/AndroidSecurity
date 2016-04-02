.class public Lcom/millennialmedia/android/MMActivity;
.super Landroid/app/Activity;


# instance fields
.field creatorAdImplInternalId:J

.field private mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/millennialmedia/android/MMActivity;->creatorAdImplInternalId:J

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->overlayClosed(Landroid/content/Context;J)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public finishSuper()V
    .locals 2

    iget-wide v0, p0, Lcom/millennialmedia/android/MMActivity;->creatorAdImplInternalId:J

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->overlayClosed(Landroid/content/Context;J)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/android/MMBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method onActivityResultSuper(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method onConfigurationChangedSuper(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "internalId"

    const-wide/16 v3, -0x4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/MMActivity;->creatorAdImplInternalId:J

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "class"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMBaseActivity;

    iput-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    iput-object p0, v0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not start activity for %s. %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->finish()V

    goto :goto_0
.end method

.method onCreateSuper(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onDestroy()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto :goto_0
.end method

.method onDestroySuper()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onKeyDownSuper(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onPause()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    goto :goto_0
.end method

.method onPauseSuper()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onRestart()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    goto :goto_0
.end method

.method onRestartSuper()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method onRestoreInstanceStateSuper(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onResume()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    goto :goto_0
.end method

.method onResumeSuper()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method onRetainNonConfigurationInstanceSuper()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method onSaveInstanceStateSuper(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onStart()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    goto :goto_0
.end method

.method onStartSuper()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onStop()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    goto :goto_0
.end method

.method onStopSuper()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->mmBaseActivity:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onWindowFocusChanged(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method onWindowFocusChangedSuper(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method
