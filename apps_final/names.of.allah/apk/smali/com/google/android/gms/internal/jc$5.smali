.class Lcom/google/android/gms/internal/jc$5;
.super Lcom/google/android/gms/internal/jc$a;


# instance fields
.field final synthetic Vr:Landroid/app/PendingIntent;

.field final synthetic Vv:Lcom/google/android/gms/internal/jc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jc;Landroid/app/PendingIntent;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/jc$5;->Vv:Lcom/google/android/gms/internal/jc;

    iput-object p2, p0, Lcom/google/android/gms/internal/jc$5;->Vr:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jc$a;-><init>(Lcom/google/android/gms/internal/jc$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/jh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jc$5;->a(Lcom/google/android/gms/internal/jh;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jc$5;->Vr:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jh;->removeLocationUpdates(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jc$5;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
