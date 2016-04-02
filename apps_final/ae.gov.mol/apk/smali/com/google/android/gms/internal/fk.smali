.class public Lcom/google/android/gms/internal/fk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/fj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/fj;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ai;->d(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fj;->da()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fj;->F()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fj;->db()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fj;->dc()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fj;->dd()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fj;->de()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ai;->C(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public F(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fj;
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ah;->c(Landroid/os/Parcel;)I

    move-result v0

    move-object v4, v5

    move-object v3, v5

    move v2, v6

    move v1, v6

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ah;->b(Landroid/os/Parcel;)I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ah;->m(I)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    invoke-static {p1, v7}, Lcom/google/android/gms/internal/ah;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v7}, Lcom/google/android/gms/internal/ah;->c(Landroid/os/Parcel;I)Z

    move-result v2

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v7}, Lcom/google/android/gms/internal/ah;->f(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :sswitch_2
    sget-object v3, Lcom/google/android/gms/internal/ak;->CREATOR:Lcom/google/android/gms/internal/al;

    invoke-static {p1, v7, v3}, Lcom/google/android/gms/internal/ah;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :sswitch_3
    sget-object v4, Lcom/google/android/gms/internal/ak;->CREATOR:Lcom/google/android/gms/internal/al;

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/ah;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v7}, Lcom/google/android/gms/internal/ah;->n(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0

    :sswitch_5
    invoke-static {p1, v7}, Lcom/google/android/gms/internal/ah;->c(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-eq v7, v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ah$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ah$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/fj;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/fj;-><init>(IZLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;Z)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public ae(I)[Lcom/google/android/gms/internal/fj;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/fj;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fk;->F(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fk;->ae(I)[Lcom/google/android/gms/internal/fj;

    move-result-object v0

    return-object v0
.end method
