.class public Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;
.super Ljava/lang/Object;
.source "Enq_GetCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/Enq_GetCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardInformationData"
.end annotation


# instance fields
.field private BirthCountry:Ljava/lang/String;

.field private BirthDate:Ljava/lang/String;

.field private BirthPlaceArb:Ljava/lang/String;

.field private BirthPlaceEng:Ljava/lang/String;

.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;",
            ">;"
        }
    .end annotation
.end field

.field private CardExpiryDate:Ljava/lang/String;

.field private CardIssueDate:Ljava/lang/String;

.field private CardNumber:Ljava/lang/String;

.field private CardType:Ljava/lang/String;

.field private CardTypeCode:Ljava/lang/String;

.field private CardTypeE:Ljava/lang/String;

.field private Nationality:Ljava/lang/String;

.field private NationalityCode:Ljava/lang/String;

.field private NationalityCodeIm:Ljava/lang/String;

.field private PassportExpiryDate:Ljava/lang/String;

.field private PassportNumber:Ljava/lang/String;

.field private PassportPlaceArb:Ljava/lang/String;

.field private PassportPlaceEng:Ljava/lang/String;

.field private PersonNameArabic:Ljava/lang/String;

.field private PersonNameEnglish:Ljava/lang/String;

.field private SEX:Ljava/lang/String;

.field private cardStatus:Ljava/lang/String;

.field private comCategory:Ljava/lang/String;

.field private comNameArb:Ljava/lang/String;

.field private comNameEng:Ljava/lang/String;

.field private companyCode:Ljava/lang/String;

.field private job_code:Ljava/lang/String;

.field private license:Ljava/lang/String;

.field private nationality_arb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardNumber:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardTypeE:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardType:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardExpiryDate:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardIssueDate:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PersonNameArabic:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PersonNameEnglish:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->SEX:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->nationality_arb:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->Nationality:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->NationalityCode:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->NationalityCodeIm:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportNumber:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportExpiryDate:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthCountry:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthDate:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthPlaceEng:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthPlaceArb:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportPlaceEng:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportPlaceArb:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardTypeCode:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->companyCode:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->cardStatus:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->comNameArb:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->comNameEng:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->comCategory:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->job_code:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->license:Ljava/lang/String;

    .line 509
    new-instance v0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData$1;-><init>(Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;)V

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardNumber:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardTypeE:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardType:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardExpiryDate:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardIssueDate:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PersonNameArabic:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PersonNameEnglish:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->SEX:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->nationality_arb:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->Nationality:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->NationalityCode:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->NationalityCodeIm:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportNumber:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportExpiryDate:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthCountry:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthDate:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthPlaceEng:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthPlaceArb:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportPlaceEng:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportPlaceArb:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardTypeCode:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->companyCode:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->cardStatus:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->comNameArb:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->comNameEng:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->comCategory:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->job_code:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->license:Ljava/lang/String;

    .line 509
    new-instance v0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData$1;-><init>(Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;)V

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 525
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public getBirthCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthDate:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthPlaceArb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthPlaceArb:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthPlaceEng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthPlaceEng:Ljava/lang/String;

    return-object v0
.end method

.method public getCardExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardIssueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardIssueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->cardStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardType:Ljava/lang/String;

    return-object v0
.end method

.method public getCardTypeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardTypeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCardTypeE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardTypeE:Ljava/lang/String;

    return-object v0
.end method

.method public getComCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->comCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getComNameArb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->comNameArb:Ljava/lang/String;

    return-object v0
.end method

.method public getComNameEng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->comNameEng:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->companyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getJob_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->job_code:Ljava/lang/String;

    return-object v0
.end method

.method public getLicense()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->license:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->Nationality:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->NationalityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityCodeIm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->NationalityCodeIm:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->nationality_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportPlaceArb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportPlaceArb:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportPlaceEng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportPlaceEng:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNameArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PersonNameArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNameEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PersonNameEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getSEX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->SEX:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthCountry"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthCountry:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setBirthDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthDate"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthDate:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setBirthPlaceArb(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthPlaceArb"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthPlaceArb:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setBirthPlaceEng(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthPlaceEng"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->BirthPlaceEng:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setCardExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardExpiryDate"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardExpiryDate:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setCardIssueDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardIssueDate"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardIssueDate:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 496
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardNumber:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public setCardStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardStatus"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->cardStatus:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardType"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardType:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setCardTypeCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardTypeCode"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardTypeCode:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public setCardTypeE(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardTypeE"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->CardTypeE:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setComCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "comCategory"    # Ljava/lang/String;

    .prologue
    .line 461
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->comCategory:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public setComNameArb(Ljava/lang/String;)V
    .locals 0
    .param p1, "comNameArb"    # Ljava/lang/String;

    .prologue
    .line 433
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->comNameArb:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setComNameEng(Ljava/lang/String;)V
    .locals 0
    .param p1, "comNameEng"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->comNameEng:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyCode"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->companyCode:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setJob_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "job_code"    # Ljava/lang/String;

    .prologue
    .line 475
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->job_code:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public setLicense(Ljava/lang/String;)V
    .locals 0
    .param p1, "license"    # Ljava/lang/String;

    .prologue
    .line 489
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->license:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public setNationality(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->Nationality:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setNationalityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityCode"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->NationalityCode:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setNationalityCodeIm(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityCodeIm"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->NationalityCodeIm:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setNationality_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality_arb"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->nationality_arb:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setPassportExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportExpiryDate"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportExpiryDate:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setPassportNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportNumber"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportNumber:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setPassportPlaceArb(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportPlaceArb"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportPlaceArb:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setPassportPlaceEng(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportPlaceEng"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PassportPlaceEng:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setPersonNameArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "personNameArabic"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PersonNameArabic:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setPersonNameEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "personNameEnglish"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->PersonNameEnglish:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setSEX(Ljava/lang/String;)V
    .locals 0
    .param p1, "sEX"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetCardInfo$CardInformationData;->SEX:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 507
    return-void
.end method
