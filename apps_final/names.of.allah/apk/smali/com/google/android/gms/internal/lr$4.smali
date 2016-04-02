.class Lcom/google/android/gms/internal/lr$4;
.super Lcom/google/android/gms/wallet/Wallet$b;


# instance fields
.field final synthetic UA:I

.field final synthetic akD:Lcom/google/android/gms/internal/lr;

.field final synthetic akG:Ljava/lang/String;

.field final synthetic akH:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lr;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lr$4;->akD:Lcom/google/android/gms/internal/lr;

    iput-object p2, p0, Lcom/google/android/gms/internal/lr$4;->akG:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/lr$4;->akH:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/lr$4;->UA:I

    invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ls;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lr$4;->a(Lcom/google/android/gms/internal/ls;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ls;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/lr$4;->akG:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/lr$4;->akH:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/lr$4;->UA:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ls;->d(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lr$4;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
