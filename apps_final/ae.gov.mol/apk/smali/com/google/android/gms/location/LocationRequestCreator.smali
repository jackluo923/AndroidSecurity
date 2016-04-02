.class public Lcom/google/android/gms/location/LocationRequestCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/LocationRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/location/LocationRequest;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/ai;->d(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->W:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->fv:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->fw:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->fx:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->fq:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->fy:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->fz:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ai;->C(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ah;->c(Landroid/os/Parcel;)I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ah;->b(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ah;->m(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ah;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ah;->f(Landroid/os/Parcel;I)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ah;->f(Landroid/os/Parcel;I)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/location/LocationRequest;->W:I

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ah;->g(Landroid/os/Parcel;I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/location/LocationRequest;->fv:J

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ah;->g(Landroid/os/Parcel;I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/location/LocationRequest;->fw:J

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ah;->c(Landroid/os/Parcel;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/gms/location/LocationRequest;->fx:Z

    goto :goto_0

    :sswitch_5
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ah;->g(Landroid/os/Parcel;I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/location/LocationRequest;->fq:J

    goto :goto_0

    :sswitch_6
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ah;->f(Landroid/os/Parcel;I)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/location/LocationRequest;->fy:I

    goto :goto_0

    :sswitch_7
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ah;->i(Landroid/os/Parcel;I)F

    move-result v2

    iput v2, v0, Lcom/google/android/gms/location/LocationRequest;->fz:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-eq v2, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ah$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ah$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/location/LocationRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/LocationRequestCreator;->newArray(I)[Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method
