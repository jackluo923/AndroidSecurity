.class public Lae/gov/mol/vo/MySalaryVo;
.super Ljava/lang/Object;
.source "MySalaryVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/MySalaryVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private birthDate:Ljava/lang/String;

.field private cardNumber:Ljava/lang/String;

.field private companyNumber:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private nationalityArabic:Ljava/lang/String;

.field private nationalityCode:Ljava/lang/String;

.field private nationalityEnglish:Ljava/lang/String;

.field private passportExpiryDate:Ljava/lang/String;

.field private passportIssue:Ljava/lang/String;

.field private passportNumber:Ljava/lang/String;

.field private personCode:Ljava/lang/String;

.field private personNameArabic:Ljava/lang/String;

.field private personNameEnglish:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lae/gov/mol/vo/MySalaryVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/MySalaryVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/MySalaryVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 252
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personCode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personNameArabic:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personNameEnglish:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportNumber:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->birthDate:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportIssue:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->date:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportExpiryDate:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityCode:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityEnglish:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityArabic:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->cardNumber:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->companyNumber:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personCode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personNameArabic:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personNameEnglish:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportNumber:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->birthDate:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportIssue:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->date:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportExpiryDate:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityCode:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityEnglish:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityArabic:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->cardNumber:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->companyNumber:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personCode:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personNameArabic:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personNameEnglish:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportNumber:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->birthDate:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportIssue:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->date:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportExpiryDate:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityCode:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityEnglish:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityArabic:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->cardNumber:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->companyNumber:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/MySalaryVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    sget-object v0, Lae/gov/mol/vo/MySalaryVo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static setCREATOR(Landroid/os/Parcelable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/MySalaryVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "cREATOR":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Lae/gov/mol/vo/MySalaryVo;>;"
    sput-object p0, Lae/gov/mol/vo/MySalaryVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 220
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public getBirthDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->birthDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->companyNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalityEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportIssue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportIssue:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNameArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personNameArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNameEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personNameEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthDate"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->birthDate:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->cardNumber:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setCompanyNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyNumber"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->companyNumber:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->date:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setNationalityArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityArabic"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityArabic:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setNationalityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityCode"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityCode:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setNationalityEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationalityEnglish"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityEnglish:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setPassportExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportExpiryDate"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->passportExpiryDate:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setPassportIssue(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportIssue"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->passportIssue:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setPassportNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportNumber"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->passportNumber:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setPersonCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "personCode"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->personCode:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPersonNameArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "personNameArabic"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->personNameArabic:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPersonNameEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "personNameEnglish"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryVo;->personNameEnglish:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personNameArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->personNameEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->birthDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportIssue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->passportExpiryDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->nationalityArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->cardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryVo;->companyNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    return-void
.end method
