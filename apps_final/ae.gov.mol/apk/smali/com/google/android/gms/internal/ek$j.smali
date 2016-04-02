.class final Lcom/google/android/gms/internal/ek$j;
.super Lcom/google/android/gms/internal/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/ej;",
        ">.b<",
        "Lcom/google/android/gms/plus/PlusClient$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final hC:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic ie:Lcom/google/android/gms/internal/ek;

.field public final io:Lcom/google/android/gms/internal/eg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$b;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/internal/eg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ek$j;->ie:Lcom/google/android/gms/internal/ek;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/u$b;-><init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ek$j;->hC:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p4, p0, Lcom/google/android/gms/internal/ek$j;->io:Lcom/google/android/gms/internal/eg;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/plus/PlusClient$b;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ek$j;->hC:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/ek$j;->io:Lcom/google/android/gms/internal/eg;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/plus/PlusClient$b;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/internal/eg;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/PlusClient$b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ek$j;->a(Lcom/google/android/gms/plus/PlusClient$b;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
