.class final Lcom/appyet/activity/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/VideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/ai;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/appyet/activity/ai;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-static {v1}, Lcom/appyet/activity/VideoPlayerActivity;->d(Lcom/appyet/activity/VideoPlayerActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appyet/activity/ai;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-static {v1}, Lcom/appyet/activity/VideoPlayerActivity;->e(Lcom/appyet/activity/VideoPlayerActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    const v2, 0x7f08007b

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/appyet/activity/ai;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-static {v1}, Lcom/appyet/activity/VideoPlayerActivity;->f(Lcom/appyet/activity/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/f/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/appyet/activity/ai;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-static {v4}, Lcom/appyet/activity/VideoPlayerActivity;->f(Lcom/appyet/activity/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/ai;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-virtual {v1, v2}, Lcom/appyet/activity/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/appyet/activity/ai;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-virtual {v1}, Lcom/appyet/activity/VideoPlayerActivity;->finish()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/appyet/activity/ai;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-static {v1}, Lcom/appyet/activity/VideoPlayerActivity;->e(Lcom/appyet/activity/VideoPlayerActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    const v2, 0x7f08007a

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    goto :goto_0
.end method
