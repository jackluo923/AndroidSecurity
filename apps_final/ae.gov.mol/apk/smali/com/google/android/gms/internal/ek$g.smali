.class final Lcom/google/android/gms/internal/ek$g;
.super Lcom/google/android/gms/internal/eh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field final synthetic ie:Lcom/google/android/gms/internal/ek;

.field private final il:Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ek$g;->ie:Lcom/google/android/gms/internal/ek;

    invoke-direct {p0}, Lcom/google/android/gms/internal/eh;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ek$g;->il:Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lcom/google/android/gms/internal/ax;)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string v0, "pendingIntent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_0
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ek$g;->ie:Lcom/google/android/gms/internal/ek;

    new-instance v3, Lcom/google/android/gms/internal/ek$h;

    iget-object v4, p0, Lcom/google/android/gms/internal/ek$g;->ie:Lcom/google/android/gms/internal/ek;

    iget-object v5, p0, Lcom/google/android/gms/internal/ek$g;->il:Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;

    invoke-direct {v3, v4, v5, v2, v1}, Lcom/google/android/gms/internal/ek$h;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/plus/model/people/Person;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ek;->a(Lcom/google/android/gms/internal/u$b;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/eu;->CREATOR:Lcom/google/android/gms/internal/ev;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ax;->a(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/eu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ek$g;->ie:Lcom/google/android/gms/internal/ek;

    new-instance v3, Lcom/google/android/gms/internal/ek$h;

    iget-object v4, p0, Lcom/google/android/gms/internal/ek$g;->ie:Lcom/google/android/gms/internal/ek;

    iget-object v5, p0, Lcom/google/android/gms/internal/ek$g;->il:Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;

    invoke-direct {v3, v4, v5, v2, v0}, Lcom/google/android/gms/internal/ek$h;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/plus/PlusClient$OnPersonLoadedListener;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/plus/model/people/Person;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ek;->a(Lcom/google/android/gms/internal/u$b;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
