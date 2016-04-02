.class public Lcom/appyet/receiver/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/appyet/context/ApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appyet/receiver/AlarmReceiver;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/receiver/AlarmReceiver;->a:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/receiver/AlarmReceiver;->a:Lcom/appyet/context/ApplicationContext;

    :try_start_0
    new-instance v0, Lcom/appyet/receiver/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appyet/receiver/a;-><init>(Lcom/appyet/receiver/AlarmReceiver;B)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/receiver/a;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
