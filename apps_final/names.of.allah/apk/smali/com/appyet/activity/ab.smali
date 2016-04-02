.class final Lcom/appyet/activity/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appyet/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/ab;->a:Lcom/appyet/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/activity/ab;->a:Lcom/appyet/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/SplashActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/ab;->a:Lcom/appyet/activity/SplashActivity;

    const-class v2, Lcom/appyet/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/appyet/activity/ab;->a:Lcom/appyet/activity/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
