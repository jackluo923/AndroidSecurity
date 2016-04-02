.class final Lcom/appyet/activity/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/DownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/k;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/k;->a:Lcom/appyet/activity/DownloadActivity;

    iget-object v0, v0, Lcom/appyet/activity/DownloadActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0, p2}, Lcom/appyet/manager/bp;->h(I)V

    new-instance v0, Lcom/appyet/activity/m;

    iget-object v1, p0, Lcom/appyet/activity/k;->a:Lcom/appyet/activity/DownloadActivity;

    invoke-direct {v0, v1}, Lcom/appyet/activity/m;-><init>(Lcom/appyet/activity/DownloadActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/activity/m;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
