.class final Lcom/google/android/gms/internal/cm$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/cp",
        "<",
        "Lcom/google/android/gms/internal/ck;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic fJ:Lcom/google/android/gms/internal/cm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cm$c;->fJ:Lcom/google/android/gms/internal/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/cm$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cm$c;-><init>(Lcom/google/android/gms/internal/cm;)V

    return-void
.end method


# virtual methods
.method public aQ()Lcom/google/android/gms/internal/ck;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm$c;->fJ:Lcom/google/android/gms/internal/cm;

    invoke-static {v0}, Lcom/google/android/gms/internal/cm;->b(Lcom/google/android/gms/internal/cm;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ck;

    return-object v0
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm$c;->fJ:Lcom/google/android/gms/internal/cm;

    invoke-static {v0}, Lcom/google/android/gms/internal/cm;->a(Lcom/google/android/gms/internal/cm;)V

    return-void
.end method

.method public synthetic z()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm$c;->aQ()Lcom/google/android/gms/internal/ck;

    move-result-object v0

    return-object v0
.end method
