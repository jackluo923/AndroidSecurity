.class public Lcom/google/android/gms/internal/fh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fi;


# instance fields
.field private final W:I

.field private final jv:Ljava/lang/String;

.field private final kF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;"
        }
    .end annotation
.end field

.field private final kG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final kH:Landroid/net/Uri;

.field private final kI:Ljava/lang/String;

.field private final kJ:Ljava/lang/String;

.field private final kK:Ljava/lang/String;

.field private final kL:Landroid/os/Bundle;

.field private final kM:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/fi;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fh;->W:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fh;->jv:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fh;->kF:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/fh;->kG:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/fh;->kH:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/internal/fh;->kI:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/fh;->kJ:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/fh;->kK:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/fh;->kL:Landroid/os/Bundle;

    iput-object p10, p0, Lcom/google/android/gms/internal/fh;->kM:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fh;->W:I

    return v0
.end method

.method public cS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->kF:Ljava/util/List;

    return-object v0
.end method

.method public cT()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->kG:Ljava/util/List;

    return-object v0
.end method

.method public cU()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->kH:Landroid/net/Uri;

    return-object v0
.end method

.method public cV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->kI:Ljava/lang/String;

    return-object v0
.end method

.method public cW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->kJ:Ljava/lang/String;

    return-object v0
.end method

.method public cX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->kK:Ljava/lang/String;

    return-object v0
.end method

.method public cY()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->kL:Landroid/os/Bundle;

    return-object v0
.end method

.method public cZ()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->kM:Landroid/os/Bundle;

    return-object v0
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

    instance-of v1, p1, Lcom/google/android/gms/internal/fh;

    if-nez v1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/fh;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/internal/fh;->W:I

    iget v2, p1, Lcom/google/android/gms/internal/fh;->W:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->kF:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/fh;->kF:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->kG:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/fh;->kG:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->kH:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/gms/internal/fh;->kH:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->kI:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/fh;->kI:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->kJ:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/fh;->kJ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fh;->kK:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/fh;->kK:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fh;->jv:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/fh;->W:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/fh;->kF:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/fh;->kG:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/fh;->kH:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/fh;->kI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/fh;->kJ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/fh;->kK:Ljava/lang/String;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fi;->a(Lcom/google/android/gms/internal/fh;Landroid/os/Parcel;I)V

    return-void
.end method
