.class final Lcom/google/android/gms/identity/intents/Address$2;
.super Lcom/google/android/gms/identity/intents/Address$a;


# instance fields
.field final synthetic UA:I

.field final synthetic Uz:Lcom/google/android/gms/identity/intents/UserAddressRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/identity/intents/Address$2;->Uz:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iput p2, p0, Lcom/google/android/gms/identity/intents/Address$2;->UA:I

    invoke-direct {p0}, Lcom/google/android/gms/identity/intents/Address$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ix;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/identity/intents/Address$2;->a(Lcom/google/android/gms/internal/ix;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/ix;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/Address$2;->Uz:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget v1, p0, Lcom/google/android/gms/identity/intents/Address$2;->UA:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ix;->a(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/identity/intents/Address$2;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
