.class public Lcom/appyet/activity/VideoPlayerActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;

# interfaces
.implements Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;


# instance fields
.field private a:Lcom/appyet/context/ApplicationContext;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/VideoView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->f:Z

    return-void
.end method

.method private a()Landroid/content/Intent;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->b:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/VideoPlayerActivity;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/appyet/activity/VideoPlayerActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/appyet/activity/VideoPlayerActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/appyet/activity/VideoPlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/activity/VideoPlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/activity/VideoPlayerActivity;->b:Ljava/lang/String;

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

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/appyet/activity/VideoPlayerActivity;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/activity/VideoPlayerActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/activity/VideoPlayerActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/appyet/activity/VideoPlayerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/appyet/activity/VideoPlayerActivity;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->a:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic f(Lcom/appyet/activity/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/high16 v3, 0x1000000

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/appyet/activity/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/activity/VideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->a:Lcom/appyet/context/ApplicationContext;

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/appyet/activity/VideoPlayerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/activity/VideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/activity/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/activity/VideoPlayerActivity;->b:Ljava/lang/String;

    :goto_0
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/appyet/activity/VideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/appyet/activity/VideoPlayerActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0073

    invoke-virtual {p0, v0}, Lcom/appyet/activity/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->e:Landroid/widget/ProgressBar;

    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/appyet/activity/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/appyet/activity/VideoPlayerActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setSystemUiVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    new-instance v1, Lcom/appyet/activity/af;

    invoke-direct {v1, p0, p0}, Lcom/appyet/activity/af;-><init>(Lcom/appyet/activity/VideoPlayerActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    new-instance v1, Lcom/appyet/activity/ag;

    invoke-direct {v1, p0}, Lcom/appyet/activity/ag;-><init>(Lcom/appyet/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    new-instance v1, Lcom/appyet/activity/ah;

    invoke-direct {v1, p0}, Lcom/appyet/activity/ah;-><init>(Lcom/appyet/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    new-instance v1, Lcom/appyet/activity/ai;

    invoke-direct {v1, p0}, Lcom/appyet/activity/ai;-><init>(Lcom/appyet/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    invoke-virtual {p0}, Lcom/appyet/activity/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/appyet/activity/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appyet/activity/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "VideoPlayer"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/activity/VideoPlayerActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/appyet/activity/VideoPlayerActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const v0, 0x7f0a00f3

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->b:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ShareActionProvider;

    const-string v2, "share_history.xml"

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    invoke-direct {p0}, Lcom/appyet/activity/VideoPlayerActivity;->a()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/appyet/activity/VideoPlayerActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->d:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onResume()V

    return-void
.end method

.method public onShareTargetSelected(Lcom/actionbarsherlock/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 4

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget v0, v0, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget v0, v0, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->a:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0, p2}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/appyet/activity/VideoPlayerActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "Share"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video"

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
