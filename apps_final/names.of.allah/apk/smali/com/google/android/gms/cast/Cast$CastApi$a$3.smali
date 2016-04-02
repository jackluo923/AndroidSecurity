.class Lcom/google/android/gms/cast/Cast$CastApi$a$3;
.super Lcom/google/android/gms/cast/Cast$c;


# instance fields
.field final synthetic zT:Lcom/google/android/gms/cast/Cast$CastApi$a;

.field final synthetic zU:Ljava/lang/String;

.field final synthetic zV:Lcom/google/android/gms/cast/LaunchOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->zT:Lcom/google/android/gms/cast/Cast$CastApi$a;

    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->zU:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->zV:Lcom/google/android/gms/cast/LaunchOptions;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$c;-><init>(Lcom/google/android/gms/cast/Cast$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->a(Lcom/google/android/gms/internal/gi;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gi;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->zU:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->zV:Lcom/google/android/gms/cast/LaunchOptions;

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/common/api/a$d;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$3;->N(I)V

    goto :goto_0
.end method
