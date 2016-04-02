.class public Lae/gov/mol/vo/SalaryPaidInfoVo;
.super Ljava/lang/Object;
.source "SalaryPaidInfoVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/SalaryPaidInfoVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private COMTRACT_RESIDANCE:Ljava/lang/String;

.field private COMTRACT_SALARY:Ljava/lang/String;

.field private COMTRACT_TRANSPORTATION:Ljava/lang/String;

.field private COM_COMPANY_CODE:Ljava/lang/String;

.field private COM_NAME_ARB:Ljava/lang/String;

.field private COM_NAME_ENG:Ljava/lang/String;

.field private CONTRACT_TOTAL_SALARY:Ljava/lang/String;

.field private CONTRACT_TYPE:Ljava/lang/String;

.field private DESC_ARABIC:Ljava/lang/String;

.field private EMP_CARD_EXPIRY:Ljava/lang/String;

.field private EMP_CARD_ISSUE:Ljava/lang/String;

.field private EMP_CARD_NO:Ljava/lang/String;

.field private EMP_CON_END:Ljava/lang/String;

.field private EMP_CON_START:Ljava/lang/String;

.field private OFFICE_NAME:Ljava/lang/String;

.field private PER_CODE:Ljava/lang/String;

.field private PER_NAME_ARB:Ljava/lang/String;

.field private PER_NAME_ENG:Ljava/lang/String;

.field private Result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lae/gov/mol/vo/SalaryPaidInfoVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/SalaryPaidInfoVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 338
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_COMPANY_CODE:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->OFFICE_NAME:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_NAME_ARB:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_NAME_ENG:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_ISSUE:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_EXPIRY:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_NO:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_CODE:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_NAME_ARB:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_NAME_ENG:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->DESC_ARABIC:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CONTRACT_TYPE:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CON_START:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CON_END:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_SALARY:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CONTRACT_TOTAL_SALARY:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_RESIDANCE:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_TRANSPORTATION:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->Result:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_COMPANY_CODE:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->OFFICE_NAME:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_NAME_ARB:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_NAME_ENG:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_ISSUE:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_EXPIRY:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_NO:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_CODE:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_NAME_ARB:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_NAME_ENG:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->DESC_ARABIC:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CONTRACT_TYPE:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CON_START:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CON_END:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_SALARY:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CONTRACT_TOTAL_SALARY:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_RESIDANCE:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_TRANSPORTATION:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->Result:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_COMPANY_CODE:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->OFFICE_NAME:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_NAME_ARB:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_NAME_ENG:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_ISSUE:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_EXPIRY:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_NO:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_CODE:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_NAME_ARB:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_NAME_ENG:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->DESC_ARABIC:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CONTRACT_TYPE:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CON_START:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CON_END:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_SALARY:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CONTRACT_TOTAL_SALARY:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_RESIDANCE:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_TRANSPORTATION:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->Result:Ljava/lang/String;

    .line 319
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public getCOMTRACT_RESIDANCE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_RESIDANCE:Ljava/lang/String;

    return-object v0
.end method

.method public getCOMTRACT_SALARY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_SALARY:Ljava/lang/String;

    return-object v0
.end method

.method public getCOMTRACT_TRANSPORTATION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_TRANSPORTATION:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_COMPANY_CODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_COMPANY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_NAME_ARB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_NAME_ARB:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_NAME_ENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_NAME_ENG:Ljava/lang/String;

    return-object v0
.end method

.method public getCONTRACT_TOTAL_SALARY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CONTRACT_TOTAL_SALARY:Ljava/lang/String;

    return-object v0
.end method

.method public getCONTRACT_TYPE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CONTRACT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public getDESC_ARABIC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->DESC_ARABIC:Ljava/lang/String;

    return-object v0
.end method

.method public getEMP_CARD_EXPIRY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_EXPIRY:Ljava/lang/String;

    return-object v0
.end method

.method public getEMP_CARD_ISSUE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_ISSUE:Ljava/lang/String;

    return-object v0
.end method

.method public getEMP_CARD_NO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_NO:Ljava/lang/String;

    return-object v0
.end method

.method public getEMP_CON_END()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CON_END:Ljava/lang/String;

    return-object v0
.end method

.method public getEMP_CON_START()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CON_START:Ljava/lang/String;

    return-object v0
.end method

.method public getOFFICE_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->OFFICE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPER_CODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public getPER_NAME_ARB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_NAME_ARB:Ljava/lang/String;

    return-object v0
.end method

.method public getPER_NAME_ENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_NAME_ENG:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->Result:Ljava/lang/String;

    return-object v0
.end method

.method public setCOMTRACT_RESIDANCE(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOMTRACT_RESIDANCE"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_RESIDANCE:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setCOMTRACT_SALARY(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOMTRACT_SALARY"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_SALARY:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setCOMTRACT_TRANSPORTATION(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOMTRACT_TRANSPORTATION"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_TRANSPORTATION:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setCOM_COMPANY_CODE(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_COMPANY_CODE"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_COMPANY_CODE:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setCOM_NAME_ARB(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_NAME_ARB"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_NAME_ARB:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCOM_NAME_ENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_NAME_ENG"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_NAME_ENG:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCONTRACT_TOTAL_SALARY(Ljava/lang/String;)V
    .locals 0
    .param p1, "cONTRACT_TOTAL_SALARY"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CONTRACT_TOTAL_SALARY:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setCONTRACT_TYPE(Ljava/lang/String;)V
    .locals 0
    .param p1, "cONTRACT_TYPE"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CONTRACT_TYPE:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setDESC_ARABIC(Ljava/lang/String;)V
    .locals 0
    .param p1, "dESC_ARABIC"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->DESC_ARABIC:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setEMP_CARD_EXPIRY(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMP_CARD_EXPIRY"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_EXPIRY:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setEMP_CARD_ISSUE(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMP_CARD_ISSUE"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_ISSUE:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setEMP_CARD_NO(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMP_CARD_NO"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_NO:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setEMP_CON_END(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMP_CON_END"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CON_END:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setEMP_CON_START(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMP_CON_START"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CON_START:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setOFFICE_NAME(Ljava/lang/String;)V
    .locals 0
    .param p1, "oFFICE_NAME"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->OFFICE_NAME:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPER_CODE(Ljava/lang/String;)V
    .locals 0
    .param p1, "pER_CODE"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_CODE:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setPER_NAME_ARB(Ljava/lang/String;)V
    .locals 0
    .param p1, "pER_NAME_ARB"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_NAME_ARB:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setPER_NAME_ENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "pER_NAME_ENG"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_NAME_ENG:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->Result:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_COMPANY_CODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->OFFICE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_NAME_ARB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COM_NAME_ENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_ISSUE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_EXPIRY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CARD_NO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_CODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_NAME_ARB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->PER_NAME_ENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->DESC_ARABIC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CONTRACT_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CON_START:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->EMP_CON_END:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_SALARY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->CONTRACT_TOTAL_SALARY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_RESIDANCE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->COMTRACT_TRANSPORTATION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lae/gov/mol/vo/SalaryPaidInfoVo;->Result:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    return-void
.end method
