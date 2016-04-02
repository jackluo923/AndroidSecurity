.class Lcom/google/android/gms/internal/km$4;
.super Lcom/google/android/gms/internal/km$b;


# instance fields
.field final synthetic acb:Lcom/google/android/gms/internal/km;

.field final synthetic ach:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/km;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/km$4;->acb:Lcom/google/android/gms/internal/km;

    iput-object p2, p0, Lcom/google/android/gms/internal/km$4;->ach:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/km$b;-><init>(Lcom/google/android/gms/internal/km$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/km$4;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/km$4;->ach:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/e;->removeMoment(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/km$4;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
