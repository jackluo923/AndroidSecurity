.class public Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;
.super Ljava/lang/Object;
.source "Enq_GetBankGuaranteeVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Category:Ljava/lang/String;

.field private Emirate:Ljava/lang/String;

.field private Labour_Office:Ljava/lang/String;

.field private License_Number:Ljava/lang/String;

.field private com_Name:Ljava/lang/String;

.field private com_code:Ljava/lang/String;

.field private com_name_arb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 166
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_Name:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_name_arb:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Category:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->License_Number:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Emirate:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Labour_Office:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_Name:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_name_arb:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Category:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->License_Number:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Emirate:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Labour_Office:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_code:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_Name:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_name_arb:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Category:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->License_Number:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Emirate:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Labour_Office:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Category:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_Name:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_name_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_name_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getEmirate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Emirate:Ljava/lang/String;

    return-object v0
.end method

.method public getLabour_Office()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Labour_Office:Ljava/lang/String;

    return-object v0
.end method

.method public getLicense_Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->License_Number:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Category:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCom_Name(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_Name"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_Name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setCom_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_code"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_code:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setCom_name_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_name_arb"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_name_arb:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setEmirate(Ljava/lang/String;)V
    .locals 0
    .param p1, "emirate"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Emirate:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setLabour_Office(Ljava/lang/String;)V
    .locals 0
    .param p1, "labour_Office"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Labour_Office:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setLicense_Number(Ljava/lang/String;)V
    .locals 0
    .param p1, "license_Number"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->License_Number:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->com_name_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->License_Number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Emirate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->Labour_Office:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return-void
.end method
