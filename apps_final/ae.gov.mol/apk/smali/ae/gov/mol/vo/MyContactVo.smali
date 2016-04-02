.class public Lae/gov/mol/vo/MyContactVo;
.super Ljava/lang/Object;
.source "MyContactVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/MyContactVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowance1ResidenceArabic:Ljava/lang/String;

.field private allowance1ResidenceEnglish:Ljava/lang/String;

.field private allowance2ResidenceArabic:Ljava/lang/String;

.field private allowance2ResidenceEnglish:Ljava/lang/String;

.field private allowance3ResidenceArabic:Ljava/lang/String;

.field private allowance3ResidenceEnglish:Ljava/lang/String;

.field private allowance4ResidenceArabic:Ljava/lang/String;

.field private allowance4ResidenceEnglish:Ljava/lang/String;

.field private allowanceTransportArabic:Ljava/lang/String;

.field private allowanceTransportEnglish:Ljava/lang/String;

.field private basicSalary:Ljava/lang/String;

.field private cardExpiry:Ljava/lang/String;

.field private cardNumber:Ljava/lang/String;

.field private cardStartDate:Ljava/lang/String;

.field private contractEndDate:Ljava/lang/String;

.field private contractStartDate:Ljava/lang/String;

.field private contractType:Ljava/lang/String;

.field private jobDescriptionArabic:Ljava/lang/String;

.field private jobDescriptionEnglish:Ljava/lang/String;

.field private totalSalary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lae/gov/mol/vo/MyContactVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/MyContactVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/MyContactVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 369
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardNumber:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardStartDate:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardExpiry:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractType:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractStartDate:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractEndDate:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->basicSalary:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->totalSalary:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->jobDescriptionEnglish:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->jobDescriptionArabic:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowanceTransportArabic:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowanceTransportEnglish:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance1ResidenceArabic:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance1ResidenceEnglish:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance2ResidenceArabic:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance2ResidenceEnglish:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance3ResidenceArabic:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance3ResidenceEnglish:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance4ResidenceArabic:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance4ResidenceEnglish:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardNumber:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardStartDate:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardExpiry:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractType:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractStartDate:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractEndDate:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->basicSalary:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->totalSalary:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->jobDescriptionEnglish:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->jobDescriptionArabic:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowanceTransportArabic:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowanceTransportEnglish:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance1ResidenceArabic:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance1ResidenceEnglish:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance2ResidenceArabic:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance2ResidenceEnglish:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance3ResidenceArabic:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance3ResidenceEnglish:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance4ResidenceArabic:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance4ResidenceEnglish:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardNumber:Ljava/lang/String;

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardStartDate:Ljava/lang/String;

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardExpiry:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractType:Ljava/lang/String;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractStartDate:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractEndDate:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->basicSalary:Ljava/lang/String;

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->totalSalary:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->jobDescriptionEnglish:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->jobDescriptionArabic:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowanceTransportArabic:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowanceTransportEnglish:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance1ResidenceArabic:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance1ResidenceEnglish:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance2ResidenceArabic:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance2ResidenceEnglish:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance3ResidenceArabic:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance3ResidenceEnglish:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance4ResidenceArabic:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance4ResidenceEnglish:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/MyContactVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    sget-object v0, Lae/gov/mol/vo/MyContactVo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static setCREATOR(Landroid/os/Parcelable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/MyContactVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "cREATOR":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Lae/gov/mol/vo/MyContactVo;>;"
    sput-object p0, Lae/gov/mol/vo/MyContactVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 325
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowance1ResidenceArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance1ResidenceArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowance1ResidenceEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance1ResidenceEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowance2ResidenceArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance2ResidenceArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowance2ResidenceEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance2ResidenceEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowance3ResidenceArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance3ResidenceArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowance3ResidenceEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance3ResidenceEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowance4ResidenceArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance4ResidenceArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowance4ResidenceEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance4ResidenceEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowanceTransportArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowanceTransportArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowanceTransportEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowanceTransportEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getBasicSalary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->basicSalary:Ljava/lang/String;

    return-object v0
.end method

.method public getCardExpiry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardExpiry:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getContractEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractEndDate:Ljava/lang/String;

    return-object v0
.end method

.method public getContractStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getContractType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractType:Ljava/lang/String;

    return-object v0
.end method

.method public getJobDescriptionArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->jobDescriptionArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getJobDescriptionEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->jobDescriptionEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSalary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->totalSalary:Ljava/lang/String;

    return-object v0
.end method

.method public setAllowance1ResidenceArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "allowance1ResidenceArabic"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->allowance1ResidenceArabic:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setAllowance1ResidenceEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "allowance1ResidenceEnglish"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->allowance1ResidenceEnglish:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setAllowance2ResidenceArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "allowance2ResidenceArabic"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->allowance2ResidenceArabic:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setAllowance2ResidenceEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "allowance2ResidenceEnglish"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->allowance2ResidenceEnglish:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setAllowance3ResidenceArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "allowance3ResidenceArabic"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->allowance3ResidenceArabic:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setAllowance3ResidenceEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "allowance3ResidenceEnglish"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->allowance3ResidenceEnglish:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setAllowance4ResidenceArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "allowance4ResidenceArabic"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->allowance4ResidenceArabic:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setAllowance4ResidenceEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "allowance4ResidenceEnglish"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->allowance4ResidenceEnglish:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setAllowanceTransportArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "allowanceTransportArabic"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->allowanceTransportArabic:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setAllowanceTransportEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "allowanceTransportEnglish"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->allowanceTransportEnglish:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setBasicSalary(Ljava/lang/String;)V
    .locals 0
    .param p1, "basicSalary"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->basicSalary:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setCardExpiry(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardExpiry"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->cardExpiry:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->cardNumber:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setCardStartDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardStartDate"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->cardStartDate:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setContractEndDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "contractEndDate"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->contractEndDate:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setContractStartDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "contractStartDate"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->contractStartDate:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setContractType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contractType"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->contractType:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setJobDescriptionArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobDescriptionArabic"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->jobDescriptionArabic:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setJobDescriptionEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobDescriptionEnglish"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->jobDescriptionEnglish:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setTotalSalary(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalSalary"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lae/gov/mol/vo/MyContactVo;->totalSalary:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardStartDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->cardExpiry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractStartDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->contractEndDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->basicSalary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->totalSalary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->jobDescriptionEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->jobDescriptionArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowanceTransportArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowanceTransportEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance1ResidenceArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance1ResidenceEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance2ResidenceArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance2ResidenceEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance3ResidenceArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance3ResidenceEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance4ResidenceArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lae/gov/mol/vo/MyContactVo;->allowance4ResidenceEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    return-void
.end method
