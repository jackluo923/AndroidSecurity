.class public Lmobi/monaca/framework/MonacaSScreenActivity;
.super Landroid/app/Activity;
.source "MonacaSScreenActivity.java"


# static fields
.field protected static final SPLASH_IMAGE_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected app:Lmobi/monaca/framework/MonacaApplication;

.field protected handler:Landroid/os/Handler;

.field protected pageLauncher:Ljava/lang/Runnable;

.field protected splashView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lmobi/monaca/framework/MonacaSScreenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/MonacaSScreenActivity;->TAG:Ljava/lang/String;

    .line 23
    sget v0, Lmobi/monaca/framework/psedo/R$string;->splash_image_path:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/MonacaSScreenActivity;->SPLASH_IMAGE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setupLocalFileBootLoaderAndRunProject(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "pageActivityLauncher"    # Ljava/lang/Runnable;

    .prologue
    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->mShouldExtractAssets:Z

    .line 90
    new-instance v0, Lmobi/monaca/framework/MonacaSScreenActivity$2;

    invoke-direct {v0, p0}, Lmobi/monaca/framework/MonacaSScreenActivity$2;-><init>(Lmobi/monaca/framework/MonacaSScreenActivity;)V

    invoke-static {p0, p1, v0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->setup(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected createActivityIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 129
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lmobi/monaca/framework/MonacaPageActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaSScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 133
    .local v3, "received":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 135
    const-string v4, "get_pushdata_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/monaca/utils/gcm/GCMPushDataset;

    .line 136
    .local v2, "pushdata":Lmobi/monaca/utils/gcm/GCMPushDataset;
    if-eqz v2, :cond_0

    .line 137
    const-string v4, "get_pushdata_key"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 140
    .end local v2    # "pushdata":Lmobi/monaca/utils/gcm/GCMPushDataset;
    :cond_0
    return-object v1
.end method

.method protected getSplashFileStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 174
    :try_start_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaSScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lmobi/monaca/framework/MonacaSScreenActivity;->SPLASH_IMAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected goNextActivityWithoutSplash()V
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaSScreenActivity;->createActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Lmobi/monaca/framework/psedo/R$string;->extra_key_without_splash:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaSScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaSScreenActivity;->finish()V

    .line 148
    return-void
.end method

.method protected hasSplashScreenExists()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v3, p0, Lmobi/monaca/framework/MonacaSScreenActivity;->app:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v3}, Lmobi/monaca/framework/MonacaApplication;->getAppJsonSetting()Lmobi/monaca/framework/AppJsonSetting;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/monaca/framework/AppJsonSetting;->getAutoHide()Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    :goto_0
    return v2

    .line 155
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaSScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    sget-object v4, Lmobi/monaca/framework/MonacaSScreenActivity;->SPLASH_IMAGE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 157
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v2, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected loadAppJson()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmobi/monaca/framework/MonacaSScreenActivity;->app:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaApplication;->loadAppJsonSetting()V

    .line 106
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lmobi/monaca/framework/MonacaSScreenActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/MonacaSScreenActivity;->pageLauncher:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lmobi/monaca/framework/MonacaSScreenActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity;->pageLauncher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 170
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaSScreenActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/MonacaApplication;

    iput-object v0, p0, Lmobi/monaca/framework/MonacaSScreenActivity;->app:Lmobi/monaca/framework/MonacaApplication;

    .line 35
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaSScreenActivity;->loadAppJson()V

    .line 36
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaSScreenActivity;->setup()V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 183
    return-void
.end method

.method protected registerGCM()V
    .locals 5

    .prologue
    .line 111
    :try_start_0
    iget-object v3, p0, Lmobi/monaca/framework/MonacaSScreenActivity;->app:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v3}, Lmobi/monaca/framework/MonacaApplication;->getAppJsonSetting()Lmobi/monaca/framework/AppJsonSetting;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/monaca/framework/AppJsonSetting;->getSenderId()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "senderId":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 114
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 115
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "regId":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 126
    .end local v1    # "regId":Ljava/lang/String;
    .end local v2    # "senderId":Ljava/lang/String;
    :goto_0
    return-void

    .line 119
    .restart local v1    # "regId":Ljava/lang/String;
    .restart local v2    # "senderId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaSScreenActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v3, v1}, Lmobi/monaca/framework/MonacaApplication;->sendGCMRegisterIdToAppAPI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v1    # "regId":Ljava/lang/String;
    .end local v2    # "senderId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected setup()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lmobi/monaca/framework/MonacaSScreenActivity$1;

    invoke-direct {v0, p0}, Lmobi/monaca/framework/MonacaSScreenActivity$1;-><init>(Lmobi/monaca/framework/MonacaSScreenActivity;)V

    .line 74
    .local v0, "pageActivityLauncher":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaSScreenActivity;->shouldExtractAsset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0, v0}, Lmobi/monaca/framework/MonacaSScreenActivity;->setupLocalFileBootLoaderAndRunProject(Ljava/lang/Runnable;)V

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity;->app:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaApplication;->needToUseBootloader()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 80
    const/4 v1, 0x0

    sput-boolean v1, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->mShouldExtractAssets:Z

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0, v0}, Lmobi/monaca/framework/MonacaSScreenActivity;->setupLocalFileBootLoaderAndRunProject(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected shouldExtractAsset()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmobi/monaca/framework/MonacaSScreenActivity;->app:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaApplication;->getAppJsonSetting()Lmobi/monaca/framework/AppJsonSetting;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/monaca/framework/AppJsonSetting;->shouldExtractAssets()Z

    move-result v0

    return v0
.end method
