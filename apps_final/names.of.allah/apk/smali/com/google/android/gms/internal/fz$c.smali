.class abstract Lcom/google/android/gms/internal/fz$c;
.super Lcom/google/android/gms/common/api/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/a$b",
        "<TT;",
        "Lcom/google/android/gms/internal/fy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fg;->xF:Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$b;-><init>(Lcom/google/android/gms/common/api/Api$c;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fz$c;->a(Lcom/google/android/gms/internal/fy;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/fv;)V
.end method

.method protected final a(Lcom/google/android/gms/internal/fy;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fy;->dM()Lcom/google/android/gms/internal/fv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fz$c;->a(Lcom/google/android/gms/internal/fv;)V

    return-void
.end method
