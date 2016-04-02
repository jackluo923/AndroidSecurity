.class public Lcom/google/android/gms/internal/fj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fk;


# instance fields
.field private final W:I

.field private final kN:Z

.field private final kO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;"
        }
    .end annotation
.end field

.field private final kP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;"
        }
    .end annotation
.end field

.field private final kQ:Landroid/os/Bundle;

.field private final kR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fj;->CREATOR:Lcom/google/android/gms/internal/fk;

    return-void
.end method

.method public constructor <init>(IZLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fj;->W:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/fj;->kN:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/fj;->kO:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/fj;->kP:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/google/android/gms/internal/fj;->kQ:Landroid/os/Bundle;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/fj;->kR:Z

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fj;->W:I

    return v0
.end method

.method public da()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fj;->kN:Z

    return v0
.end method

.method public db()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->kO:Ljava/util/ArrayList;

    return-object v0
.end method

.method public dc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->kP:Ljava/util/ArrayList;

    return-object v0
.end method

.method public dd()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->kQ:Landroid/os/Bundle;

    return-object v0
.end method

.method public de()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fj;->kR:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/fj;

    if-nez v1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/fj;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/internal/fj;->W:I

    iget v2, p1, Lcom/google/android/gms/internal/fj;->W:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fj;->kN:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/gms/internal/fj;->kN:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fj;->kO:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/google/android/gms/internal/fj;->kO:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fj;->kP:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/google/android/gms/internal/fj;->kP:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fj;->kQ:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/fj;->kQ:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/fj;->W:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fj;->kN:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/fj;->kO:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/fj;->kP:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/fj;->kQ:Landroid/os/Bundle;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fk;->a(Lcom/google/android/gms/internal/fj;Landroid/os/Parcel;I)V

    return-void
.end method
