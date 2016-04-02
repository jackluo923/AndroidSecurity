.class Lcom/google/android/gms/internal/lr$5;
.super Lcom/google/android/gms/wallet/Wallet$b;


# instance fields
.field final synthetic akD:Lcom/google/android/gms/internal/lr;

.field final synthetic akI:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lr$5;->akD:Lcom/google/android/gms/internal/lr;

    iput-object p2, p0, Lcom/google/android/gms/internal/lr$5;->akI:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ls;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lr$5;->a(Lcom/google/android/gms/internal/ls;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ls;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/lr$5;->akI:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lr$5;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
