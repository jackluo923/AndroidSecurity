.class public Lae/gov/mol/vo/ExpiredCard_DateRangeVo;
.super Ljava/lang/Object;
.source "ExpiredCard_DateRangeVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ExpiredCard_DateRangeVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CardNumber:Ljava/lang/String;

.field private CardTypeArabic:Ljava/lang/String;

.field private CardTypeEnglish:Ljava/lang/String;

.field private ExpiryDate:Ljava/lang/String;

.field private IssueDate:Ljava/lang/String;

.field private NationalityArabic:Ljava/lang/String;

.field private NationalityEnglish:Ljava/lang/String;

.field private PassportNumber:Ljava/lang/String;

.field private PersonNameArabic:Ljava/lang/String;

.field private PersonNameEnglish:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 220
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->IssueDate:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->ExpiryDate:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardTypeEnglish:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardTypeArabic:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PersonNameEnglish:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PersonNameArabic:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->NationalityEnglish:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->NationalityArabic:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PassportNumber:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->IssueDate:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->ExpiryDate:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardTypeEnglish:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardTypeArabic:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PersonNameEnglish:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PersonNameArabic:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->NationalityEnglish:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->NationalityArabic:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PassportNumber:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardNumber:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->IssueDate:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->ExpiryDate:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardTypeEnglish:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardTypeArabic:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PersonNameEnglish:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PersonNameArabic:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->NationalityEnglish:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->NationalityArabic:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PassportNumber:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardNumber:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardTypeArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardTypeArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getCardTypeEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardTypeEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->ExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->IssueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->NationalityArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->NationalityEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PassportNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNameArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PersonNameArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNameEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PersonNameEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardNumber:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setCardTypeArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardTypeArabic"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardTypeArabic:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setCardTypeEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardTypeEnglish"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardTypeEnglish:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiryDate"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->ExpiryDate:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setIssueDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "issueDate"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->IssueDate:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setNationalityArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityArabic"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->NationalityArabic:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setNationalityEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityEnglish"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->NationalityEnglish:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setPassportNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportNumber"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PassportNumber:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setPersonNameArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "personNameArabic"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PersonNameArabic:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setPersonNameEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "personNameEnglish"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PersonNameEnglish:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->IssueDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->ExpiryDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardTypeEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardTypeArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PersonNameEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PersonNameArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->NationalityEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->NationalityArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->PassportNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->CardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    return-void
.end method
