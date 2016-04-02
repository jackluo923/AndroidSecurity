.class public Lcom/google/android/gms/internal/fh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fi;


# instance fields
.field final xJ:I

.field final xK:[Lcom/google/android/gms/internal/fl;

.field public final xL:Ljava/lang/String;

.field public final xM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/fi;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/internal/fl;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fh;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fh;->xK:[Lcom/google/android/gms/internal/fl;

    iput-object p3, p0, Lcom/google/android/gms/internal/fh;->xL:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/fh;->xM:Z

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Z[Lcom/google/android/gms/internal/fl;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/google/android/gms/internal/fh;-><init>(I[Lcom/google/android/gms/internal/fl;Ljava/lang/String;Z)V

    new-instance v1, Ljava/util/BitSet;

    invoke-static {}, Lcom/google/android/gms/internal/fp;->dK()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_2

    aget-object v2, p3, v0

    iget v2, v2, Lcom/google/android/gms/internal/fl;->xT:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate global search section type "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/fp;->H(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/fi;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/fi;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fi;->a(Lcom/google/android/gms/internal/fh;Landroid/os/Parcel;I)V

    return-void
.end method
