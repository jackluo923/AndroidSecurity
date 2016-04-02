.class public Lae/gov/mol/vo/BankGuaranteeInfoVo;
.super Ljava/lang/Object;
.source "BankGuaranteeInfoVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/BankGuaranteeInfoVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BANKNAME:Ljava/lang/String;

.field private BANK_GRNT_DATE:Ljava/lang/String;

.field private BANK_GRNT_NO:Ljava/lang/String;

.field private COMPANY_CODE:Ljava/lang/String;

.field private REFUNDAMOUNT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lae/gov/mol/vo/BankGuaranteeInfoVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/BankGuaranteeInfoVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 131
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->COMPANY_CODE:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANK_GRNT_NO:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANK_GRNT_DATE:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->REFUNDAMOUNT:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANKNAME:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->COMPANY_CODE:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANK_GRNT_NO:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANK_GRNT_DATE:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->REFUNDAMOUNT:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANKNAME:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->COMPANY_CODE:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANK_GRNT_NO:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANK_GRNT_DATE:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->REFUNDAMOUNT:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANKNAME:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getBANKNAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANKNAME:Ljava/lang/String;

    return-object v0
.end method

.method public getBANK_GRNT_DATE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANK_GRNT_DATE:Ljava/lang/String;

    return-object v0
.end method

.method public getBANK_GRNT_NO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANK_GRNT_NO:Ljava/lang/String;

    return-object v0
.end method

.method public getCOMPANY_CODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->COMPANY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public getREFUNDAMOUNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->REFUNDAMOUNT:Ljava/lang/String;

    return-object v0
.end method

.method public setBANKNAME(Ljava/lang/String;)V
    .locals 0
    .param p1, "bANKNAME"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANKNAME:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setBANK_GRNT_DATE(Ljava/lang/String;)V
    .locals 0
    .param p1, "bANK_GRNT_DATE"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANK_GRNT_DATE:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setBANK_GRNT_NO(Ljava/lang/String;)V
    .locals 0
    .param p1, "bANK_GRNT_NO"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANK_GRNT_NO:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setCOMPANY_CODE(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOMPANY_CODE"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->COMPANY_CODE:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setREFUNDAMOUNT(Ljava/lang/String;)V
    .locals 0
    .param p1, "rEFUNDAMOUNT"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->REFUNDAMOUNT:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->COMPANY_CODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANK_GRNT_NO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANK_GRNT_DATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->REFUNDAMOUNT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lae/gov/mol/vo/BankGuaranteeInfoVo;->BANKNAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return-void
.end method
