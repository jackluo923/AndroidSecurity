.class public Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;
.super Ljava/lang/Object;
.source "newdatasetdata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompanyQuotaDetailsData"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Approved:Ljava/lang/String;

.field private Category:Ljava/lang/String;

.field private CompanyAddress:Ljava/lang/String;

.field private CompanyAddress1:Ljava/lang/String;

.field private CompanyCode:Ljava/lang/String;

.field private CompanyNameArabic:Ljava/lang/String;

.field private CompanyNameEnglish:Ljava/lang/String;

.field private LabourOfficeArabic:Ljava/lang/String;

.field private LabourOfficeCode:Ljava/lang/String;

.field private LabourOfficeEnglish:Ljava/lang/String;

.field private QuotaType:Ljava/lang/String;

.field private QuotaTypeArabic:Ljava/lang/String;

.field private QuotaTypeEnglish:Ljava/lang/String;

.field private Used:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 740
    new-instance v0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData$1;

    invoke-direct {v0}, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 751
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyCode:Ljava/lang/String;

    .line 499
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyNameArabic:Ljava/lang/String;

    .line 500
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyNameEnglish:Ljava/lang/String;

    .line 501
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeCode:Ljava/lang/String;

    .line 502
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyAddress:Ljava/lang/String;

    .line 503
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeEnglish:Ljava/lang/String;

    .line 504
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeArabic:Ljava/lang/String;

    .line 505
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Category:Ljava/lang/String;

    .line 506
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyAddress1:Ljava/lang/String;

    .line 507
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaType:Ljava/lang/String;

    .line 508
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Approved:Ljava/lang/String;

    .line 509
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Used:Ljava/lang/String;

    .line 510
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaTypeEnglish:Ljava/lang/String;

    .line 511
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaTypeArabic:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyCode:Ljava/lang/String;

    .line 499
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyNameArabic:Ljava/lang/String;

    .line 500
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyNameEnglish:Ljava/lang/String;

    .line 501
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeCode:Ljava/lang/String;

    .line 502
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyAddress:Ljava/lang/String;

    .line 503
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeEnglish:Ljava/lang/String;

    .line 504
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeArabic:Ljava/lang/String;

    .line 505
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Category:Ljava/lang/String;

    .line 506
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyAddress1:Ljava/lang/String;

    .line 507
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaType:Ljava/lang/String;

    .line 508
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Approved:Ljava/lang/String;

    .line 509
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Used:Ljava/lang/String;

    .line 510
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaTypeEnglish:Ljava/lang/String;

    .line 511
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaTypeArabic:Ljava/lang/String;

    .line 755
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyCode:Ljava/lang/String;

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyNameArabic:Ljava/lang/String;

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyNameEnglish:Ljava/lang/String;

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeCode:Ljava/lang/String;

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyAddress:Ljava/lang/String;

    .line 760
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeEnglish:Ljava/lang/String;

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeArabic:Ljava/lang/String;

    .line 762
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Category:Ljava/lang/String;

    .line 763
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyAddress1:Ljava/lang/String;

    .line 764
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaType:Ljava/lang/String;

    .line 765
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Approved:Ljava/lang/String;

    .line 766
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Used:Ljava/lang/String;

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaTypeEnglish:Ljava/lang/String;

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaTypeArabic:Ljava/lang/String;

    .line 771
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    return v0
.end method

.method public getApproved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Approved:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Category:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyAddress1:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyNameArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyNameArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyNameEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyNameEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaType:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaTypeArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaTypeArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaTypeEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaTypeEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getUsed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Used:Ljava/lang/String;

    return-object v0
.end method

.method public setApproved(Ljava/lang/String;)V
    .locals 0
    .param p1, "approved"    # Ljava/lang/String;

    .prologue
    .line 670
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Approved:Ljava/lang/String;

    .line 671
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 628
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Category:Ljava/lang/String;

    .line 629
    return-void
.end method

.method public setCompanyAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyAddress"    # Ljava/lang/String;

    .prologue
    .line 586
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyAddress:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public setCompanyAddress1(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyAddress1"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyAddress1:Ljava/lang/String;

    .line 643
    return-void
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyCode"    # Ljava/lang/String;

    .prologue
    .line 530
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyCode:Ljava/lang/String;

    .line 531
    return-void
.end method

.method public setCompanyNameArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyNameArabic"    # Ljava/lang/String;

    .prologue
    .line 544
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyNameArabic:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public setCompanyNameEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyNameEnglish"    # Ljava/lang/String;

    .prologue
    .line 558
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyNameEnglish:Ljava/lang/String;

    .line 559
    return-void
.end method

.method public setLabourOfficeArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeArabic"    # Ljava/lang/String;

    .prologue
    .line 614
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeArabic:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public setLabourOfficeCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeCode"    # Ljava/lang/String;

    .prologue
    .line 572
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeCode:Ljava/lang/String;

    .line 573
    return-void
.end method

.method public setLabourOfficeEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeEnglish"    # Ljava/lang/String;

    .prologue
    .line 600
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeEnglish:Ljava/lang/String;

    .line 601
    return-void
.end method

.method public setQuotaType(Ljava/lang/String;)V
    .locals 0
    .param p1, "quotaType"    # Ljava/lang/String;

    .prologue
    .line 656
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaType:Ljava/lang/String;

    .line 657
    return-void
.end method

.method public setQuotaTypeArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "quotaTypeArabic"    # Ljava/lang/String;

    .prologue
    .line 712
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaTypeArabic:Ljava/lang/String;

    .line 713
    return-void
.end method

.method public setQuotaTypeEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "quotaTypeEnglish"    # Ljava/lang/String;

    .prologue
    .line 698
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaTypeEnglish:Ljava/lang/String;

    .line 699
    return-void
.end method

.method public setUsed(Ljava/lang/String;)V
    .locals 0
    .param p1, "used"    # Ljava/lang/String;

    .prologue
    .line 684
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Used:Ljava/lang/String;

    .line 685
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 722
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyNameArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyNameEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->LabourOfficeArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CompanyAddress1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Approved:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->Used:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaTypeEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->QuotaTypeArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 738
    return-void
.end method
