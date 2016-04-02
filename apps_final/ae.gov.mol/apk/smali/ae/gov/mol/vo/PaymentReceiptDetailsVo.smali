.class public Lae/gov/mol/vo/PaymentReceiptDetailsVo;
.super Ljava/lang/Object;
.source "PaymentReceiptDetailsVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/PaymentReceiptDetailsVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CardExpiryDate:Ljava/lang/String;

.field private CardNumber:Ljava/lang/String;

.field private CompanyCode:Ljava/lang/String;

.field private CompanyNameArabic:Ljava/lang/String;

.field private CompanyNameEnglish:Ljava/lang/String;

.field private PayCardNumber:Ljava/lang/String;

.field private PersonCode:Ljava/lang/String;

.field private PersonNameArabic:Ljava/lang/String;

.field private PersonNameEnglish:Ljava/lang/String;

.field private ReceiptDate:Ljava/lang/String;

.field private ReceiptNumber:Ljava/lang/String;

.field private Total:Ljava/lang/String;

.field private TransactionNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lae/gov/mol/vo/PaymentReceiptDetailsVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/PaymentReceiptDetailsVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 268
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->ReceiptNumber:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->ReceiptDate:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PayCardNumber:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->Total:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonCode:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonNameEnglish:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonNameArabic:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyCode:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyNameEnglish:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyNameArabic:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CardNumber:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CardExpiryDate:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->TransactionNumber:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->ReceiptNumber:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->ReceiptDate:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PayCardNumber:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->Total:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonCode:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonNameEnglish:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonNameArabic:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyCode:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyNameEnglish:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyNameArabic:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CardNumber:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CardExpiryDate:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->TransactionNumber:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->ReceiptNumber:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->ReceiptDate:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PayCardNumber:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->Total:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonCode:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonNameEnglish:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonNameArabic:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyCode:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyNameEnglish:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyNameArabic:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CardNumber:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CardExpiryDate:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->TransactionNumber:Ljava/lang/String;

    .line 230
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public getCardExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CardExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyNameArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyNameArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyNameEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyNameEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getPayCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PayCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNameArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonNameArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonNameEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonNameEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->ReceiptDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->ReceiptNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->Total:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->TransactionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setCardExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardExpiryDate"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CardExpiryDate:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CardNumber:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyCode"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyCode:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setCompanyNameArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyNameArabic"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyNameArabic:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setCompanyNameEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyNameEnglish"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyNameEnglish:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setPayCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "payCardNumber"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PayCardNumber:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPersonCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "personCode"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonCode:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setPersonNameArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "personNameArabic"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonNameArabic:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setPersonNameEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "personNameEnglish"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonNameEnglish:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setReceiptDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiptDate"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->ReceiptDate:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setReceiptNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiptNumber"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->ReceiptNumber:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0
    .param p1, "total"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->Total:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTransactionNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionNumber"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->TransactionNumber:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->ReceiptNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->ReceiptDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PayCardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->Total:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonNameEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->PersonNameArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyNameEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CompanyNameArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->CardExpiryDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->TransactionNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    return-void
.end method
