.class public Lcom/google/android/gms/internal/ic$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ib;


# instance fields
.field final Hm:Lcom/google/android/gms/internal/hz$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hz$a",
            "<**>;"
        }
    .end annotation
.end field

.field final eM:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ib;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ic$b;->CREATOR:Lcom/google/android/gms/internal/ib;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/hz$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hz$a",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ic$b;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ic$b;->eM:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ic$b;->Hm:Lcom/google/android/gms/internal/hz$a;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/hz$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hz$a",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ic$b;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ic$b;->eM:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ic$b;->Hm:Lcom/google/android/gms/internal/hz$a;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ic$b;->CREATOR:Lcom/google/android/gms/internal/ib;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ic$b;->CREATOR:Lcom/google/android/gms/internal/ib;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ib;->a(Lcom/google/android/gms/internal/ic$b;Landroid/os/Parcel;I)V

    return-void
.end method
