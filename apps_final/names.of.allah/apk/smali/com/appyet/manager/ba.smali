.class final Lcom/appyet/manager/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appyet/manager/as;


# direct methods
.method constructor <init>(Lcom/appyet/manager/as;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/ba;->a:Lcom/appyet/manager/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/ba;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->c(Lcom/appyet/manager/as;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/ba;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->b(Lcom/appyet/manager/as;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/appyet/manager/ba;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->d(Lcom/appyet/manager/as;)Z

    iget-object v0, p0, Lcom/appyet/manager/ba;->a:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->d()V

    iget-object v0, p0, Lcom/appyet/manager/ba;->a:Lcom/appyet/manager/as;

    invoke-static {}, Lcom/appyet/manager/as;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
