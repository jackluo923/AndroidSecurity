.class public Lcom/appyet/activity/YouTubePlayerActivity;
.super Lcom/appyet/activity/au;

# interfaces
.implements Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private a:Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;

.field private b:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/appyet/context/ApplicationContext;

.field private f:Lcom/google/android/youtube/player/YouTubePlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/activity/au;-><init>()V

    return-void
.end method

.method private b()Landroid/content/Intent;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/YouTubePlayerActivity;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.youtube.com/watch?v="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/activity/YouTubePlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.youtube.com/watch?v="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/activity/YouTubePlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/appyet/activity/YouTubePlayerActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/activity/YouTubePlayerActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " http://www.youtube.com/watch?v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/activity/YouTubePlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/activity/YouTubePlayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/appyet/activity/au;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/high16 v2, 0x1000000

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/appyet/activity/YouTubePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/appyet/activity/YouTubePlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    :cond_1
    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/appyet/activity/au;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Lcom/appyet/activity/YouTubePlayerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/activity/YouTubePlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->e:Lcom/appyet/context/ApplicationContext;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/appyet/activity/YouTubePlayerActivity;->setRequestedOrientation(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/activity/YouTubePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appyet.youtube:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/activity/YouTubePlayerActivity;->c:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/appyet/activity/YouTubePlayerActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    const v0, 0x7f0a00f1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/appyet/activity/YouTubePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;

    iput-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->a:Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;

    invoke-virtual {p0}, Lcom/appyet/activity/YouTubePlayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    iput-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    const-string v1, "AIzaSyAUXIsUMWrKnCggcFBPkitgjsRsoBktRfI"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->setRetainInstance(Z)V

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->a:Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;

    invoke-virtual {p0}, Lcom/appyet/activity/YouTubePlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;->setActionBar(Lcom/actionbarsherlock/app/ActionBar;)V

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "YouTubePlayer"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/activity/YouTubePlayerActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const v0, 0x7f0a00f3

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ShareActionProvider;

    const-string v1, "share_history.xml"

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    invoke-direct {p0}, Lcom/appyet/activity/YouTubePlayerActivity;->b()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Lcom/appyet/activity/au;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onFullscreen(Z)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appyet/activity/YouTubePlayerActivity;->a:Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;->setEnablePadding(Z)V

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 2

    :try_start_0
    iput-object p2, p0, Lcom/appyet/activity/YouTubePlayerActivity;->f:Lcom/google/android/youtube/player/YouTubePlayer;

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->f:Lcom/google/android/youtube/player/YouTubePlayer;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->addFullscreenControlFlag(I)V

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->f:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/player/YouTubePlayer;->setOnFullscreenListener(Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;)V

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->f:Lcom/google/android/youtube/player/YouTubePlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setFullscreen(Z)V

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->f:Lcom/google/android/youtube/player/YouTubePlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setShowFullscreenButton(Z)V

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->f:Lcom/google/android/youtube/player/YouTubePlayer;

    iget-object v1, p0, Lcom/appyet/activity/YouTubePlayerActivity;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->f:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->f:Lcom/google/android/youtube/player/YouTubePlayer;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->addFullscreenControlFlag(I)V

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->f:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/player/YouTubePlayer;->setOnFullscreenListener(Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;)V

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->f:Lcom/google/android/youtube/player/YouTubePlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setFullscreen(Z)V

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity;->f:Lcom/google/android/youtube/player/YouTubePlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setShowFullscreenButton(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/appyet/activity/au;->onResume()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/appyet/activity/YouTubePlayerActivity;->finish()V

    goto :goto_0
.end method

.method public onShareTargetSelected(Lcom/actionbarsherlock/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appyet/activity/YouTubePlayerActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget v1, v1, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/appyet/activity/YouTubePlayerActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget v1, v1, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/appyet/activity/YouTubePlayerActivity;->e:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1, p2}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/appyet/activity/YouTubePlayerActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v2, "Share"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "YouTube"

    invoke-virtual {v1, v2, v3, v4}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
