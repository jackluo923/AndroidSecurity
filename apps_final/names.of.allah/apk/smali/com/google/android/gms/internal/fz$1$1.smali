.class Lcom/google/android/gms/internal/fz$1$1;
.super Lcom/google/android/gms/internal/fx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fx",
        "<",
        "Lcom/google/android/gms/internal/fu$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ys:Lcom/google/android/gms/internal/fz$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fz$1;Lcom/google/android/gms/common/api/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fz$1$1;->ys:Lcom/google/android/gms/internal/fz$1;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fx;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fz$1$1;->yr:Lcom/google/android/gms/common/api/a$d;

    new-instance v1, Lcom/google/android/gms/internal/fz$b;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/fz$b;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    return-void
.end method
