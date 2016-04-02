.class public Lae/gov/mol/vo/CompanyStatusInfoVo;
.super Ljava/lang/Object;
.source "CompanyStatusInfoVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/CompanyStatusInfoVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private COM_STATUS_ARB:Ljava/lang/String;

.field private COM_STATUS_ENG:Ljava/lang/String;

.field private ComStatus:Ljava/lang/String;

.field private CompanyAddress:Ljava/lang/String;

.field private CompanyClass:Ljava/lang/String;

.field private CompanyCode:Ljava/lang/String;

.field private CompanyName_arb:Ljava/lang/String;

.field private CompanyName_eng:Ljava/lang/String;

.field private EmployeeCount:Ljava/lang/String;

.field private LabourOffice_arb:Ljava/lang/String;

.field private LabourOffice_eng:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private com_license_no:Ljava/lang/String;

.field private com_status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lae/gov/mol/vo/CompanyStatusInfoVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyStatusInfoVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 282
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyCode:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyName_arb:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyName_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyAddress:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->LabourOffice_arb:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->LabourOffice_eng:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->EmployeeCount:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->category:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->com_license_no:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->com_status:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->ComStatus:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->COM_STATUS_ENG:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->COM_STATUS_ARB:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyClass:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyCode:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyName_arb:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyName_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyAddress:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->LabourOffice_arb:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->LabourOffice_eng:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->EmployeeCount:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->category:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->com_license_no:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->com_status:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->ComStatus:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->COM_STATUS_ENG:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->COM_STATUS_ARB:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyClass:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyCode:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyName_arb:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyName_eng:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyAddress:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->LabourOffice_arb:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->LabourOffice_eng:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->EmployeeCount:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->category:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->com_license_no:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->com_status:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->ComStatus:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->COM_STATUS_ENG:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->COM_STATUS_ARB:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyClass:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public getCOM_STATUS_ARB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->COM_STATUS_ARB:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_STATUS_ENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->COM_STATUS_ENG:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getComStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->ComStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_license_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->com_license_no:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->com_status:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyClass:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyName_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyName_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getEmployeeCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->EmployeeCount:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOffice_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->LabourOffice_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOffice_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->LabourOffice_eng:Ljava/lang/String;

    return-object v0
.end method

.method public setCOM_STATUS_ARB(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_STATUS_ARB"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->COM_STATUS_ARB:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setCOM_STATUS_ENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_STATUS_ENG"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->COM_STATUS_ENG:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->category:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setComStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "comStatus"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->ComStatus:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setCom_license_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_license_no"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->com_license_no:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setCom_status(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_status"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->com_status:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setCompanyAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyAddress"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyAddress:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setCompanyClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyClass"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyClass:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyCode"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyCode:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setCompanyName_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyName_arb"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyName_arb:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setCompanyName_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyName_eng"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyName_eng:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setEmployeeCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "employeeCount"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->EmployeeCount:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setLabourOffice_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOffice_arb"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->LabourOffice_arb:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setLabourOffice_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOffice_eng"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->LabourOffice_eng:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyName_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyName_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->LabourOffice_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->LabourOffice_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->EmployeeCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->com_license_no:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->com_status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->ComStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->COM_STATUS_ENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->COM_STATUS_ARB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusInfoVo;->CompanyClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    return-void
.end method
