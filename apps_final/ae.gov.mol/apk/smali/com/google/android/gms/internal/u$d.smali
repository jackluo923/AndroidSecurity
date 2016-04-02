.class public final Lcom/google/android/gms/internal/u$d;
.super Lcom/google/android/gms/internal/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private bB:Lcom/google/android/gms/internal/u;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/y$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/u$d;->bB:Lcom/google/android/gms/internal/u;

    return-void
.end method


# virtual methods
.method public b(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    iget-object v1, p0, Lcom/google/android/gms/internal/u$d;->bB:Lcom/google/android/gms/internal/u;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/u$d;->bB:Lcom/google/android/gms/internal/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/u;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/u$d;->bB:Lcom/google/android/gms/internal/u;

    return-void
.end method
