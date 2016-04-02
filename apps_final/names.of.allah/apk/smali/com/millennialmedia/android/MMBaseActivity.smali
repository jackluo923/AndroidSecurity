.class Lcom/millennialmedia/android/MMBaseActivity;
.super Ljava/lang/Object;


# instance fields
.field activity:Lcom/millennialmedia/android/MMActivity;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->finishSuper()V

    return-void
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/android/MMActivity;->onActivityResultSuper(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->onConfigurationChangedSuper(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->onCreateSuper(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onDestroySuper()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMActivity;->onKeyDownSuper(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onPauseSuper()V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onRestartSuper()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->onRestoreInstanceStateSuper(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onResumeSuper()V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onRetainNonConfigurationInstanceSuper()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->onSaveInstanceStateSuper(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onStartSuper()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onStopSuper()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->onWindowFocusChangedSuper(Z)V

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final requestWindowFeature(I)Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final setResult(I)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->setResult(I)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->setTheme(I)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
