.class public Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;
.super Ljava/lang/Object;
.source "GCCEmployeesByCompanyCodeDetailsVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CardExpiryDate:Ljava/lang/String;

.field private CardIssueDate:Ljava/lang/String;

.field private CardNumber:Ljava/lang/String;

.field private JobType_arb:Ljava/lang/String;

.field private JobType_eng:Ljava/lang/String;

.field private PersonCode:Ljava/lang/String;

.field private PersonName_arb:Ljava/lang/String;

.field private PersonName_eng:Ljava/lang/String;

.field private Sex_arb:Ljava/lang/String;

.field private Sex_eng:Ljava/lang/String;

.field private TotalSalary:Ljava/lang/String;

.field private nat_arb:Ljava/lang/String;

.field private nat_eng:Ljava/lang/String;

.field private natcode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 285
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonCode:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonName_arb:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonName_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->Sex_arb:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->Sex_eng:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardNumber:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardIssueDate:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardExpiryDate:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->TotalSalary:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->nat_arb:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->nat_eng:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->JobType_arb:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->JobType_eng:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->natcode:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonCode:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonName_arb:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonName_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->Sex_arb:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->Sex_eng:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardNumber:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardIssueDate:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardExpiryDate:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->TotalSalary:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->nat_arb:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->nat_eng:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->JobType_arb:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->JobType_eng:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->natcode:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonCode:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonName_arb:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonName_eng:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->Sex_arb:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->Sex_eng:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardNumber:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardIssueDate:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardExpiryDate:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->TotalSalary:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->nat_arb:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->nat_eng:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->JobType_arb:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->JobType_eng:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->natcode:Ljava/lang/String;

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

.method public getCardExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardIssueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardIssueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getJobType_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->JobType_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getJobType_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->JobType_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getNat_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->nat_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getNat_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->nat_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getNatcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->natcode:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonName_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonName_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getSex_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->Sex_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getSex_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->Sex_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSalary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->TotalSalary:Ljava/lang/String;

    return-object v0
.end method

.method public setCardExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardExpiryDate"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardExpiryDate:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setCardIssueDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardIssueDate"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardIssueDate:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardNumber:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setJobType_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobType_arb"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->JobType_arb:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setJobType_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobType_eng"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->JobType_eng:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setNat_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "nat_arb"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->nat_arb:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setNat_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "nat_eng"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->nat_eng:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setNatcode(Ljava/lang/String;)V
    .locals 0
    .param p1, "natcode"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->natcode:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setPersonCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "personCode"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonCode:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPersonName_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "personName_arb"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonName_arb:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setPersonName_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "personName_eng"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonName_eng:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSex_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "sex_arb"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->Sex_arb:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setSex_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "sex_eng"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->Sex_eng:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setTotalSalary(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalSalary"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->TotalSalary:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonName_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->PersonName_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->Sex_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->Sex_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardIssueDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->CardExpiryDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->TotalSalary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->nat_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->nat_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->JobType_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->JobType_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->natcode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    return-void
.end method
