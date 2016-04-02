.class final Lcom/appyet/manager/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/manager/as;


# direct methods
.method constructor <init>(Lcom/appyet/manager/as;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/av;->a:Lcom/appyet/manager/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/av;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/av;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/av;->a:Lcom/appyet/manager/as;

    const/16 v1, -0x1e

    invoke-virtual {v0, v1}, Lcom/appyet/manager/as;->a(I)V
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
