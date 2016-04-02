.class Lcom/google/android/gms/internal/en$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic sd:Lcom/google/android/gms/internal/en;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/en;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/en$1;->sd:Lcom/google/android/gms/internal/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/en$1;->sd:Lcom/google/android/gms/internal/en;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/en;->a(Lcom/google/android/gms/internal/en;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/en$1;->sd:Lcom/google/android/gms/internal/en;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/en;->bc()V

    return-void
.end method
