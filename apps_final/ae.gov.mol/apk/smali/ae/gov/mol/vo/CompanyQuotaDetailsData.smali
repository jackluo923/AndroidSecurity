.class public Lae/gov/mol/vo/CompanyQuotaDetailsData;
.super Ljava/lang/Object;
.source "CompanyQuotaDetailsData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/CompanyQuotaDetailsData;",
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

.field private balance:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 301
    new-instance v0, Lae/gov/mol/vo/CompanyQuotaDetailsData$1;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 312
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyCode:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyNameArabic:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyNameEnglish:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeCode:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyAddress:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeEnglish:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeArabic:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Category:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyAddress1:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaType:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Approved:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Used:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaTypeEnglish:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaTypeArabic:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->balance:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyCode:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyNameArabic:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyNameEnglish:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeCode:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyAddress:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeEnglish:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeArabic:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Category:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyAddress1:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaType:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Approved:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Used:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaTypeEnglish:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaTypeArabic:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->balance:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyCode:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyNameArabic:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyNameEnglish:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeCode:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyAddress:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeEnglish:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeArabic:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Category:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyAddress1:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaType:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Approved:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Used:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaTypeEnglish:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaTypeArabic:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->balance:Ljava/lang/String;

    .line 333
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public getApproved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Approved:Ljava/lang/String;

    return-object v0
.end method

.method public getBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Category:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyAddress1:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyNameArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyNameArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyNameEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyNameEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaType:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaTypeArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaTypeArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaTypeEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaTypeEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getUsed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Used:Ljava/lang/String;

    return-object v0
.end method

.method public setApproved(Ljava/lang/String;)V
    .locals 0
    .param p1, "approved"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Approved:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setBalance(Ljava/lang/String;)V
    .locals 0
    .param p1, "balance"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->balance:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Category:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setCompanyAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyAddress"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyAddress:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setCompanyAddress1(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyAddress1"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyAddress1:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyCode"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyCode:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setCompanyNameArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyNameArabic"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyNameArabic:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setCompanyNameEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyNameEnglish"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyNameEnglish:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setLabourOfficeArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeArabic"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeArabic:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setLabourOfficeCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeCode"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeCode:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setLabourOfficeEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeEnglish"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeEnglish:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setQuotaType(Ljava/lang/String;)V
    .locals 0
    .param p1, "quotaType"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaType:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setQuotaTypeArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "quotaTypeArabic"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaTypeArabic:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setQuotaTypeEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "quotaTypeEnglish"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaTypeEnglish:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setUsed(Ljava/lang/String;)V
    .locals 0
    .param p1, "used"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Used:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyNameArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyNameEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->LabourOfficeArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->CompanyAddress1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Approved:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->Used:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaTypeEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->QuotaTypeArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaDetailsData;->balance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    return-void
.end method
