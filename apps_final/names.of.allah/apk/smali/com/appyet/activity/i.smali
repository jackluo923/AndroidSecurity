.class final Lcom/appyet/activity/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/DownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/i;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/activity/i;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-static {v0}, Lcom/appyet/activity/DownloadActivity;->a(Lcom/appyet/activity/DownloadActivity;)Lcom/appyet/activity/l;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/appyet/activity/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/f/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/appyet/activity/i;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v2, v2, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    const-class v3, Lcom/appyet/activity/VideoPlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "URL"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "TITLE"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/activity/i;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v0, v0, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/appyet/activity/i;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v1, v1, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/as;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/appyet/activity/i;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v0, v0, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/manager/as;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/i;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v1, v1, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/activity/MediaPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/appyet/activity/i;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/activity/DownloadActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/activity/i;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v0, v0, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0, v2}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/appyet/activity/i;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v0, v0, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
