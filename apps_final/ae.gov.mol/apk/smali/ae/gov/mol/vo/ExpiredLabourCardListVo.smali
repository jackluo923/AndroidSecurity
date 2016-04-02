.class public Lae/gov/mol/vo/ExpiredLabourCardListVo;
.super Ljava/lang/Object;
.source "ExpiredLabourCardListVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ExpiredLabourCardListVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CardDescription_arb:Ljava/lang/String;

.field private CardDescription_eng:Ljava/lang/String;

.field private CardExpiryDate:Ljava/lang/String;

.field private CardNumber:Ljava/lang/String;

.field private Natioanlity_eng:Ljava/lang/String;

.field private Nationality_arb:Ljava/lang/String;

.field private PassportNo:Ljava/lang/String;

.field private PersonCode:Ljava/lang/String;

.field private PersonName_arb:Ljava/lang/String;

.field private PersonName_eng:Ljava/lang/String;

.field private Photo:Ljava/lang/String;

.field private mLongDate:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lae/gov/mol/vo/ExpiredLabourCardListVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ExpiredLabourCardListVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 234
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardNumber:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardExpiryDate:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardDescription_eng:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardDescription_arb:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonCode:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonName_arb:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonName_eng:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Nationality_arb:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Natioanlity_eng:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PassportNo:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Photo:Ljava/lang/String;

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->mLongDate:J

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardNumber:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardExpiryDate:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardDescription_eng:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardDescription_arb:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonCode:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonName_arb:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonName_eng:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Nationality_arb:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Natioanlity_eng:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PassportNo:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Photo:Ljava/lang/String;

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->mLongDate:J

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardNumber:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardExpiryDate:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardDescription_eng:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardDescription_arb:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonCode:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonName_arb:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonName_eng:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Nationality_arb:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Natioanlity_eng:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PassportNo:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->mLongDate:J

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Photo:Ljava/lang/String;

    .line 215
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public getCardDescription_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardDescription_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getCardDescription_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardDescription_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getCardExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNatioanlity_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Natioanlity_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Nationality_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PassportNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonName_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonName_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Photo:Ljava/lang/String;

    return-object v0
.end method

.method public getmLongDate()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->mLongDate:J

    return-wide v0
.end method

.method public setCardDescription_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardDescription_arb"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardDescription_arb:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setCardDescription_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardDescription_eng"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardDescription_eng:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setCardExpiryDate(Ljava/lang/String;)V
    .locals 2
    .param p1, "cardExpiryDate"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardExpiryDate:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lae/gov/mol/helper/CommonMethods;->getLongDate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->mLongDate:J

    .line 83
    iget-wide v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->mLongDate:J

    invoke-virtual {p0, v0, v1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->setmLongDate(J)V

    .line 84
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardNumber:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setNatioanlity_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "natioanlity_eng"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Natioanlity_eng:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setNationality_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality_arb"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Nationality_arb:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setPassportNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportNo"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PassportNo:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setPersonCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "personCode"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonCode:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setPersonName_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "personName_arb"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonName_arb:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setPersonName_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "personName_eng"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonName_eng:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 0
    .param p1, "photo"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Photo:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setmLongDate(J)V
    .locals 0
    .param p1, "mLongDate"    # J

    .prologue
    .line 72
    iput-wide p1, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->mLongDate:J

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardExpiryDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardDescription_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->CardDescription_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonName_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PersonName_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Nationality_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Natioanlity_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->PassportNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-wide v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->mLongDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 250
    iget-object v0, p0, Lae/gov/mol/vo/ExpiredLabourCardListVo;->Photo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    return-void
.end method
