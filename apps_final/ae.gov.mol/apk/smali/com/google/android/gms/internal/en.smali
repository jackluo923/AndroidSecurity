.class public Lcom/google/android/gms/internal/en;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/eo;


# instance fields
.field private final W:I

.field private final dd:Ljava/lang/String;

.field private final iN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;"
        }
    .end annotation
.end field

.field private final iO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;"
        }
    .end annotation
.end field

.field private final iP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/eo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/eo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/en;->CREATOR:Lcom/google/android/gms/internal/eo;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ak;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/en;->W:I

    iput-object p2, p0, Lcom/google/android/gms/internal/en;->dd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/en;->iN:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/en;->iO:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/en;->iP:Z

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/en;->W:I

    return v0
.end method

.method public bT()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->iN:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bU()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->iO:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/en;->iP:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->dd:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/eo;->a(Lcom/google/android/gms/internal/en;Landroid/os/Parcel;I)V

    return-void
.end method
