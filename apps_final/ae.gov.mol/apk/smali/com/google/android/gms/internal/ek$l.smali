.class final Lcom/google/android/gms/internal/ek$l;
.super Lcom/google/android/gms/internal/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/ej;",
        ">.b<",
        "Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ie:Lcom/google/android/gms/internal/ek;

.field private final if:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ek$l;->ie:Lcom/google/android/gms/internal/ek;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/u$b;-><init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ek$l;->if:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ek$l;->ie:Lcom/google/android/gms/internal/ek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ek;->disconnect()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ek$l;->if:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {p1, v0}, Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;->onAccessRevoked(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ek$l;->a(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
