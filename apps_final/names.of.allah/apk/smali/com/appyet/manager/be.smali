.class final Lcom/appyet/manager/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/appyet/manager/as;


# direct methods
.method constructor <init>(Lcom/appyet/manager/as;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/be;->a:Lcom/appyet/manager/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/be;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->o(Lcom/appyet/manager/as;)V

    iget-object v0, p0, Lcom/appyet/manager/be;->a:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->d()V

    iget-object v0, p0, Lcom/appyet/manager/be;->a:Lcom/appyet/manager/as;

    invoke-static {}, Lcom/appyet/manager/as;->e()V

    iget-object v0, p0, Lcom/appyet/manager/be;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->q(Lcom/appyet/manager/as;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
