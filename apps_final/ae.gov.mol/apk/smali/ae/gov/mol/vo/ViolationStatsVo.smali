.class public Lae/gov/mol/vo/ViolationStatsVo;
.super Ljava/lang/Object;
.source "ViolationStatsVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ViolationStatsVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CompanyCode:Ljava/lang/String;

.field private Help_arb:Ljava/lang/String;

.field private Help_eng:Ljava/lang/String;

.field private Violation_Eng:Ljava/lang/String;

.field private Violation_arb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lae/gov/mol/vo/ViolationStatsVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ViolationStatsVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ViolationStatsVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->CompanyCode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Violation_Eng:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Violation_arb:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Help_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Help_arb:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->CompanyCode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Violation_Eng:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Violation_arb:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Help_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Help_arb:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->CompanyCode:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Violation_Eng:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Violation_arb:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Help_eng:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Help_arb:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->CompanyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getHelp_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Help_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getHelp_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Help_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getViolation_Eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Violation_Eng:Ljava/lang/String;

    return-object v0
.end method

.method public getViolation_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Violation_arb:Ljava/lang/String;

    return-object v0
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyCode"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lae/gov/mol/vo/ViolationStatsVo;->CompanyCode:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setHelp_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "help_arb"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lae/gov/mol/vo/ViolationStatsVo;->Help_arb:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setHelp_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "help_eng"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lae/gov/mol/vo/ViolationStatsVo;->Help_eng:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setViolation_Eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "violation_Eng"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lae/gov/mol/vo/ViolationStatsVo;->Violation_Eng:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setViolation_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "violation_arb"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lae/gov/mol/vo/ViolationStatsVo;->Violation_arb:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->CompanyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Violation_Eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Violation_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Help_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lae/gov/mol/vo/ViolationStatsVo;->Help_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return-void
.end method
