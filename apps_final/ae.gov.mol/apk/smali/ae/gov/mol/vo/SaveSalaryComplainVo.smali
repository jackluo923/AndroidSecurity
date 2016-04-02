.class public Lae/gov/mol/vo/SaveSalaryComplainVo;
.super Ljava/lang/Object;
.source "SaveSalaryComplainVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/SaveSalaryComplainVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private salaryComplainStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lae/gov/mol/vo/SaveSalaryComplainVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/SaveSalaryComplainVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/SaveSalaryComplainVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SaveSalaryComplainVo;->salaryComplainStatus:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SaveSalaryComplainVo;->salaryComplainStatus:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SaveSalaryComplainVo;->salaryComplainStatus:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/SaveSalaryComplainVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v0, Lae/gov/mol/vo/SaveSalaryComplainVo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static setCREATOR(Landroid/os/Parcelable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/SaveSalaryComplainVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "cREATOR":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Lae/gov/mol/vo/SaveSalaryComplainVo;>;"
    sput-object p0, Lae/gov/mol/vo/SaveSalaryComplainVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getSalaryComplainStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lae/gov/mol/vo/SaveSalaryComplainVo;->salaryComplainStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setSalaryComplainStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "salaryComplainStatus"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lae/gov/mol/vo/SaveSalaryComplainVo;->salaryComplainStatus:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lae/gov/mol/vo/SaveSalaryComplainVo;->salaryComplainStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return-void
.end method
