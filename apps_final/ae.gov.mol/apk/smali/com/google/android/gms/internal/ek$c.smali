.class final Lcom/google/android/gms/internal/ek$c;
.super Lcom/google/android/gms/internal/eh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic ie:Lcom/google/android/gms/internal/ek;

.field private final ii:Lcom/google/android/gms/plus/PlusClient$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ek$c;->ie:Lcom/google/android/gms/internal/ek;

    invoke-direct {p0}, Lcom/google/android/gms/internal/eh;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ek$c;->ii:Lcom/google/android/gms/plus/PlusClient$a;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v0, "pendingIntent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ek$c;->ie:Lcom/google/android/gms/internal/ek;

    new-instance v2, Lcom/google/android/gms/internal/ek$d;

    iget-object v3, p0, Lcom/google/android/gms/internal/ek$c;->ie:Lcom/google/android/gms/internal/ek;

    iget-object v4, p0, Lcom/google/android/gms/internal/ek$c;->ii:Lcom/google/android/gms/plus/PlusClient$a;

    invoke-direct {v2, v3, v4, v1, p3}, Lcom/google/android/gms/internal/ek$d;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$a;Lcom/google/android/gms/common/ConnectionResult;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ek;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method
