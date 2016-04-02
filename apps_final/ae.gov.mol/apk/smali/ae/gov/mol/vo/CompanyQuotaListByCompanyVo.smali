.class public Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;
.super Ljava/lang/Object;
.source "CompanyQuotaListByCompanyVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Approved:Ljava/lang/String;

.field private Cancelled:Ljava/lang/String;

.field private Company_x0020_Code:Ljava/lang/String;

.field private Description:Ljava/lang/String;

.field private GENDER:Ljava/lang/String;

.field private Job_x0020_Code:Ljava/lang/String;

.field private Requested:Ljava/lang/String;

.field private Transaction_x0020_Number:Ljava/lang/String;

.field private Used:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Transaction_x0020_Number:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Company_x0020_Code:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Job_x0020_Code:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Description:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->GENDER:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Requested:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Approved:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Used:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Cancelled:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Transaction_x0020_Number:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Company_x0020_Code:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Job_x0020_Code:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Description:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->GENDER:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Requested:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Approved:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Used:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Cancelled:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Transaction_x0020_Number:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Company_x0020_Code:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Job_x0020_Code:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Description:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->GENDER:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Requested:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Approved:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Used:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Cancelled:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getApproved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Approved:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Cancelled:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_x0020_Code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Company_x0020_Code:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getGENDER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->GENDER:Ljava/lang/String;

    return-object v0
.end method

.method public getJob_x0020_Code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Job_x0020_Code:Ljava/lang/String;

    return-object v0
.end method

.method public getRequested()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Requested:Ljava/lang/String;

    return-object v0
.end method

.method public getTransaction_x0020_Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Transaction_x0020_Number:Ljava/lang/String;

    return-object v0
.end method

.method public getUsed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Used:Ljava/lang/String;

    return-object v0
.end method

.method public setApproved(Ljava/lang/String;)V
    .locals 0
    .param p1, "approved"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Approved:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setCancelled(Ljava/lang/String;)V
    .locals 0
    .param p1, "cancelled"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Cancelled:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setCompany_x0020_Code(Ljava/lang/String;)V
    .locals 0
    .param p1, "company_x0020_Code"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Company_x0020_Code:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Description:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setGENDER(Ljava/lang/String;)V
    .locals 0
    .param p1, "gENDER"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->GENDER:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setJob_x0020_Code(Ljava/lang/String;)V
    .locals 0
    .param p1, "job_x0020_Code"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Job_x0020_Code:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setRequested(Ljava/lang/String;)V
    .locals 0
    .param p1, "requested"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Requested:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setTransaction_x0020_Number(Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction_x0020_Number"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Transaction_x0020_Number:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setUsed(Ljava/lang/String;)V
    .locals 0
    .param p1, "used"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Used:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Transaction_x0020_Number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Company_x0020_Code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Job_x0020_Code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->GENDER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Requested:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Approved:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Used:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->Cancelled:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
