.class final Lcom/appyet/activity/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/WebActionActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/WebActionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/al;->a:Lcom/appyet/activity/WebActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/al;->a:Lcom/appyet/activity/WebActionActivity;

    invoke-static {v0}, Lcom/appyet/activity/WebActionActivity;->b(Lcom/appyet/activity/WebActionActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    invoke-virtual {v0}, Lcom/appyet/manager/af;->a()Z

    iget-object v0, p0, Lcom/appyet/activity/al;->a:Lcom/appyet/activity/WebActionActivity;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/appyet/activity/WebActionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    new-instance v1, Landroid/app/DownloadManager$Request;

    iget-object v2, p0, Lcom/appyet/activity/al;->a:Lcom/appyet/activity/WebActionActivity;

    invoke-static {v2}, Lcom/appyet/activity/WebActionActivity;->c(Lcom/appyet/activity/WebActionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/appyet/activity/al;->a:Lcom/appyet/activity/WebActionActivity;

    invoke-static {v2}, Lcom/appyet/activity/WebActionActivity;->b(Lcom/appyet/activity/WebActionActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v2

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    iget-object v3, p0, Lcom/appyet/activity/al;->a:Lcom/appyet/activity/WebActionActivity;

    invoke-static {v3}, Lcom/appyet/activity/WebActionActivity;->c(Lcom/appyet/activity/WebActionActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appyet/manager/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/activity/al;->a:Lcom/appyet/activity/WebActionActivity;

    invoke-static {v3}, Lcom/appyet/activity/WebActionActivity;->b(Lcom/appyet/activity/WebActionActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v3

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    invoke-virtual {v3, v2}, Lcom/appyet/manager/af;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    invoke-virtual {v1, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    :goto_1
    iget-object v3, p0, Lcom/appyet/activity/al;->a:Lcom/appyet/activity/WebActionActivity;

    invoke-static {v3}, Lcom/appyet/activity/WebActionActivity;->b(Lcom/appyet/activity/WebActionActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v3

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v3}, Lcom/appyet/manager/bp;->s()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    iget-object v2, p0, Lcom/appyet/activity/al;->a:Lcom/appyet/activity/WebActionActivity;

    invoke-static {v2}, Lcom/appyet/activity/WebActionActivity;->c(Lcom/appyet/activity/WebActionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    iget-object v0, p0, Lcom/appyet/activity/al;->a:Lcom/appyet/activity/WebActionActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/WebActionActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    goto :goto_2
.end method
