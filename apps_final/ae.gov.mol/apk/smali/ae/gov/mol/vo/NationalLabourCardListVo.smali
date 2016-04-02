.class public Lae/gov/mol/vo/NationalLabourCardListVo;
.super Ljava/lang/Object;
.source "NationalLabourCardListVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/NationalLabourCardListVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private COM_STATUS_ARB:Ljava/lang/String;

.field private COM_STATUS_ENG:Ljava/lang/String;

.field private CardExpiryDate:Ljava/lang/String;

.field private CardIssueDate:Ljava/lang/String;

.field private CardNumber:Ljava/lang/String;

.field private ComStatus:Ljava/lang/String;

.field private CompanyAddress:Ljava/lang/String;

.field private CompanyCode:Ljava/lang/String;

.field private CompanyName_arb:Ljava/lang/String;

.field private CompanyName_eng:Ljava/lang/String;

.field private EmployeeCount:Ljava/lang/String;

.field private JobType_arb:Ljava/lang/String;

.field private JobType_eng:Ljava/lang/String;

.field private LabourOffice_arb:Ljava/lang/String;

.field private LabourOffice_eng:Ljava/lang/String;

.field private PersonCode:Ljava/lang/String;

.field private PersonName_arb:Ljava/lang/String;

.field private PersonName_eng:Ljava/lang/String;

.field private Sex_arb:Ljava/lang/String;

.field private Sex_eng:Ljava/lang/String;

.field private TotalSalary:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private com_license_no:Ljava/lang/String;

.field private com_status:Ljava/lang/String;

.field private nat_arb:Ljava/lang/String;

.field private nat_eng:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 482
    new-instance v0, Lae/gov/mol/vo/NationalLabourCardListVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/NationalLabourCardListVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/NationalLabourCardListVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 495
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonCode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonName_arb:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonName_eng:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->Sex_arb:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->Sex_eng:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardNumber:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardIssueDate:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardExpiryDate:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->TotalSalary:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->nat_arb:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->nat_eng:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->JobType_arb:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->JobType_eng:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyCode:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyName_arb:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyName_eng:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyAddress:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->LabourOffice_arb:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->LabourOffice_eng:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->EmployeeCount:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->category:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->com_license_no:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->com_status:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->ComStatus:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->COM_STATUS_ENG:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->COM_STATUS_ARB:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonCode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonName_arb:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonName_eng:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->Sex_arb:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->Sex_eng:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardNumber:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardIssueDate:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardExpiryDate:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->TotalSalary:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->nat_arb:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->nat_eng:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->JobType_arb:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->JobType_eng:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyCode:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyName_arb:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyName_eng:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyAddress:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->LabourOffice_arb:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->LabourOffice_eng:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->EmployeeCount:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->category:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->com_license_no:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->com_status:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->ComStatus:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->COM_STATUS_ENG:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->COM_STATUS_ARB:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonCode:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonName_arb:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonName_eng:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->Sex_arb:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->Sex_eng:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardNumber:Ljava/lang/String;

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardIssueDate:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardExpiryDate:Ljava/lang/String;

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->TotalSalary:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->nat_arb:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->nat_eng:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->JobType_arb:Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->JobType_eng:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyCode:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyName_arb:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyName_eng:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyAddress:Ljava/lang/String;

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->LabourOffice_arb:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->LabourOffice_eng:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->EmployeeCount:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->category:Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->com_license_no:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->com_status:Ljava/lang/String;

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->ComStatus:Ljava/lang/String;

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->COM_STATUS_ARB:Ljava/lang/String;

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->COM_STATUS_ENG:Ljava/lang/String;

    .line 441
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public getCOM_STATUS_ARB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->COM_STATUS_ARB:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_STATUS_ENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->COM_STATUS_ENG:Ljava/lang/String;

    return-object v0
.end method

.method public getCardExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardIssueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardIssueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getComStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->ComStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_license_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->com_license_no:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->com_status:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyName_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyName_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getEmployeeCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->EmployeeCount:Ljava/lang/String;

    return-object v0
.end method

.method public getJobType_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->JobType_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getJobType_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->JobType_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOffice_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->LabourOffice_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOffice_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->LabourOffice_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getNat_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->nat_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getNat_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->nat_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonName_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonName_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getSex_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->Sex_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getSex_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->Sex_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSalary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->TotalSalary:Ljava/lang/String;

    return-object v0
.end method

.method public setCOM_STATUS_ARB(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_STATUS_ARB"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->COM_STATUS_ARB:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setCOM_STATUS_ENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_STATUS_ENG"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->COM_STATUS_ENG:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setCardExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardExpiryDate"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardExpiryDate:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setCardIssueDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardIssueDate"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardIssueDate:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardNumber:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->category:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setComStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "comStatus"    # Ljava/lang/String;

    .prologue
    .line 379
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->ComStatus:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setCom_license_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_license_no"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->com_license_no:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setCom_status(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_status"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->com_status:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setCompanyAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyAddress"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyAddress:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyCode"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyCode:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setCompanyName_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyName_arb"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyName_arb:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setCompanyName_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyName_eng"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyName_eng:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setEmployeeCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "employeeCount"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->EmployeeCount:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setJobType_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobType_arb"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->JobType_arb:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setJobType_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobType_eng"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->JobType_eng:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setLabourOffice_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOffice_arb"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->LabourOffice_arb:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setLabourOffice_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOffice_eng"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->LabourOffice_eng:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setNat_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "nat_arb"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->nat_arb:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setNat_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "nat_eng"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->nat_eng:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setPersonCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "personCode"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonCode:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPersonName_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "personName_arb"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonName_arb:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPersonName_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "personName_eng"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonName_eng:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setSex_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "sex_arb"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->Sex_arb:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setSex_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "sex_eng"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->Sex_eng:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setTotalSalary(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalSalary"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->TotalSalary:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonName_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->PersonName_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->Sex_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->Sex_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardIssueDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CardExpiryDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->TotalSalary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->nat_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->nat_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->JobType_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->JobType_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyName_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyName_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->CompanyAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->LabourOffice_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->LabourOffice_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->EmployeeCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->com_license_no:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->com_status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->ComStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->COM_STATUS_ARB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lae/gov/mol/vo/NationalLabourCardListVo;->COM_STATUS_ENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    return-void
.end method
