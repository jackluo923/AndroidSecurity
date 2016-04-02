.class Lcom/google/android/gms/internal/ck$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final oM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ck;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic oN:Lcom/google/android/gms/internal/ck;

.field final synthetic oO:Lcom/google/android/gms/internal/ck$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ck$a;Lcom/google/android/gms/internal/ck;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ck$a$1;->oO:Lcom/google/android/gms/internal/ck$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/ck$a$1;->oN:Lcom/google/android/gms/internal/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/ck$a$1;->oN:Lcom/google/android/gms/internal/ck;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ck$a$1;->oM:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ck$a$1;->oM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ck;

    iget-object v1, p0, Lcom/google/android/gms/internal/ck$a$1;->oO:Lcom/google/android/gms/internal/ck$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/ck$a;->a(Lcom/google/android/gms/internal/ck$a;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ck;->aW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ck$a$1;->oO:Lcom/google/android/gms/internal/ck$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ck$a;->aX()V

    :cond_0
    return-void
.end method
