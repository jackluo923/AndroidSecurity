.class Lcom/google/android/gms/cast/Cast$CastApi$a$1;
.super Lcom/google/android/gms/cast/Cast$b;


# instance fields
.field final synthetic zR:Ljava/lang/String;

.field final synthetic zS:Ljava/lang/String;

.field final synthetic zT:Lcom/google/android/gms/cast/Cast$CastApi$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->zT:Lcom/google/android/gms/cast/Cast$CastApi$a;

    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->zR:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->zS:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$b;-><init>(Lcom/google/android/gms/cast/Cast$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->a(Lcom/google/android/gms/internal/gi;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gi;)V
    .locals 3

    const/16 v2, 0x7d1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->zR:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->zS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$d;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->N(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/Cast$CastApi$a$1;->N(I)V

    goto :goto_0
.end method
