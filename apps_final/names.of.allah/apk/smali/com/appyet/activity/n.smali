.class final Lcom/appyet/activity/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appyet/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/n;->a:Lcom/appyet/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/n;->a:Lcom/appyet/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/activity/MainActivity;->a(Lcom/appyet/activity/MainActivity;)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->n()V

    return-void
.end method
