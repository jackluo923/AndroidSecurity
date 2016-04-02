.class public Lae/gov/mol/vo/PersonCompanyListVo;
.super Ljava/lang/Object;
.source "PersonCompanyListVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private COM_STATUS:Ljava/lang/String;

.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/PersonCompanyListVo;",
            ">;"
        }
    .end annotation
.end field

.field private EMIRATE:Ljava/lang/String;

.field private License_flag:Ljava/lang/String;

.field private Nationality:Ljava/lang/String;

.field private POBOX:Ljava/lang/String;

.field private PassportNumber:Ljava/lang/String;

.field private PerNameA:Ljava/lang/String;

.field private PerNameE:Ljava/lang/String;

.field private auth:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private comNameA:Ljava/lang/String;

.field private comNameE:Ljava/lang/String;

.field private com_code:Ljava/lang/String;

.field private expiry_date:Ljava/lang/String;

.field private owner:Ljava/lang/String;

.field private sponsor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->code:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->com_code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->comNameA:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->comNameE:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->COM_STATUS:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->POBOX:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->EMIRATE:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PerNameA:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PerNameE:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PassportNumber:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->Nationality:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->auth:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->sponsor:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->owner:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->expiry_date:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->License_flag:Ljava/lang/String;

    .line 287
    new-instance v0, Lae/gov/mol/vo/PersonCompanyListVo$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/PersonCompanyListVo$1;-><init>(Lae/gov/mol/vo/PersonCompanyListVo;)V

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->code:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->com_code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->comNameA:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->comNameE:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->COM_STATUS:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->POBOX:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->EMIRATE:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PerNameA:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PerNameE:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PassportNumber:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->Nationality:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->auth:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->sponsor:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->owner:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->expiry_date:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->License_flag:Ljava/lang/String;

    .line 287
    new-instance v0, Lae/gov/mol/vo/PersonCompanyListVo$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/PersonCompanyListVo$1;-><init>(Lae/gov/mol/vo/PersonCompanyListVo;)V

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->code:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->com_code:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->comNameA:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->comNameE:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->COM_STATUS:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->POBOX:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->EMIRATE:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PerNameA:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PerNameE:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PassportNumber:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->Nationality:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->auth:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->sponsor:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->owner:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->expiry_date:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->License_flag:Ljava/lang/String;

    .line 319
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public getAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_STATUS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->COM_STATUS:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getComNameA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->comNameA:Ljava/lang/String;

    return-object v0
.end method

.method public getComNameE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->comNameE:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->com_code:Ljava/lang/String;

    return-object v0
.end method

.method public getEMIRATE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->EMIRATE:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiry_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->expiry_date:Ljava/lang/String;

    return-object v0
.end method

.method public getLicense_flag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->License_flag:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->Nationality:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getPOBOX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->POBOX:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PassportNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPerNameA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PerNameA:Ljava/lang/String;

    return-object v0
.end method

.method public getPerNameE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PerNameE:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->sponsor:Ljava/lang/String;

    return-object v0
.end method

.method public setAuth(Ljava/lang/String;)V
    .locals 0
    .param p1, "auth"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->auth:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setCOM_STATUS(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_STATUS"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->COM_STATUS:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->code:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setComNameA(Ljava/lang/String;)V
    .locals 0
    .param p1, "comNameA"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->comNameA:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setComNameE(Ljava/lang/String;)V
    .locals 0
    .param p1, "comNameE"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->comNameE:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setCom_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_code"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->com_code:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setEMIRATE(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMIRATE"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->EMIRATE:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setExpiry_date(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiry_date"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->expiry_date:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setLicense_flag(Ljava/lang/String;)V
    .locals 0
    .param p1, "license_flag"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->License_flag:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setNationality(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->Nationality:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->owner:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setPOBOX(Ljava/lang/String;)V
    .locals 0
    .param p1, "pOBOX"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->POBOX:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setPassportNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportNumber"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PassportNumber:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setPerNameA(Ljava/lang/String;)V
    .locals 0
    .param p1, "perNameA"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PerNameA:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPerNameE(Ljava/lang/String;)V
    .locals 0
    .param p1, "perNameE"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PerNameE:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setSponsor(Ljava/lang/String;)V
    .locals 0
    .param p1, "sponsor"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lae/gov/mol/vo/PersonCompanyListVo;->sponsor:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->com_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->comNameA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->comNameE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->COM_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->POBOX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->EMIRATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PerNameA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PerNameE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->PassportNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->Nationality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->auth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->sponsor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->owner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->expiry_date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lae/gov/mol/vo/PersonCompanyListVo;->License_flag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    return-void
.end method
