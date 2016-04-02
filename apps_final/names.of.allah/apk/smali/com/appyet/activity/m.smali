.class final Lcom/appyet/activity/m;
.super Lcom/appyet/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appyet/f/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/activity/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/DownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    return-void
.end method

.method private varargs f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v0, v0, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->R()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v0, v0, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    sget-object v1, Lcom/appyet/manager/ak;->a:Lcom/appyet/manager/ak;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/af;->a(Lcom/appyet/manager/ak;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v0, v0, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->R()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v0, v0, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    sget-object v1, Lcom/appyet/manager/ak;->b:Lcom/appyet/manager/ak;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/af;->a(Lcom/appyet/manager/ak;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v0, v0, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->R()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v0, v0, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    sget-object v1, Lcom/appyet/manager/ak;->c:Lcom/appyet/manager/ak;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/af;->a(Lcom/appyet/manager/ak;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/appyet/f/a;->a()V

    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-static {v0}, Lcom/appyet/activity/DownloadActivity;->b(Lcom/appyet/activity/DownloadActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    check-cast p1, Ljava/util/List;

    invoke-super {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-static {v0}, Lcom/appyet/activity/DownloadActivity;->b(Lcom/appyet/activity/DownloadActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    new-instance v1, Lcom/appyet/activity/l;

    iget-object v2, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v3, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-direct {v1, v2, v3, p1}, Lcom/appyet/activity/l;-><init>(Lcom/appyet/activity/DownloadActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/appyet/activity/DownloadActivity;->a(Lcom/appyet/activity/DownloadActivity;Lcom/appyet/activity/l;)Lcom/appyet/activity/l;

    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-static {v0}, Lcom/appyet/activity/DownloadActivity;->c(Lcom/appyet/activity/DownloadActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-static {v1}, Lcom/appyet/activity/DownloadActivity;->a(Lcom/appyet/activity/DownloadActivity;)Lcom/appyet/activity/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-static {v0}, Lcom/appyet/activity/DownloadActivity;->c(Lcom/appyet/activity/DownloadActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-static {v0}, Lcom/appyet/activity/DownloadActivity;->d(Lcom/appyet/activity/DownloadActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-static {v0}, Lcom/appyet/activity/DownloadActivity;->c(Lcom/appyet/activity/DownloadActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/m;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-static {v0}, Lcom/appyet/activity/DownloadActivity;->d(Lcom/appyet/activity/DownloadActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/activity/m;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
