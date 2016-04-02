.class public Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;
.super Ljava/lang/Object;
.source "WorkPermitReceiptByComCodeVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private card_no:Ljava/lang/String;

.field private desc_arabic:Ljava/lang/String;

.field private desc_english:Ljava/lang/String;

.field private emp_card_expiry:Ljava/lang/String;

.field private paycardno:Ljava/lang/String;

.field private paycategory:Ljava/lang/String;

.field private per_name_arb:Ljava/lang/String;

.field private per_name_eng:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 181
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->per_name_eng:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->per_name_arb:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->desc_arabic:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->desc_english:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->card_no:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->emp_card_expiry:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->paycardno:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->paycategory:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->per_name_eng:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->per_name_arb:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->desc_arabic:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->desc_english:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->card_no:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->emp_card_expiry:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->paycardno:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->paycategory:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->per_name_eng:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->per_name_arb:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->desc_arabic:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->desc_english:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->card_no:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->emp_card_expiry:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->paycardno:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->paycategory:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getCard_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->card_no:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc_arabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->desc_arabic:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc_english()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->desc_english:Ljava/lang/String;

    return-object v0
.end method

.method public getEmp_card_expiry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->emp_card_expiry:Ljava/lang/String;

    return-object v0
.end method

.method public getPaycardno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->paycardno:Ljava/lang/String;

    return-object v0
.end method

.method public getPaycategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->paycategory:Ljava/lang/String;

    return-object v0
.end method

.method public getPer_name_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->per_name_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPer_name_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->per_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public setCard_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "card_no"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->card_no:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setDesc_arabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc_arabic"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->desc_arabic:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setDesc_english(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc_english"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->desc_english:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setEmp_card_expiry(Ljava/lang/String;)V
    .locals 0
    .param p1, "emp_card_expiry"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->emp_card_expiry:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setPaycardno(Ljava/lang/String;)V
    .locals 0
    .param p1, "paycardno"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->paycardno:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPaycategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "paycategory"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->paycategory:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setPer_name_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "per_name_arb"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->per_name_arb:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPer_name_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "per_name_eng"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->per_name_eng:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->per_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->per_name_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->desc_arabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->desc_english:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->card_no:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->emp_card_expiry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->paycardno:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->paycategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    return-void
.end method
