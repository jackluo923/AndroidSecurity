.class Lcom/millennialmedia/android/AdViewOverlayActivity;
.super Lcom/millennialmedia/android/MMBaseActivity;


# instance fields
.field private accelerometerEventListener:Landroid/hardware/SensorEventListener;

.field private adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

.field hasFocus:Z

.field private final interval:I

.field isPaused:Z

.field private sensorManager:Landroid/hardware/SensorManager;

.field private settings:Lcom/millennialmedia/android/OverlaySettings;

.field private final threshold:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/android/MMBaseActivity;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->threshold:F

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->interval:I

    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayActivity$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdViewOverlayActivity$1;-><init>(Lcom/millennialmedia/android/AdViewOverlayActivity;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/AdViewOverlayActivity;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/AdViewOverlayActivity;->didAccelerate(FFF)V

    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/AdViewOverlayActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->didShake(F)V

    return-void
.end method

.method private didAccelerate(FFF)V
    .locals 4

    const-string v0, "Accelerometer x:%fy:%fz:%f"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:didAccelerate("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->injectJS(Ljava/lang/String;)V

    return-void
.end method

.method private didShake(F)V
    .locals 4

    const-string v0, "Phone shaken: %f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:didShake("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->injectJS(Ljava/lang/String;)V

    return-void
.end method

.method private lockOrientation()V
    .locals 3

    const/16 v2, 0x9

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setRequestedOrientation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private startAccelerating()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Accelerometer not supported by this device. Unregistering listener."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iput-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    iput-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    :cond_0
    return-void
.end method

.method private stopAccelerating()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->attachWebViewToLink()V

    :cond_0
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->inlineConfigChange()V

    :cond_0
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    const v0, 0x1030010

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/AdViewOverlayActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "settings"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/OverlaySettings;

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v0}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->log()V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v0, v0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v0, v0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->unlockScreenOrientation()V

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Path: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v2, 0x34c60db9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v1, p0, v2}, Lcom/millennialmedia/android/AdViewOverlayView;-><init>(Lcom/millennialmedia/android/AdViewOverlayActivity;Lcom/millennialmedia/android/OverlaySettings;)V

    iput-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->setMraidExpanded()V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->hasExpandUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v1, v1, Lcom/millennialmedia/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->getWebContent(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->lockOrientation()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v1, v1, Lcom/millennialmedia/android/OverlaySettings;->content:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v2, v2, Lcom/millennialmedia/android/OverlaySettings;->adUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/android/AdViewOverlayView;->loadWebContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onDestroy()V

    const-string v0, "Overlay onDestroy"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->finishOverlayWithAnimation()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->isPaused:Z

    const-string v0, "Overlay onPause"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->stopAccelerating()V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->stop()Lcom/millennialmedia/android/MMJSResponse;

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->pauseVideo()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setResult(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->pauseWebViewVideo()V

    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->isPaused:Z

    const-string v0, "Overlay onResume"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->startAccelerating()V

    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->hasFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->resumeVideo()V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->addBlackView()V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->resumeWebViewVideo()V

    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onResume()V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->getNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "adViewId"

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->hasFocus:Z

    iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->isPaused:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->adViewOverlayView:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->resumeVideo()V

    :cond_0
    return-void
.end method

.method setAllowOrientationChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean p1, v0, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->unlockScreenOrientation()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->lockOrientation()V

    goto :goto_0
.end method

.method setRequestedOrientationLandscape()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    const-string v1, "landscape"

    iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean v2, v0, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method setRequestedOrientationPortrait()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    const-string v1, "portrait"

    iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->settings:Lcom/millennialmedia/android/OverlaySettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method unlockScreenOrientation()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    return-void
.end method
