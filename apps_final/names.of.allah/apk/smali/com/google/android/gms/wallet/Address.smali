.class public final Lcom/google/android/gms/wallet/Address;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field UE:Ljava/lang/String;

.field UF:Ljava/lang/String;

.field UG:Ljava/lang/String;

.field UL:Ljava/lang/String;

.field UN:Ljava/lang/String;

.field UO:Z

.field UP:Ljava/lang/String;

.field aiF:Ljava/lang/String;

.field aiG:Ljava/lang/String;

.field name:Ljava/lang/String;

.field rc:Ljava/lang/String;

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/a;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/Address;->xJ:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/Address;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/Address;->UE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/Address;->UF:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/Address;->UG:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/Address;->rc:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/Address;->aiF:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/Address;->aiG:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/Address;->UL:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/wallet/Address;->UN:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/Address;->UO:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/Address;->UP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAddress1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->UE:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddress2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->UF:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddress3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->UG:Ljava/lang/String;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->aiF:Ljava/lang/String;

    return-object v0
.end method

.method public final getCompanyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->UP:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->rc:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->UN:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->UL:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->aiG:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/Address;->xJ:I

    return v0
.end method

.method public final isPostBox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/Address;->UO:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/a;->a(Lcom/google/android/gms/wallet/Address;Landroid/os/Parcel;I)V

    return-void
.end method
