.class final Lcom/appyet/manager/aq;
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
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/appyet/manager/ap;


# direct methods
.method public constructor <init>(Lcom/appyet/manager/ap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/aq;->b:Lcom/appyet/manager/ap;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    iput-object p2, p0, Lcom/appyet/manager/aq;->a:Ljava/lang/String;

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/aq;->b:Lcom/appyet/manager/ap;

    iget-object v0, v0, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/aq;->b:Lcom/appyet/manager/ap;

    iget-object v0, v0, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;

    const-string v1, "&cd"

    iget-object v2, p0, Lcom/appyet/manager/aq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/manager/aq;->b:Lcom/appyet/manager/ap;

    iget-object v0, v0, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;

    invoke-static {}, Lcom/google/analytics/tracking/android/MapBuilder;->createAppView()Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/aq;->b:Lcom/appyet/manager/ap;

    iget-object v0, v0, Lcom/appyet/manager/ap;->b:Lcom/google/analytics/tracking/android/Tracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/aq;->b:Lcom/appyet/manager/ap;

    iget-object v0, v0, Lcom/appyet/manager/ap;->b:Lcom/google/analytics/tracking/android/Tracker;

    const-string v1, "&cd"

    iget-object v2, p0, Lcom/appyet/manager/aq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/manager/aq;->b:Lcom/appyet/manager/ap;

    iget-object v0, v0, Lcom/appyet/manager/ap;->b:Lcom/google/analytics/tracking/android/Tracker;

    invoke-static {}, Lcom/google/analytics/tracking/android/MapBuilder;->createAppView()Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/manager/aq;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
