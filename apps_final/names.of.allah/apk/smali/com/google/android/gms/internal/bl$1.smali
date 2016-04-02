.class Lcom/google/android/gms/internal/bl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ng:Lcom/google/android/gms/internal/br;

.field final synthetic nh:Lcom/google/android/gms/internal/bl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/br;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bl$1;->nh:Lcom/google/android/gms/internal/bl;

    iput-object p2, p0, Lcom/google/android/gms/internal/bl$1;->ng:Lcom/google/android/gms/internal/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bl$1;->ng:Lcom/google/android/gms/internal/br;

    iget-object v0, v0, Lcom/google/android/gms/internal/br;->nL:Lcom/google/android/gms/internal/bv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
