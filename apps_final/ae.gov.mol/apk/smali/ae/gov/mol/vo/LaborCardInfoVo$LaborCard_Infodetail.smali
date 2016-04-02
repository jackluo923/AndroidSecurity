.class public Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;
.super Ljava/lang/Object;
.source "LaborCardInfoVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/LaborCardInfoVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaborCard_Infodetail"
.end annotation


# instance fields
.field private Balagh:Ljava/lang/String;

.field private COM_LICENSE_END:Ljava/lang/String;

.field private COM_LICENSE_NO:Ljava/lang/String;

.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;",
            ">;"
        }
    .end annotation
.end field

.field private Card_x0020_Status:Ljava/lang/String;

.field private card_type_arb:Ljava/lang/String;

.field private card_type_eng:Ljava/lang/String;

.field private com_name_arb:Ljava/lang/String;

.field private com_name_eng:Ljava/lang/String;

.field private desc_arabic:Ljava/lang/String;

.field private emp_card_expiry:Ljava/lang/String;

.field private emp_card_issue:Ljava/lang/String;

.field private emp_card_no:Ljava/lang/String;

.field private emp_com_company_code:Ljava/lang/String;

.field private job_name_a:Ljava/lang/String;

.field private job_name_e:Ljava/lang/String;

.field private nationality_arb:Ljava/lang/String;

.field private nationality_eng:Ljava/lang/String;

.field private office_name_arb:Ljava/lang/String;

.field private office_name_eng:Ljava/lang/String;

.field private per_name_arb:Ljava/lang/String;

.field private per_name_eng:Ljava/lang/String;

.field private per_passport_exp:Ljava/lang/String;

.field private per_passport_no:Ljava/lang/String;

.field private percode:Ljava/lang/String;

.field private trans_no:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_no:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_issue:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_expiry:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->desc_arabic:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_name_eng:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_name_arb:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_passport_no:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_passport_exp:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->nationality_eng:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->nationality_arb:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_com_company_code:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->com_name_eng:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->com_name_arb:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->COM_LICENSE_NO:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->COM_LICENSE_END:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->Card_x0020_Status:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->office_name_arb:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->office_name_eng:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->job_name_a:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->job_name_e:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->trans_no:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->Balagh:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->percode:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->card_type_arb:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->card_type_eng:Ljava/lang/String;

    .line 506
    new-instance v0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail$1;-><init>(Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;)V

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_no:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_issue:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_expiry:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->desc_arabic:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_name_eng:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_name_arb:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_passport_no:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_passport_exp:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->nationality_eng:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->nationality_arb:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_com_company_code:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->com_name_eng:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->com_name_arb:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->COM_LICENSE_NO:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->COM_LICENSE_END:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->Card_x0020_Status:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->office_name_arb:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->office_name_eng:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->job_name_a:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->job_name_e:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->trans_no:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->Balagh:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->percode:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->card_type_arb:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->card_type_eng:Ljava/lang/String;

    .line 506
    new-instance v0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail$1;-><init>(Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;)V

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_expiry:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_issue:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_expiry:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->desc_arabic:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_name_eng:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_name_arb:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_passport_no:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_passport_exp:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->nationality_eng:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->nationality_arb:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_com_company_code:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->com_name_arb:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->com_name_eng:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->COM_LICENSE_NO:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->COM_LICENSE_END:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->Card_x0020_Status:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->office_name_arb:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->office_name_eng:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->job_name_a:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->job_name_e:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->trans_no:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->Balagh:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->percode:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->card_type_arb:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->card_type_eng:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public getBalagh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->Balagh:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_LICENSE_END()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->COM_LICENSE_END:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_LICENSE_NO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->COM_LICENSE_NO:Ljava/lang/String;

    return-object v0
.end method

.method public getCard_type_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->card_type_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getCard_type_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->card_type_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getCard_x0020_Status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->Card_x0020_Status:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_name_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->com_name_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_name_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->com_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc_arabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->desc_arabic:Ljava/lang/String;

    return-object v0
.end method

.method public getEmp_card_expiry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_expiry:Ljava/lang/String;

    return-object v0
.end method

.method public getEmp_card_issue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_issue:Ljava/lang/String;

    return-object v0
.end method

.method public getEmp_card_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_no:Ljava/lang/String;

    return-object v0
.end method

.method public getEmp_com_company_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_com_company_code:Ljava/lang/String;

    return-object v0
.end method

.method public getJob_name_a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->job_name_a:Ljava/lang/String;

    return-object v0
.end method

.method public getJob_name_e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->job_name_e:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->nationality_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->nationality_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getOffice_name_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->office_name_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getOffice_name_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->office_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getPer_name_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_name_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPer_name_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getPer_passport_exp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_passport_exp:Ljava/lang/String;

    return-object v0
.end method

.method public getPer_passport_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_passport_no:Ljava/lang/String;

    return-object v0
.end method

.method public getPercode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->percode:Ljava/lang/String;

    return-object v0
.end method

.method public getTrans_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->trans_no:Ljava/lang/String;

    return-object v0
.end method

.method public setBalagh(Ljava/lang/String;)V
    .locals 0
    .param p1, "balagh"    # Ljava/lang/String;

    .prologue
    .line 425
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->Balagh:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setCOM_LICENSE_END(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_LICENSE_END"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->COM_LICENSE_END:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setCOM_LICENSE_NO(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_LICENSE_NO"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->COM_LICENSE_NO:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setCard_type_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "card_type_arb"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->card_type_arb:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setCard_type_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "card_type_eng"    # Ljava/lang/String;

    .prologue
    .line 467
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->card_type_eng:Ljava/lang/String;

    .line 468
    return-void
.end method

.method public setCard_x0020_Status(Ljava/lang/String;)V
    .locals 0
    .param p1, "card_x0020_Status"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->Card_x0020_Status:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setCom_name_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_name_arb"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->com_name_arb:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setCom_name_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_name_eng"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->com_name_eng:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setDesc_arabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc_arabic"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->desc_arabic:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setEmp_card_expiry(Ljava/lang/String;)V
    .locals 0
    .param p1, "emp_card_expiry"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_expiry:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setEmp_card_issue(Ljava/lang/String;)V
    .locals 0
    .param p1, "emp_card_issue"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_issue:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setEmp_card_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "emp_card_no"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_no:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setEmp_com_company_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "emp_com_company_code"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_com_company_code:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setJob_name_a(Ljava/lang/String;)V
    .locals 0
    .param p1, "job_name_a"    # Ljava/lang/String;

    .prologue
    .line 383
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->job_name_a:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setJob_name_e(Ljava/lang/String;)V
    .locals 0
    .param p1, "job_name_e"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->job_name_e:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setNationality_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality_arb"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->nationality_arb:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setNationality_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality_eng"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->nationality_eng:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setOffice_name_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "office_name_arb"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->office_name_arb:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setOffice_name_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "office_name_eng"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->office_name_eng:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setPer_name_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "per_name_arb"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_name_arb:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setPer_name_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "per_name_eng"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_name_eng:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setPer_passport_exp(Ljava/lang/String;)V
    .locals 0
    .param p1, "per_passport_exp"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_passport_exp:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setPer_passport_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "per_passport_no"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_passport_no:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setPercode(Ljava/lang/String;)V
    .locals 0
    .param p1, "percode"    # Ljava/lang/String;

    .prologue
    .line 439
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->percode:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setTrans_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "trans_no"    # Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->trans_no:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 478
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->Balagh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->nationality_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->nationality_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->COM_LICENSE_END:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->COM_LICENSE_NO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->Card_x0020_Status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->card_type_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->card_type_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->com_name_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->com_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->desc_arabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_expiry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_issue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_card_no:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->emp_com_company_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->job_name_a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->job_name_e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->office_name_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->office_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_name_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_passport_exp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->per_passport_no:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->percode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lae/gov/mol/vo/LaborCardInfoVo$LaborCard_Infodetail;->trans_no:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    return-void
.end method
