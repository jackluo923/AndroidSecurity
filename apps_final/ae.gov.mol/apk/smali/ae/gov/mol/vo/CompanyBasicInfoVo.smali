.class public Lae/gov/mol/vo/CompanyBasicInfoVo;
.super Ljava/lang/Object;
.source "CompanyBasicInfoVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/CompanyBasicInfoVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ComNameArb:Ljava/lang/String;

.field private ComNameEng:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lae/gov/mol/vo/CompanyBasicInfoVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyBasicInfoVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/CompanyBasicInfoVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyBasicInfoVo;->ComNameEng:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyBasicInfoVo;->ComNameArb:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyBasicInfoVo;->ComNameEng:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyBasicInfoVo;->ComNameArb:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyBasicInfoVo;->ComNameEng:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyBasicInfoVo;->ComNameArb:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getComNameArb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lae/gov/mol/vo/CompanyBasicInfoVo;->ComNameArb:Ljava/lang/String;

    return-object v0
.end method

.method public getComNameEng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lae/gov/mol/vo/CompanyBasicInfoVo;->ComNameEng:Ljava/lang/String;

    return-object v0
.end method

.method public setComNameArb(Ljava/lang/String;)V
    .locals 0
    .param p1, "comNameArb"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lae/gov/mol/vo/CompanyBasicInfoVo;->ComNameArb:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setComNameEng(Ljava/lang/String;)V
    .locals 0
    .param p1, "comNameEng"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lae/gov/mol/vo/CompanyBasicInfoVo;->ComNameEng:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lae/gov/mol/vo/CompanyBasicInfoVo;->ComNameEng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lae/gov/mol/vo/CompanyBasicInfoVo;->ComNameArb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
