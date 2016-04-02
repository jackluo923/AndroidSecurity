.class public Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;
.super Ljava/lang/Object;
.source "ElectronicLabourCardPrintingVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private COM_NAME_ARB:Ljava/lang/String;

.field private COM_NAME_ENG:Ljava/lang/String;

.field private EMP_CARD_ACTIVE:Ljava/lang/String;

.field private EMP_CARD_NO:Ljava/lang/String;

.field private PER_CODE:Ljava/lang/String;

.field private PER_NAME_ARB:Ljava/lang/String;

.field private PER_NAME_ENG:Ljava/lang/String;

.field private card_expiry:Ljava/lang/String;

.field private job_name_a:Ljava/lang/String;

.field private labour_office:Ljava/lang/String;

.field private nationality_arb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 233
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->EMP_CARD_NO:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->EMP_CARD_ACTIVE:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_CODE:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_NAME_ARB:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_NAME_ENG:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->card_expiry:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->COM_NAME_ARB:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->COM_NAME_ENG:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->nationality_arb:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->job_name_a:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->labour_office:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->EMP_CARD_NO:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->EMP_CARD_ACTIVE:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_CODE:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_NAME_ARB:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_NAME_ENG:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->card_expiry:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->COM_NAME_ARB:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->COM_NAME_ENG:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->nationality_arb:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->job_name_a:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->labour_office:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->EMP_CARD_NO:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->EMP_CARD_ACTIVE:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_CODE:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_NAME_ARB:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_NAME_ENG:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->card_expiry:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->COM_NAME_ARB:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->COM_NAME_ENG:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->nationality_arb:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->job_name_a:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->labour_office:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public getCOM_NAME_ARB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->COM_NAME_ARB:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_NAME_ENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->COM_NAME_ENG:Ljava/lang/String;

    return-object v0
.end method

.method public getCard_expiry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->card_expiry:Ljava/lang/String;

    return-object v0
.end method

.method public getEMP_CARD_ACTIVE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->EMP_CARD_ACTIVE:Ljava/lang/String;

    return-object v0
.end method

.method public getEMP_CARD_NO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->EMP_CARD_NO:Ljava/lang/String;

    return-object v0
.end method

.method public getJob_name_a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->job_name_a:Ljava/lang/String;

    return-object v0
.end method

.method public getLabour_office()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->labour_office:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->nationality_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPER_CODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public getPER_NAME_ARB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_NAME_ARB:Ljava/lang/String;

    return-object v0
.end method

.method public getPER_NAME_ENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_NAME_ENG:Ljava/lang/String;

    return-object v0
.end method

.method public setCOM_NAME_ARB(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_NAME_ARB"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->COM_NAME_ARB:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setCOM_NAME_ENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_NAME_ENG"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->COM_NAME_ENG:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setCard_expiry(Ljava/lang/String;)V
    .locals 0
    .param p1, "card_expiry"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->card_expiry:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setEMP_CARD_ACTIVE(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMP_CARD_ACTIVE"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->EMP_CARD_ACTIVE:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setEMP_CARD_NO(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMP_CARD_NO"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->EMP_CARD_NO:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setJob_name_a(Ljava/lang/String;)V
    .locals 0
    .param p1, "job_name_a"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->job_name_a:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setLabour_office(Ljava/lang/String;)V
    .locals 0
    .param p1, "labour_office"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->labour_office:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setNationality_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality_arb"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->nationality_arb:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setPER_CODE(Ljava/lang/String;)V
    .locals 0
    .param p1, "pER_CODE"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_CODE:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setPER_NAME_ARB(Ljava/lang/String;)V
    .locals 0
    .param p1, "pER_NAME_ARB"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_NAME_ARB:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setPER_NAME_ENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "pER_NAME_ENG"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_NAME_ENG:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->EMP_CARD_NO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->EMP_CARD_ACTIVE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_CODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_NAME_ARB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->PER_NAME_ENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->card_expiry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->COM_NAME_ARB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->COM_NAME_ENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->nationality_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->job_name_a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->labour_office:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    return-void
.end method
