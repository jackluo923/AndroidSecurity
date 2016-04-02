.class final Lcom/google/android/gms/internal/jh$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/jk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/jk",
        "<",
        "Lcom/google/android/gms/internal/jf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic VR:Lcom/google/android/gms/internal/jh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/jh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jh$c;->VR:Lcom/google/android/gms/internal/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/jh;Lcom/google/android/gms/internal/jh$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jh$c;-><init>(Lcom/google/android/gms/internal/jh;)V

    return-void
.end method


# virtual methods
.method public final ci()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jh$c;->VR:Lcom/google/android/gms/internal/jh;

    invoke-static {v0}, Lcom/google/android/gms/internal/jh;->b(Lcom/google/android/gms/internal/jh;)V

    return-void
.end method

.method public final synthetic fo()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh$c;->iU()Lcom/google/android/gms/internal/jf;

    move-result-object v0

    return-object v0
.end method

.method public final iU()Lcom/google/android/gms/internal/jf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jh$c;->VR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jh;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    return-object v0
.end method
