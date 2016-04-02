.class final Lcom/google/android/gms/internal/cm$a;
.super Lcom/google/android/gms/internal/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/ck;",
        ">.b<",
        "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final fI:[Ljava/lang/String;

.field final synthetic fJ:Lcom/google/android/gms/internal/cm;

.field private final p:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;I[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/cm$a;->fJ:Lcom/google/android/gms/internal/cm;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/u$b;-><init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/google/android/gms/location/LocationStatusCodes;->J(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/cm$a;->p:I

    iput-object p4, p0, Lcom/google/android/gms/internal/cm$a;->fI:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/cm$a;->p:I

    iget-object v1, p0, Lcom/google/android/gms/internal/cm$a;->fI:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;->onAddGeofencesResult(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cm$a;->a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
