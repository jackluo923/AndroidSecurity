.class public final Lcom/google/android/gms/internal/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ak;


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final lQ:J

.field public final lR:I

.field public final lS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final lT:Z

.field public final lU:I

.field public final lV:Z

.field public final lW:Ljava/lang/String;

.field public final lX:Lcom/google/android/gms/internal/ax;

.field public final lY:Landroid/location/Location;

.field public final lZ:Ljava/lang/String;

.field public final ma:Landroid/os/Bundle;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ak;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aj;->CREATOR:Lcom/google/android/gms/internal/ak;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ax;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ax;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/aj;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/aj;->lQ:J

    iput-object p4, p0, Lcom/google/android/gms/internal/aj;->extras:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/aj;->lR:I

    iput-object p6, p0, Lcom/google/android/gms/internal/aj;->lS:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/aj;->lT:Z

    iput p8, p0, Lcom/google/android/gms/internal/aj;->lU:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/aj;->lV:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/aj;->lW:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/aj;->lX:Lcom/google/android/gms/internal/ax;

    iput-object p12, p0, Lcom/google/android/gms/internal/aj;->lY:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/internal/aj;->lZ:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/aj;->ma:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ak;->a(Lcom/google/android/gms/internal/aj;Landroid/os/Parcel;I)V

    return-void
.end method
