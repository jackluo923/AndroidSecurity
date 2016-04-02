.class final Lcom/appyet/receiver/a;
.super Lcom/appyet/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appyet/f/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/receiver/AlarmReceiver;


# direct methods
.method private constructor <init>(Lcom/appyet/receiver/AlarmReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/receiver/a;->a:Lcom/appyet/receiver/AlarmReceiver;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appyet/receiver/AlarmReceiver;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/receiver/a;-><init>(Lcom/appyet/receiver/AlarmReceiver;)V

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/receiver/a;->a:Lcom/appyet/receiver/AlarmReceiver;

    invoke-static {v0}, Lcom/appyet/receiver/AlarmReceiver;->a(Lcom/appyet/receiver/AlarmReceiver;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->t:Lcom/appyet/manager/bq;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bq;->a(Ljava/lang/Long;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/receiver/a;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
