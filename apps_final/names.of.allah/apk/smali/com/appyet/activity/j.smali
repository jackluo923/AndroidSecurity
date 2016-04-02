.class final Lcom/appyet/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/appyet/activity/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/DownloadActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/j;->b:Lcom/appyet/activity/DownloadActivity;

    iput p2, p0, Lcom/appyet/activity/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/appyet/activity/j;->b:Lcom/appyet/activity/DownloadActivity;

    invoke-static {v0}, Lcom/appyet/activity/DownloadActivity;->a(Lcom/appyet/activity/DownloadActivity;)Lcom/appyet/activity/l;

    move-result-object v0

    iget v1, p0, Lcom/appyet/activity/j;->a:I

    invoke-virtual {v0, v1}, Lcom/appyet/activity/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lcom/appyet/activity/j;->b:Lcom/appyet/activity/DownloadActivity;

    invoke-static {v1}, Lcom/appyet/activity/DownloadActivity;->a(Lcom/appyet/activity/DownloadActivity;)Lcom/appyet/activity/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appyet/activity/l;->remove(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/appyet/activity/j;->b:Lcom/appyet/activity/DownloadActivity;

    invoke-static {v0}, Lcom/appyet/activity/DownloadActivity;->a(Lcom/appyet/activity/DownloadActivity;)Lcom/appyet/activity/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/activity/l;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
