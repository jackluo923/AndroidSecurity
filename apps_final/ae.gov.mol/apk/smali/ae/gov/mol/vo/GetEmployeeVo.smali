.class public Lae/gov/mol/vo/GetEmployeeVo;
.super Ljava/lang/Object;
.source "GetEmployeeVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/GetEmployeeVo;",
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

.field private photo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lae/gov/mol/vo/GetEmployeeVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/GetEmployeeVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/GetEmployeeVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 210
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardExpiryDate:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardDescription_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardDescription_arb:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonCode:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonName_arb:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonName_eng:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->Nationality_arb:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->Natioanlity_eng:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PassportNo:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->photo:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardExpiryDate:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardDescription_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardDescription_arb:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonCode:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonName_arb:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonName_eng:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->Nationality_arb:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->Natioanlity_eng:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PassportNo:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->photo:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardNumber:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardExpiryDate:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardDescription_eng:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardDescription_arb:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonCode:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonName_arb:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonName_eng:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->Nationality_arb:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->Natioanlity_eng:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PassportNo:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->photo:Ljava/lang/String;

    .line 197
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getCardDescription_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardDescription_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getCardDescription_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardDescription_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getCardExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNatioanlity_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->Natioanlity_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->Nationality_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PassportNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonName_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonName_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public setCardDescription_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardDescription_arb"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardDescription_arb:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setCardDescription_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardDescription_eng"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardDescription_eng:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setCardExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardExpiryDate"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardExpiryDate:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardNumber:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setNatioanlity_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "natioanlity_eng"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeVo;->Natioanlity_eng:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setNationality_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality_arb"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeVo;->Nationality_arb:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setPassportNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportNo"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeVo;->PassportNo:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setPersonCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "personCode"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonCode:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setPersonName_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "personName_arb"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonName_arb:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPersonName_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "personName_eng"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonName_eng:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 0
    .param p1, "photo"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeVo;->photo:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardExpiryDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardDescription_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->CardDescription_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonName_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PersonName_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->Nationality_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->Natioanlity_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->PassportNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeVo;->photo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    return-void
.end method
