.class public Lae/gov/mol/vo/NawakasDataVo;
.super Ljava/lang/Object;
.source "NawakasDataVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/NawakasDataVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CardNumber:Ljava/lang/String;

.field private CompanyCode:Ljava/lang/String;

.field private NationalityArabic:Ljava/lang/String;

.field private NationalityEnglish:Ljava/lang/String;

.field private NawakasTypeCode:Ljava/lang/String;

.field private PersonCode:Ljava/lang/String;

.field private PersonNameArabic:Ljava/lang/String;

.field private PersonNameEnglish:Ljava/lang/String;

.field private SubmitDate:Ljava/lang/String;

.field private TransactionNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lae/gov/mol/vo/NawakasDataVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/NawakasDataVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/NawakasDataVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 204
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->TransactionNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NawakasTypeCode:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->SubmitDate:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->CompanyCode:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonCode:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->CardNumber:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonNameEnglish:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonNameArabic:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NationalityEnglish:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NationalityArabic:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->TransactionNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NawakasTypeCode:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->SubmitDate:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->CompanyCode:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonCode:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->CardNumber:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonNameEnglish:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonNameArabic:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NationalityEnglish:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NationalityArabic:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->TransactionNumber:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NawakasTypeCode:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->SubmitDate:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->CompanyCode:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonCode:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->CardNumber:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonNameEnglish:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonNameArabic:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NationalityEnglish:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NationalityArabic:Ljava/lang/String;

    .line 220
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->CardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->CompanyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NationalityArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NationalityEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getNawakasTypeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NawakasTypeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNameArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonNameArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNameEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonNameEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmitDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->SubmitDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->TransactionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lae/gov/mol/vo/NawakasDataVo;->CardNumber:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyCode"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lae/gov/mol/vo/NawakasDataVo;->CompanyCode:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setNationalityArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityArabic"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lae/gov/mol/vo/NawakasDataVo;->NationalityArabic:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setNationalityEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityEnglish"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lae/gov/mol/vo/NawakasDataVo;->NationalityEnglish:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setNawakasTypeCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "nawakasTypeCode"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lae/gov/mol/vo/NawakasDataVo;->NawakasTypeCode:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPersonCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "personCode"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonCode:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setPersonNameArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "personNameArabic"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonNameArabic:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setPersonNameEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "personNameEnglish"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonNameEnglish:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSubmitDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "submitDate"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lae/gov/mol/vo/NawakasDataVo;->SubmitDate:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setTransactionNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionNumber"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lae/gov/mol/vo/NawakasDataVo;->TransactionNumber:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->TransactionNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NawakasTypeCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->SubmitDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->CompanyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->CardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonNameEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->PersonNameArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NationalityEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lae/gov/mol/vo/NawakasDataVo;->NationalityArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    return-void
.end method
