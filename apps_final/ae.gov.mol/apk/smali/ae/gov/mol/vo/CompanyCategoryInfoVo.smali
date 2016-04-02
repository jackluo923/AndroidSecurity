.class public Lae/gov/mol/vo/CompanyCategoryInfoVo;
.super Ljava/lang/Object;
.source "CompanyCategoryInfoVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ARABIC:I = 0x2

.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/CompanyCategoryInfoVo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENGLISH:I = 0x1

.field public static STATUS:I


# instance fields
.field private Abscornded:Ljava/lang/String;

.field private ActiveEmployees:Ljava/lang/String;

.field private ApprovedQuota:Ljava/lang/String;

.field private Category:Ljava/lang/String;

.field private CompanyCode:Ljava/lang/String;

.field private LabourOfficeArabic:Ljava/lang/String;

.field private LabourOfficeCode:Ljava/lang/String;

.field private LabourOfficeEnglish:Ljava/lang/String;

.field private NameArabic:Ljava/lang/String;

.field private NameEnglish:Ljava/lang/String;

.field private NationalityArabic:Ljava/lang/String;

.field private NationalityCode:Ljava/lang/String;

.field private NationalityEnglish:Ljava/lang/String;

.field private TotalEmployees:Ljava/lang/String;

.field private TotalNat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput v0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->STATUS:I

    .line 321
    new-instance v0, Lae/gov/mol/vo/CompanyCategoryInfoVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyCategoryInfoVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 332
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->CompanyCode:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NameEnglish:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NameArabic:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->Category:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeCode:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeEnglish:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeArabic:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityCode:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityEnglish:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityArabic:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->ActiveEmployees:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->ApprovedQuota:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->Abscornded:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->TotalNat:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->TotalEmployees:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->CompanyCode:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NameEnglish:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NameArabic:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->Category:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeCode:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeEnglish:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeArabic:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityCode:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityEnglish:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityArabic:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->ActiveEmployees:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->ApprovedQuota:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->Abscornded:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->TotalNat:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->TotalEmployees:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->CompanyCode:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NameEnglish:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NameArabic:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->Category:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeCode:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeEnglish:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeArabic:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityCode:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityEnglish:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityArabic:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->ActiveEmployees:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->ApprovedQuota:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->Abscornded:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->TotalNat:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->TotalEmployees:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public static getArabic()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x2

    return v0
.end method

.method public static getEnglish()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public static getSTATUS()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->STATUS:I

    return v0
.end method

.method public static setSTATUS(I)V
    .locals 0
    .param p0, "sTATUS"    # I

    .prologue
    .line 49
    sput p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->STATUS:I

    .line 50
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

.method public getAbscornded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->Abscornded:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveEmployees()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->ActiveEmployees:Ljava/lang/String;

    return-object v0
.end method

.method public getApprovedQuota()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->ApprovedQuota:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->Category:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->CompanyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getNameArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NameArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getNameEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NameEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalEmployees()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->TotalEmployees:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalNat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->TotalNat:Ljava/lang/String;

    return-object v0
.end method

.method public setAbscornded(Ljava/lang/String;)V
    .locals 0
    .param p1, "abscornded"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->Abscornded:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setActiveEmployees(Ljava/lang/String;)V
    .locals 0
    .param p1, "activeEmployees"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->ActiveEmployees:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setApprovedQuota(Ljava/lang/String;)V
    .locals 0
    .param p1, "approvedQuota"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->ApprovedQuota:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->Category:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyCode"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->CompanyCode:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setLabourOfficeArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeArabic"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeArabic:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setLabourOfficeCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeCode"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeCode:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setLabourOfficeEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeEnglish"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeEnglish:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setNameArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameArabic"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NameArabic:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setNameEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameEnglish"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NameEnglish:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setNationalityArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityArabic"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityArabic:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setNationalityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityCode"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityCode:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setNationalityEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityEnglish"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityEnglish:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setTotalEmployees(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalEmployees"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->TotalEmployees:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setTotalNat(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalNat"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->TotalNat:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    sget v0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->STATUS:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->getNationalityArabic()Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->getNationalityEnglish()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->CompanyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NameEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NameArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->Category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->LabourOfficeArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->NationalityArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->ActiveEmployees:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->ApprovedQuota:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->Abscornded:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->TotalNat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lae/gov/mol/vo/CompanyCategoryInfoVo;->TotalEmployees:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    return-void
.end method
