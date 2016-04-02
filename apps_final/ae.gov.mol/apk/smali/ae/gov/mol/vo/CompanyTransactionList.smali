.class public Lae/gov/mol/vo/CompanyTransactionList;
.super Ljava/lang/Object;
.source "CompanyTransactionList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/CompanyTransactionList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LabourOfficeArabic:Ljava/lang/String;

.field private LabourOfficeCode:Ljava/lang/String;

.field private LabourOfficeEnglish:Ljava/lang/String;

.field private StatusArabic:Ljava/lang/String;

.field private StatusEnglish:Ljava/lang/String;

.field private SubmitDate:Ljava/lang/String;

.field private TransactionNumber:Ljava/lang/String;

.field private TransactionType:Ljava/lang/String;

.field private TransactionTypeArabic:Ljava/lang/String;

.field private TransactionTypeEnglish:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lae/gov/mol/vo/CompanyTransactionList$1;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyTransactionList$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/CompanyTransactionList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 216
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->SubmitDate:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionType:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionTypeEnglish:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionTypeArabic:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeCode:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeArabic:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeEnglish:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->StatusEnglish:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->StatusArabic:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->SubmitDate:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionType:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionTypeEnglish:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionTypeArabic:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeCode:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeArabic:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeEnglish:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->StatusEnglish:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->StatusArabic:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionNumber:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->SubmitDate:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionType:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionTypeEnglish:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionTypeArabic:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeCode:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeArabic:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeEnglish:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->StatusEnglish:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->StatusArabic:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public getLabourOfficeArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOfficeEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->StatusArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->StatusEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmitDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->SubmitDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionTypeArabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionTypeArabic:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionTypeEnglish()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionTypeEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public setLabourOfficeArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeArabic"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeArabic:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setLabourOfficeCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeCode"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeCode:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setLabourOfficeEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOfficeEnglish"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeEnglish:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setStatusArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusArabic"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lae/gov/mol/vo/CompanyTransactionList;->StatusArabic:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setStatusEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusEnglish"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lae/gov/mol/vo/CompanyTransactionList;->StatusEnglish:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setSubmitDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "submitDate"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lae/gov/mol/vo/CompanyTransactionList;->SubmitDate:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTransactionNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionNumber"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionNumber:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTransactionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionType"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionType:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setTransactionTypeArabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionTypeArabic"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionTypeArabic:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setTransactionTypeEnglish(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionTypeEnglish"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionTypeEnglish:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->SubmitDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionTypeEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->TransactionTypeArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->LabourOfficeEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->StatusEnglish:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lae/gov/mol/vo/CompanyTransactionList;->StatusArabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    return-void
.end method
