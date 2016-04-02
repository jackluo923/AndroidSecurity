.class public final Lcom/google/android/gms/wallet/wobs/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field akW:Ljava/lang/String;

.field qb:Ljava/lang/String;

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/k;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/j;->xJ:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/j;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/j;->akW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/j;->qb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/j;->xJ:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/k;->a(Lcom/google/android/gms/wallet/wobs/j;Landroid/os/Parcel;I)V

    return-void
.end method
