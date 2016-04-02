.class public Lae/gov/mol/vo/QuotaStatusByComVo;
.super Ljava/lang/Object;
.source "QuotaStatusByComVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private Approved:Ljava/lang/String;

.field public CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/QuotaStatusByComVo;",
            ">;"
        }
    .end annotation
.end field

.field private Cancelled:Ljava/lang/String;

.field private Company_x0020_Code:Ljava/lang/String;

.field private Description:Ljava/lang/String;

.field private GENDER:Ljava/lang/String;

.field private Job_x0020_Code:Ljava/lang/String;

.field private Requested:Ljava/lang/String;

.field private Transaction_x0020_Number:Ljava/lang/String;

.field private Used:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Transaction_x0020_Number:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Company_x0020_Code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Job_x0020_Code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Description:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->GENDER:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Requested:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Approved:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Used:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Cancelled:Ljava/lang/String;

    .line 166
    new-instance v0, Lae/gov/mol/vo/QuotaStatusByComVo$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/QuotaStatusByComVo$1;-><init>(Lae/gov/mol/vo/QuotaStatusByComVo;)V

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Transaction_x0020_Number:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Company_x0020_Code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Job_x0020_Code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Description:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->GENDER:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Requested:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Approved:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Used:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Cancelled:Ljava/lang/String;

    .line 166
    new-instance v0, Lae/gov/mol/vo/QuotaStatusByComVo$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/QuotaStatusByComVo$1;-><init>(Lae/gov/mol/vo/QuotaStatusByComVo;)V

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Transaction_x0020_Number:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Company_x0020_Code:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Job_x0020_Code:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Description:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->GENDER:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Requested:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Approved:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Used:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Cancelled:Ljava/lang/String;

    .line 164
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getApproved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Approved:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Cancelled:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_x0020_Code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Company_x0020_Code:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getGENDER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->GENDER:Ljava/lang/String;

    return-object v0
.end method

.method public getJob_x0020_Code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Job_x0020_Code:Ljava/lang/String;

    return-object v0
.end method

.method public getRequested()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Requested:Ljava/lang/String;

    return-object v0
.end method

.method public getTransaction_x0020_Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Transaction_x0020_Number:Ljava/lang/String;

    return-object v0
.end method

.method public getUsed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Used:Ljava/lang/String;

    return-object v0
.end method

.method public setApproved(Ljava/lang/String;)V
    .locals 0
    .param p1, "approved"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Approved:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCancelled(Ljava/lang/String;)V
    .locals 0
    .param p1, "cancelled"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Cancelled:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setCompany_x0020_Code(Ljava/lang/String;)V
    .locals 0
    .param p1, "company_x0020_Code"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Company_x0020_Code:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Description:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setGENDER(Ljava/lang/String;)V
    .locals 0
    .param p1, "gENDER"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->GENDER:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setJob_x0020_Code(Ljava/lang/String;)V
    .locals 0
    .param p1, "job_x0020_Code"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Job_x0020_Code:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setRequested(Ljava/lang/String;)V
    .locals 0
    .param p1, "requested"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Requested:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setTransaction_x0020_Number(Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction_x0020_Number"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Transaction_x0020_Number:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setUsed(Ljava/lang/String;)V
    .locals 0
    .param p1, "used"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Used:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Transaction_x0020_Number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Company_x0020_Code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Job_x0020_Code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->GENDER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Requested:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Approved:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Used:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lae/gov/mol/vo/QuotaStatusByComVo;->Cancelled:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    return-void
.end method
