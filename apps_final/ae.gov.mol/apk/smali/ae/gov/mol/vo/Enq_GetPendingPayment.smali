.class public Lae/gov/mol/vo/Enq_GetPendingPayment;
.super Ljava/lang/Object;
.source "Enq_GetPendingPayment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/Enq_GetPendingPayment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private COM_NAME_ARB:Ljava/lang/String;

.field private COM_NAME_ENG:Ljava/lang/String;

.field private EMP_CARD_EXPIRY:Ljava/lang/String;

.field private EMP_CARD_NO:Ljava/lang/String;

.field private EMP_COM_COMPANY_CODE:Ljava/lang/String;

.field private PAYCARD_NO:Ljava/lang/String;

.field private PER_NAME_ARB:Ljava/lang/String;

.field private PER_NAME_ENG:Ljava/lang/String;

.field private TRANS_NO:Ljava/lang/String;

.field private WPDESCA:Ljava/lang/String;

.field private WPDESCE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lae/gov/mol/vo/Enq_GetPendingPayment$1;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetPendingPayment$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/Enq_GetPendingPayment;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_COM_COMPANY_CODE:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->COM_NAME_ENG:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->COM_NAME_ARB:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->TRANS_NO:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PER_NAME_ENG:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PER_NAME_ARB:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->WPDESCE:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->WPDESCA:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PAYCARD_NO:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_CARD_NO:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_CARD_EXPIRY:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_COM_COMPANY_CODE:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->COM_NAME_ENG:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->COM_NAME_ARB:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->TRANS_NO:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PER_NAME_ENG:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PER_NAME_ARB:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->WPDESCE:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->WPDESCA:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PAYCARD_NO:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_CARD_NO:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_CARD_EXPIRY:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_COM_COMPANY_CODE:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->COM_NAME_ENG:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->COM_NAME_ARB:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->TRANS_NO:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PER_NAME_ENG:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PER_NAME_ARB:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->WPDESCE:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->WPDESCA:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PAYCARD_NO:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_CARD_NO:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_CARD_EXPIRY:Ljava/lang/String;

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

.method public getCOM_NAME_ARB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->COM_NAME_ARB:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_NAME_ENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->COM_NAME_ENG:Ljava/lang/String;

    return-object v0
.end method

.method public getEMP_CARD_EXPIRY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_CARD_EXPIRY:Ljava/lang/String;

    return-object v0
.end method

.method public getEMP_CARD_NO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_CARD_NO:Ljava/lang/String;

    return-object v0
.end method

.method public getEMP_COM_COMPANY_CODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_COM_COMPANY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public getPAYCARD_NO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PAYCARD_NO:Ljava/lang/String;

    return-object v0
.end method

.method public getPER_NAME_ARB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PER_NAME_ARB:Ljava/lang/String;

    return-object v0
.end method

.method public getPER_NAME_ENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PER_NAME_ENG:Ljava/lang/String;

    return-object v0
.end method

.method public getTRANS_NO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->TRANS_NO:Ljava/lang/String;

    return-object v0
.end method

.method public getWPDESCA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->WPDESCA:Ljava/lang/String;

    return-object v0
.end method

.method public getWPDESCE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->WPDESCE:Ljava/lang/String;

    return-object v0
.end method

.method public setCOM_NAME_ARB(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_NAME_ARB"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->COM_NAME_ARB:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setCOM_NAME_ENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_NAME_ENG"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->COM_NAME_ENG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setEMP_CARD_EXPIRY(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMP_CARD_EXPIRY"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_CARD_EXPIRY:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setEMP_CARD_NO(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMP_CARD_NO"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_CARD_NO:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setEMP_COM_COMPANY_CODE(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMP_COM_COMPANY_CODE"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_COM_COMPANY_CODE:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPAYCARD_NO(Ljava/lang/String;)V
    .locals 0
    .param p1, "pAYCARD_NO"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PAYCARD_NO:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setPER_NAME_ARB(Ljava/lang/String;)V
    .locals 0
    .param p1, "pER_NAME_ARB"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PER_NAME_ARB:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPER_NAME_ENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "pER_NAME_ENG"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PER_NAME_ENG:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setTRANS_NO(Ljava/lang/String;)V
    .locals 0
    .param p1, "tRANS_NO"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->TRANS_NO:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setWPDESCA(Ljava/lang/String;)V
    .locals 0
    .param p1, "wPDESCA"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->WPDESCA:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setWPDESCE(Ljava/lang/String;)V
    .locals 0
    .param p1, "wPDESCE"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->WPDESCE:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_COM_COMPANY_CODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->COM_NAME_ENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->COM_NAME_ARB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->TRANS_NO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PER_NAME_ENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PER_NAME_ARB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->WPDESCE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->WPDESCA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->PAYCARD_NO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_CARD_NO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetPendingPayment;->EMP_CARD_EXPIRY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    return-void
.end method
