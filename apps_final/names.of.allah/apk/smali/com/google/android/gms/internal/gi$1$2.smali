.class Lcom/google/android/gms/internal/gi$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Cb:Lcom/google/android/gms/internal/gi$1;

.field final synthetic Cc:Lcom/google/android/gms/internal/gk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gi$1;Lcom/google/android/gms/internal/gk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gi$1$2;->Cb:Lcom/google/android/gms/internal/gi$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/gi$1$2;->Cc:Lcom/google/android/gms/internal/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gi$1$2;->Cb:Lcom/google/android/gms/internal/gi$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;

    iget-object v1, p0, Lcom/google/android/gms/internal/gi$1$2;->Cc:Lcom/google/android/gms/internal/gk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/internal/gk;)V

    return-void
.end method
