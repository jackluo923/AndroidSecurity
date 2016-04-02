.class Lcom/google/android/gms/internal/kn$2;
.super Lcom/google/android/gms/internal/kn$a;


# instance fields
.field final synthetic acc:Ljava/lang/String;

.field final synthetic ack:Lcom/google/android/gms/internal/kn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kn;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/kn$2;->ack:Lcom/google/android/gms/internal/kn;

    iput-object p2, p0, Lcom/google/android/gms/internal/kn$2;->acc:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kn$a;-><init>(Lcom/google/android/gms/internal/kn$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kn$2;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kn$2;->acc:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/e;->r(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lcom/google/android/gms/internal/hh;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kn$2;->a(Lcom/google/android/gms/internal/hh;)V

    return-void
.end method
