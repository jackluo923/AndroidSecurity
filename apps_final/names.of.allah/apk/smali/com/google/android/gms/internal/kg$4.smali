.class final Lcom/google/android/gms/internal/kg$4;
.super Lcom/google/android/gms/internal/ke$a;


# instance fields
.field final synthetic abh:Landroid/net/Uri;

.field final synthetic abk:Lcom/google/android/gms/internal/ke;

.field final synthetic qr:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/ke;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kg$4;->qr:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/kg$4;->abh:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/kg$4;->abk:Lcom/google/android/gms/internal/ke;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ke$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kg$4;->qr:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/kg$4;->abh:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kg;->b(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kg$4;->abk:Lcom/google/android/gms/internal/ke;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ke;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    return-void
.end method
