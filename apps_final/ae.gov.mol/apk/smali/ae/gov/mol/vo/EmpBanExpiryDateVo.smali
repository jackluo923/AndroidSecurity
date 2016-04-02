.class public Lae/gov/mol/vo/EmpBanExpiryDateVo;
.super Ljava/lang/Object;
.source "EmpBanExpiryDateVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/EmpBanExpiryDateVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ban_expiry:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lae/gov/mol/vo/EmpBanExpiryDateVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/EmpBanExpiryDateVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/EmpBanExpiryDateVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/EmpBanExpiryDateVo;->ban_expiry:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/EmpBanExpiryDateVo;->ban_expiry:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/EmpBanExpiryDateVo;->ban_expiry:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getBan_expiry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lae/gov/mol/vo/EmpBanExpiryDateVo;->ban_expiry:Ljava/lang/String;

    return-object v0
.end method

.method public setBan_expiry(Ljava/lang/String;)V
    .locals 0
    .param p1, "ban_expiry"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lae/gov/mol/vo/EmpBanExpiryDateVo;->ban_expiry:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lae/gov/mol/vo/EmpBanExpiryDateVo;->ban_expiry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return-void
.end method
