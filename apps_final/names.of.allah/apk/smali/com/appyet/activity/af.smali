.class final Lcom/appyet/activity/af;
.super Landroid/widget/MediaController;


# instance fields
.field final synthetic a:Lcom/appyet/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/VideoPlayerActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/af;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-direct {p0, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/af;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/VideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/af;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/appyet/activity/VideoPlayerActivity;->a(Lcom/appyet/activity/VideoPlayerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setSystemUiVisibility(I)V

    :cond_0
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/af;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/VideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/af;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/appyet/activity/VideoPlayerActivity;->a(Lcom/appyet/activity/VideoPlayerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setSystemUiVisibility(I)V

    :cond_0
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    return-void
.end method
