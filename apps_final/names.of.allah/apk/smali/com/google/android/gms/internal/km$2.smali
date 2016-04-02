.class Lcom/google/android/gms/internal/km$2;
.super Lcom/google/android/gms/internal/km$a;


# instance fields
.field final synthetic PJ:I

.field final synthetic acb:Lcom/google/android/gms/internal/km;

.field final synthetic acc:Ljava/lang/String;

.field final synthetic acd:Landroid/net/Uri;

.field final synthetic ace:Ljava/lang/String;

.field final synthetic acf:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/km;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/km$2;->acb:Lcom/google/android/gms/internal/km;

    iput p2, p0, Lcom/google/android/gms/internal/km$2;->PJ:I

    iput-object p3, p0, Lcom/google/android/gms/internal/km$2;->acc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/km$2;->acd:Landroid/net/Uri;

    iput-object p5, p0, Lcom/google/android/gms/internal/km$2;->ace:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/km$2;->acf:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/km$a;-><init>(Lcom/google/android/gms/internal/km$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/km$2;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 7

    iget v2, p0, Lcom/google/android/gms/internal/km$2;->PJ:I

    iget-object v3, p0, Lcom/google/android/gms/internal/km$2;->acc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/km$2;->acd:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/internal/km$2;->ace:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/km$2;->acf:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
