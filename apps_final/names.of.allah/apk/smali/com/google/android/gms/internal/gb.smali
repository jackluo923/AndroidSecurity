.class public final Lcom/google/android/gms/internal/gb;
.super Lcom/google/android/gms/internal/hc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hc",
        "<",
        "Lcom/google/android/gms/internal/gd;",
        ">;"
    }
.end annotation


# instance fields
.field private final yN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->yN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final D(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gd;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/gd$a;->F(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gd;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/a$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gd;

    new-instance v1, Lcom/google/android/gms/internal/gb$c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/gb$c;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/a$d;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gd;

    new-instance v1, Lcom/google/android/gms/internal/gb$a;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/gb$a;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gd;->b(Lcom/google/android/gms/internal/gc;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gd;

    new-instance v1, Lcom/google/android/gms/internal/gb$e;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/gb$e;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gc;ILjava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/a$d;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I[B)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gd;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gc;I[B)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/gb$e;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gb$e;-><init>(Lcom/google/android/gms/common/api/a$d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected final a(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hc$e;)V
    .locals 6

    const v2, 0x4d7808

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/gb;->yN:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->fn()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/hj;->a(Lcom/google/android/gms/internal/hi;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/a$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gd;

    new-instance v1, Lcom/google/android/gms/internal/gb$g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/gb$g;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gd;->b(Lcom/google/android/gms/internal/gc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/common/api/a$d;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gd;

    new-instance v1, Lcom/google/android/gms/internal/gb$e;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/gb$e;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gc;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final varargs b([Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    aget-object v4, p1, v0

    const-string v5, "https://www.googleapis.com/auth/appstate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "App State APIs requires %s to function."

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "https://www.googleapis.com/auth/appstate"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method protected final bp()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appstate.service.START"

    return-object v0
.end method

.method protected final bq()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appstate.internal.IAppStateService"

    return-object v0
.end method

.method public final dP()I
    .locals 3

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gd;->dP()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v2, "service died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public final dQ()I
    .locals 3

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gd;->dQ()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v2, "service died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method protected final synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gb;->D(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gd;

    move-result-object v0

    return-object v0
.end method
