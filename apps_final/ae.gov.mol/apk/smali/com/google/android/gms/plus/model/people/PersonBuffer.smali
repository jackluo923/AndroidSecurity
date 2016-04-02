.class public final Lcom/google/android/gms/plus/model/people/PersonBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person;",
        ">;"
    }
.end annotation


# instance fields
.field private final kE:Lcom/google/android/gms/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/k",
            "<",
            "Lcom/google/android/gms/internal/eu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/l;)V
    .locals 3
    .param p1, "dataHolder"    # Lcom/google/android/gms/internal/l;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/internal/l;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/l;->i()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/l;->i()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.gms.plus.IsSafeParcelable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/k;

    sget-object v1, Lcom/google/android/gms/internal/eu;->CREATOR:Lcom/google/android/gms/internal/ev;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/k;-><init>(Lcom/google/android/gms/internal/l;Landroid/os/Parcelable$Creator;)V

    iput-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->kE:Lcom/google/android/gms/internal/k;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->kE:Lcom/google/android/gms/internal/k;

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/plus/model/people/Person;
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->kE:Lcom/google/android/gms/internal/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->kE:Lcom/google/android/gms/internal/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/k;->d(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/model/people/Person;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/fg;

    iget-object v1, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->N:Lcom/google/android/gms/internal/l;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/fg;-><init>(Lcom/google/android/gms/internal/l;I)V

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method
