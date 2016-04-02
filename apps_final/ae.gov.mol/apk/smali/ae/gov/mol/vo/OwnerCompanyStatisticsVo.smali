.class public Lae/gov/mol/vo/OwnerCompanyStatisticsVo;
.super Ljava/lang/Object;
.source "OwnerCompanyStatisticsVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/OwnerCompanyStatisticsVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ActiveEmployees:Ljava/lang/String;

.field private BALAGH:Ljava/lang/String;

.field private CompanyArabic:Ljava/lang/String;

.field private CompanyCode:Ljava/lang/String;

.field private CompanyEnglish:Ljava/lang/String;

.field private ExpiredLabourCards:Ljava/lang/String;

.field private ExpiredWorkPermits:Ljava/lang/String;

.field private LabourOfficeArabic:Ljava/lang/String;

.field private LabourOfficeEnglish:Ljava/lang/String;

.field private LicenseEndDate:Ljava/lang/String;

.field private LicenseNumber:Ljava/lang/String;

.field private NameArabic:Ljava/lang/String;

.field private NameEnglish:Ljava/lang/String;

.field private NationalityArabic:Ljava/lang/String;

.field private NationalityEnglish:Ljava/lang/String;

.field private PersonCode:Ljava/lang/String;

.field private SHAKWA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 334
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->PersonCode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NameEnglish:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NameArabic:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NationalityEnglish:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NationalityArabic:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyCode:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyEnglish:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyArabic:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LabourOfficeEnglish:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LabourOfficeArabic:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LicenseEndDate:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LicenseNumber:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ActiveEmployees:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->BALAGH:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->SHAKWA:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ExpiredLabourCards:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ExpiredWorkPermits:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->PersonCode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NameEnglish:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NameArabic:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NationalityEnglish:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NationalityArabic:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyCode:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyEnglish:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyArabic:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LabourOfficeEnglish:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LabourOfficeArabic:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LicenseEndDate:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LicenseNumber:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ActiveEmployees:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->BALAGH:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->SHAKWA:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ExpiredLabourCards:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ExpiredWorkPermits:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->PersonCode:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NameEnglish:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NameArabic:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NationalityEnglish:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NationalityArabic:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyCode:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyEnglish:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyArabic:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LabourOfficeEnglish:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LabourOfficeArabic:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LicenseEndDate:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LicenseNumber:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ActiveEmployees:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->BALAGH:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->SHAKWA:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ExpiredLabourCards:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ExpiredWorkPermits:Ljava/lang/String;

    .line 293
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveEmployees()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ActiveEmployees:Ljava/lang/String;

    return-object v0
.end method

.method public getBALAGH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->BALAGH:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredLabourCards()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ExpiredLabourCards:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredWorkPermits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ExpiredWorkPermits:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LabourOfficeArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LabourOfficeEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LicenseEndDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LicenseNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNameArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NameArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getNameEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NameEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NationalityArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NationalityEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->PersonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSHAKWA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->SHAKWA:Ljava/lang/String;

    return-object v0
.end method

.method public setActiveEmployees(Ljava/lang/String;)V
    .locals 0
    .param p1, "activeEmployees"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ActiveEmployees:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setBALAGH(Ljava/lang/String;)V
    .locals 0
    .param p1, "bALAGH"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->BALAGH:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setCompanyArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyArabic"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyArabic:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyCode"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyCode:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setCompanyEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyEnglish"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyEnglish:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setExpiredLabourCards(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiredLabourCards"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ExpiredLabourCards:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setExpiredWorkPermits(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiredWorkPermits"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ExpiredWorkPermits:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setLabourOfficeArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeArabic"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LabourOfficeArabic:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setLabourOfficeEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeEnglish"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LabourOfficeEnglish:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setLicenseEndDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "licenseEndDate"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LicenseEndDate:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setLicenseNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "licenseNumber"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LicenseNumber:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setNameArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameArabic"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NameArabic:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setNameEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameEnglish"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NameEnglish:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setNationalityArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityArabic"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NationalityArabic:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setNationalityEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityEnglish"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NationalityEnglish:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setPersonCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "personCode"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->PersonCode:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSHAKWA(Ljava/lang/String;)V
    .locals 0
    .param p1, "sHAKWA"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->SHAKWA:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->PersonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NameEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NameArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NationalityEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->NationalityArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->CompanyArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LabourOfficeEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LabourOfficeArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LicenseEndDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->LicenseNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ActiveEmployees:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->BALAGH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->SHAKWA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ExpiredLabourCards:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->ExpiredWorkPermits:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    return-void
.end method
