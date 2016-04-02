.class public Lae/gov/mol/vo/OwnerstatisticsVo;
.super Ljava/lang/Object;
.source "OwnerstatisticsVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/OwnerstatisticsVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private COMPANYCODE:Ljava/lang/String;

.field private COMPANYNAME:Ljava/lang/String;

.field private COMPANY_FINE:Ljava/lang/String;

.field private EMPLOYEES:Ljava/lang/String;

.field private EXPIREDLABOURCARD:Ljava/lang/String;

.field private EXPIREDWORKPERMIT:Ljava/lang/String;

.field private ExpiredCardLesshan60Days:Ljava/lang/String;

.field private ExpiredCardMorethan60Days:Ljava/lang/String;

.field private Expiredin60Days:Ljava/lang/String;

.field private INCOMPLETE_COUNT:Ljava/lang/String;

.field private LABOURWITHOUTCONTRACT:Ljava/lang/String;

.field private LICENSEDATE:Ljava/lang/String;

.field private LICENSENO:Ljava/lang/String;

.field private OFFICENAME:Ljava/lang/String;

.field private OFFICENAME_ENG:Ljava/lang/String;

.field private OWNERCODE:Ljava/lang/String;

.field private OWNERNAME:Ljava/lang/String;

.field private OWNERNAME_ENG:Ljava/lang/String;

.field private SALARYBLOCK:Ljava/lang/String;

.field private STATUS_NAME:Ljava/lang/String;

.field private TOTALABSCONDING:Ljava/lang/String;

.field private TOTALCOMPLAINT:Ljava/lang/String;

.field private UPCANCEL:Ljava/lang/String;

.field private com_status:Ljava/lang/String;

.field private companyName_eng:Ljava/lang/String;

.field private mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

.field private mLongDate:J

.field private mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 471
    new-instance v0, Lae/gov/mol/vo/OwnerstatisticsVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/OwnerstatisticsVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/OwnerstatisticsVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 482
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERCODE:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERNAME:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERNAME_ENG:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->companyName_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANYCODE:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANYNAME:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OFFICENAME:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OFFICENAME_ENG:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LICENSEDATE:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LICENSENO:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->STATUS_NAME:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->INCOMPLETE_COUNT:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EMPLOYEES:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->TOTALABSCONDING:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->TOTALCOMPLAINT:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EXPIREDLABOURCARD:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EXPIREDWORKPERMIT:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->SALARYBLOCK:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->UPCANCEL:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LABOURWITHOUTCONTRACT:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->ExpiredCardMorethan60Days:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->Expiredin60Days:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->ExpiredCardLesshan60Days:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANY_FINE:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->com_status:Ljava/lang/String;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->mLongDate:J

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERCODE:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERNAME:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERNAME_ENG:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->companyName_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANYCODE:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANYNAME:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OFFICENAME:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OFFICENAME_ENG:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LICENSEDATE:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LICENSENO:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->STATUS_NAME:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->INCOMPLETE_COUNT:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EMPLOYEES:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->TOTALABSCONDING:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->TOTALCOMPLAINT:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EXPIREDLABOURCARD:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EXPIREDWORKPERMIT:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->SALARYBLOCK:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->UPCANCEL:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LABOURWITHOUTCONTRACT:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->ExpiredCardMorethan60Days:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->Expiredin60Days:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->ExpiredCardLesshan60Days:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANY_FINE:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->com_status:Ljava/lang/String;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->mLongDate:J

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERCODE:Ljava/lang/String;

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERNAME:Ljava/lang/String;

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERNAME_ENG:Ljava/lang/String;

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->companyName_eng:Ljava/lang/String;

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANYCODE:Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANYNAME:Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OFFICENAME:Ljava/lang/String;

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OFFICENAME_ENG:Ljava/lang/String;

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LICENSEDATE:Ljava/lang/String;

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LICENSENO:Ljava/lang/String;

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->STATUS_NAME:Ljava/lang/String;

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->INCOMPLETE_COUNT:Ljava/lang/String;

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EMPLOYEES:Ljava/lang/String;

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->TOTALABSCONDING:Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->TOTALCOMPLAINT:Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EXPIREDLABOURCARD:Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EXPIREDWORKPERMIT:Ljava/lang/String;

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->SALARYBLOCK:Ljava/lang/String;

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->UPCANCEL:Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LABOURWITHOUTCONTRACT:Ljava/lang/String;

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->ExpiredCardMorethan60Days:Ljava/lang/String;

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->Expiredin60Days:Ljava/lang/String;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->ExpiredCardLesshan60Days:Ljava/lang/String;

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANY_FINE:Ljava/lang/String;

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->com_status:Ljava/lang/String;

    .line 465
    const-class v0, Lae/gov/mol/vo/CompanyQuotaVo;

    .line 466
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 465
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaVo;

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    .line 467
    const-class v0, Lae/gov/mol/vo/ViolationStatsVo;

    .line 468
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 467
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ViolationStatsVo;

    iput-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    .line 469
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public getCOMPANYCODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANYCODE:Ljava/lang/String;

    return-object v0
.end method

.method public getCOMPANYNAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANYNAME:Ljava/lang/String;

    return-object v0
.end method

.method public getCOMPANY_FINE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANY_FINE:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->com_status:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->companyName_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getEMPLOYEES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EMPLOYEES:Ljava/lang/String;

    return-object v0
.end method

.method public getEXPIREDLABOURCARD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EXPIREDLABOURCARD:Ljava/lang/String;

    return-object v0
.end method

.method public getEXPIREDWORKPERMIT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EXPIREDWORKPERMIT:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredCardLesshan60Days()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->ExpiredCardLesshan60Days:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredCardMorethan60Days()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->ExpiredCardMorethan60Days:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredin60Days()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->Expiredin60Days:Ljava/lang/String;

    return-object v0
.end method

.method public getINCOMPLETE_COUNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->INCOMPLETE_COUNT:Ljava/lang/String;

    return-object v0
.end method

.method public getLABOURWITHOUTCONTRACT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LABOURWITHOUTCONTRACT:Ljava/lang/String;

    return-object v0
.end method

.method public getLICENSEDATE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LICENSEDATE:Ljava/lang/String;

    return-object v0
.end method

.method public getLICENSENO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LICENSENO:Ljava/lang/String;

    return-object v0
.end method

.method public getOFFICENAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OFFICENAME:Ljava/lang/String;

    return-object v0
.end method

.method public getOFFICENAME_ENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OFFICENAME_ENG:Ljava/lang/String;

    return-object v0
.end method

.method public getOWNERCODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERCODE:Ljava/lang/String;

    return-object v0
.end method

.method public getOWNERNAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERNAME:Ljava/lang/String;

    return-object v0
.end method

.method public getOWNERNAME_ENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERNAME_ENG:Ljava/lang/String;

    return-object v0
.end method

.method public getSALARYBLOCK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->SALARYBLOCK:Ljava/lang/String;

    return-object v0
.end method

.method public getSTATUS_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->STATUS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getTOTALABSCONDING()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->TOTALABSCONDING:Ljava/lang/String;

    return-object v0
.end method

.method public getTOTALCOMPLAINT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->TOTALCOMPLAINT:Ljava/lang/String;

    return-object v0
.end method

.method public getUPCANCEL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->UPCANCEL:Ljava/lang/String;

    return-object v0
.end method

.method public getmCompanyQuotaVo()Lae/gov/mol/vo/CompanyQuotaVo;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    return-object v0
.end method

.method public getmLongDate()J
    .locals 2

    .prologue
    .line 401
    iget-wide v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->mLongDate:J

    return-wide v0
.end method

.method public getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    return-object v0
.end method

.method public setCOMPANYCODE(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOMPANYCODE"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANYCODE:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setCOMPANYNAME(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOMPANYNAME"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANYNAME:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setCOMPANY_FINE(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOMPANY_FINE"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANY_FINE:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setCom_status(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_status"    # Ljava/lang/String;

    .prologue
    .line 394
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->com_status:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setCompanyName_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyName_eng"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->companyName_eng:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setEMPLOYEES(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMPLOYEES"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EMPLOYEES:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setEXPIREDLABOURCARD(Ljava/lang/String;)V
    .locals 0
    .param p1, "eXPIREDLABOURCARD"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EXPIREDLABOURCARD:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setEXPIREDWORKPERMIT(Ljava/lang/String;)V
    .locals 0
    .param p1, "eXPIREDWORKPERMIT"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EXPIREDWORKPERMIT:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setExpiredCardLesshan60Days(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiredCardLesshan60Days"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->ExpiredCardLesshan60Days:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setExpiredCardMorethan60Days(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiredCardMorethan60Days"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->ExpiredCardMorethan60Days:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setExpiredin60Days(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiredin60Days"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->Expiredin60Days:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setINCOMPLETE_COUNT(Ljava/lang/String;)V
    .locals 0
    .param p1, "iNCOMPLETE_COUNT"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->INCOMPLETE_COUNT:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setLABOURWITHOUTCONTRACT(Ljava/lang/String;)V
    .locals 0
    .param p1, "lABOURWITHOUTCONTRACT"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LABOURWITHOUTCONTRACT:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setLICENSEDATE(Ljava/lang/String;)V
    .locals 0
    .param p1, "lICENSEDATE"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LICENSEDATE:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setLICENSENO(Ljava/lang/String;)V
    .locals 0
    .param p1, "lICENSENO"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LICENSENO:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setOFFICENAME(Ljava/lang/String;)V
    .locals 0
    .param p1, "oFFICENAME"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OFFICENAME:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setOFFICENAME_ENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "oFFICENAME_ENG"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OFFICENAME_ENG:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setOWNERCODE(Ljava/lang/String;)V
    .locals 0
    .param p1, "oWNERCODE"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERCODE:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setOWNERNAME(Ljava/lang/String;)V
    .locals 0
    .param p1, "oWNERNAME"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERNAME:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setOWNERNAME_ENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "oWNERNAME_ENG"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERNAME_ENG:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSALARYBLOCK(Ljava/lang/String;)V
    .locals 0
    .param p1, "sALARYBLOCK"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->SALARYBLOCK:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setSTATUS_NAME(Ljava/lang/String;)V
    .locals 0
    .param p1, "sTATUS_NAME"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->STATUS_NAME:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setTOTALABSCONDING(Ljava/lang/String;)V
    .locals 0
    .param p1, "tOTALABSCONDING"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->TOTALABSCONDING:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setTOTALCOMPLAINT(Ljava/lang/String;)V
    .locals 0
    .param p1, "tOTALCOMPLAINT"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->TOTALCOMPLAINT:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setUPCANCEL(Ljava/lang/String;)V
    .locals 0
    .param p1, "uPCANCEL"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->UPCANCEL:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setmCompanyQuotaVo(Lae/gov/mol/vo/CompanyQuotaVo;)V
    .locals 0
    .param p1, "mCompanyQuotaVo"    # Lae/gov/mol/vo/CompanyQuotaVo;

    .prologue
    .line 422
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    .line 423
    return-void
.end method

.method public setmLongDate(J)V
    .locals 0
    .param p1, "mLongDate"    # J

    .prologue
    .line 408
    iput-wide p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->mLongDate:J

    .line 409
    return-void
.end method

.method public setmViolationStatsVo(Lae/gov/mol/vo/ViolationStatsVo;)V
    .locals 0
    .param p1, "mViolationStatsVo"    # Lae/gov/mol/vo/ViolationStatsVo;

    .prologue
    .line 436
    iput-object p1, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    .line 437
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERCODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERNAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OWNERNAME_ENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->companyName_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANYCODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANYNAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OFFICENAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->OFFICENAME_ENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LICENSEDATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LICENSENO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->STATUS_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->INCOMPLETE_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EMPLOYEES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->TOTALABSCONDING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->TOTALCOMPLAINT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EXPIREDLABOURCARD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->EXPIREDWORKPERMIT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->SALARYBLOCK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->UPCANCEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->LABOURWITHOUTCONTRACT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->ExpiredCardMorethan60Days:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->Expiredin60Days:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->ExpiredCardLesshan60Days:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->COMPANY_FINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->com_status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 518
    iget-object v0, p0, Lae/gov/mol/vo/OwnerstatisticsVo;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 519
    return-void
.end method
