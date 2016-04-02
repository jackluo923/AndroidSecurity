.class public final Lcom/google/android/gms/internal/dq;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)Lcom/google/android/gms/internal/en;
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/dt;->kO:Lcom/google/android/gms/internal/ew;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ew;->sw:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dq;->b(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)Lcom/google/android/gms/internal/en;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dq;->c(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)Lcom/google/android/gms/internal/en;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)Lcom/google/android/gms/internal/en;
    .locals 1

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/dr$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/dr$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dr$a;->start()V

    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)Lcom/google/android/gms/internal/en;
    .locals 1

    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/dr$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/dr$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)V

    goto :goto_0
.end method
