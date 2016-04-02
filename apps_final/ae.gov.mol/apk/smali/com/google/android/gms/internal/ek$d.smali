.class final Lcom/google/android/gms/internal/ek$d;
.super Lcom/google/android/gms/internal/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/ej;",
        ">.b<",
        "Lcom/google/android/gms/plus/PlusClient$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ie:Lcom/google/android/gms/internal/ek;

.field private final if:Lcom/google/android/gms/common/ConnectionResult;

.field private final ij:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$a;Lcom/google/android/gms/common/ConnectionResult;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ek$d;->ie:Lcom/google/android/gms/internal/ek;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/u$b;-><init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ek$d;->if:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p4, p0, Lcom/google/android/gms/internal/ek$d;->ij:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public B()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/u$b;->B()V

    return-void
.end method

.method public a(Lcom/google/android/gms/plus/PlusClient$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ek$d;->if:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/ek$d;->ij:Landroid/os/ParcelFileDescriptor;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/plus/PlusClient$a;->a(Lcom/google/android/gms/common/ConnectionResult;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/PlusClient$a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ek$d;->a(Lcom/google/android/gms/plus/PlusClient$a;)V

    return-void
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ek$d;->ij:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ek$d;->ij:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->a(Landroid/os/ParcelFileDescriptor;)V

    :cond_0
    return-void
.end method
