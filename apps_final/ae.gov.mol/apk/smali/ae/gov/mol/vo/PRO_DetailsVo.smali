.class public Lae/gov/mol/vo/PRO_DetailsVo;
.super Ljava/lang/Object;
.source "PRO_DetailsVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private CardExpiryDate:Ljava/lang/String;

.field private CompanyCategory:Ljava/lang/String;

.field private CompanyCode:Ljava/lang/String;

.field private CompanyName_arb:Ljava/lang/String;

.field private CompanyName_eng:Ljava/lang/String;

.field private LaborCardNumber:Ljava/lang/String;

.field private LaborOffice_arb:Ljava/lang/String;

.field private LaborOffice_eng:Ljava/lang/String;

.field private Nationality_arb:Ljava/lang/String;

.field private Nationality_eng:Ljava/lang/String;

.field private PersonCode:Ljava/lang/String;

.field private PersonName_arb:Ljava/lang/String;

.field private PersonName_eng:Ljava/lang/String;

.field private TotalEmployees:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonCode:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborOffice_arb:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborOffice_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborCardNumber:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CardExpiryDate:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonName_arb:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonName_eng:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyCode:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyName_arb:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyName_eng:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyCategory:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->TotalEmployees:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->Nationality_arb:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->Nationality_eng:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonCode:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborOffice_arb:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborOffice_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborCardNumber:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CardExpiryDate:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonName_arb:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonName_eng:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyCode:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyName_arb:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyName_eng:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyCategory:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->TotalEmployees:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->Nationality_arb:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->Nationality_eng:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonCode:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborOffice_arb:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborOffice_eng:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborCardNumber:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CardExpiryDate:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonName_arb:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonName_eng:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyCode:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyName_arb:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyName_eng:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyCategory:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->TotalEmployees:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->Nationality_arb:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->Nationality_eng:Ljava/lang/String;

    .line 246
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public getCardExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CardExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyName_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyName_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getLaborCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getLaborOffice_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborOffice_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getLaborOffice_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborOffice_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->Nationality_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->Nationality_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonName_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonName_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalEmployees()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->TotalEmployees:Ljava/lang/String;

    return-object v0
.end method

.method public setCardExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardExpiryDate"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CardExpiryDate:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setCompanyCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyCategory"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyCategory:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyCode"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyCode:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setCompanyName_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyName_arb"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyName_arb:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setCompanyName_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyName_eng"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyName_eng:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setLaborCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "laborCardNumber"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborCardNumber:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setLaborOffice_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "laborOffice_arb"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborOffice_arb:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setLaborOffice_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "laborOffice_eng"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborOffice_eng:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setNationality_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality_arb"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->Nationality_arb:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setNationality_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality_eng"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->Nationality_eng:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setPersonCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "personCode"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonCode:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setPersonName_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "personName_arb"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonName_arb:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setPersonName_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "personName_eng"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonName_eng:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setTotalEmployees(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalEmployees"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lae/gov/mol/vo/PRO_DetailsVo;->TotalEmployees:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborOffice_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborOffice_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->LaborCardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CardExpiryDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonName_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->PersonName_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyName_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyName_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->CompanyCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->TotalEmployees:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->Nationality_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lae/gov/mol/vo/PRO_DetailsVo;->Nationality_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    return-void
.end method
