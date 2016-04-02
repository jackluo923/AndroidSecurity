.class final Lcom/appyet/manager/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/manager/as;


# direct methods
.method constructor <init>(Lcom/appyet/manager/as;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/ax;->a:Lcom/appyet/manager/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/ax;->a:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->i()V

    iget-object v0, p0, Lcom/appyet/manager/ax;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->j(Lcom/appyet/manager/as;)Lcom/appyet/activity/MediaPlayerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/ax;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->j(Lcom/appyet/manager/as;)Lcom/appyet/activity/MediaPlayerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/activity/MediaPlayerActivity;->finish()V
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
