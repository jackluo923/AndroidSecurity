.class final Lcom/appyet/activity/u;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/simonvt/menudrawer/o;


# instance fields
.field final synthetic a:Lcom/appyet/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/u;->a:Lcom/appyet/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/appyet/activity/u;->a:Lcom/appyet/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/activity/MainActivity;->c(Lcom/appyet/activity/MainActivity;)I

    iget-object v0, p0, Lcom/appyet/activity/u;->a:Lcom/appyet/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/activity/MainActivity;->d(Lcom/appyet/activity/MainActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/u;->a:Lcom/appyet/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/activity/MainActivity;->b(Lcom/appyet/activity/MainActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->T()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/appyet/activity/u;->a:Lcom/appyet/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/activity/MainActivity;->c(Lcom/appyet/activity/MainActivity;)I

    iget-object v0, p0, Lcom/appyet/activity/u;->a:Lcom/appyet/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/activity/MainActivity;->e(Lcom/appyet/activity/MainActivity;)Lcom/appyet/c/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/u;->a:Lcom/appyet/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/activity/MainActivity;->e(Lcom/appyet/activity/MainActivity;)Lcom/appyet/c/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/ay;->a()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x8 -> :sswitch_2
    .end sparse-switch
.end method
