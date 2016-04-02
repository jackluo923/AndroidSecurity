.class final Lcom/google/android/gms/plus/internal/e$a;
.super Lcom/google/android/gms/plus/internal/a;


# instance fields
.field private final abI:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic abJ:Lcom/google/android/gms/plus/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$a;->abJ:Lcom/google/android/gms/plus/internal/e;

    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/e$a;->abI:Lcom/google/android/gms/common/api/a$d;

    return-void
.end method


# virtual methods
.method public final am(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$a;->abJ:Lcom/google/android/gms/plus/internal/e;

    new-instance v1, Lcom/google/android/gms/plus/internal/e$d;

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/e$a;->abJ:Lcom/google/android/gms/plus/internal/e;

    iget-object v3, p0, Lcom/google/android/gms/plus/internal/e$a;->abI:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/plus/internal/e$d;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method
