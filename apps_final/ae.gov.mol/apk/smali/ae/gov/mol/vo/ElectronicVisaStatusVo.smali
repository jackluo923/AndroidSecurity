.class public Lae/gov/mol/vo/ElectronicVisaStatusVo;
.super Ljava/lang/Object;
.source "ElectronicVisaStatusVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ElectronicVisaStatusVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Company_x0020_Name:Ljava/lang/String;

.field private Date_x0020_of_x0020_Submit:Ljava/lang/String;

.field private Emirate:Ljava/lang/String;

.field private Location:Ljava/lang/String;

.field private State:Ljava/lang/String;

.field private Status:Ljava/lang/String;

.field private Transaction_x0020_Number:Ljava/lang/String;

.field private Transaction_x0020_Type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lae/gov/mol/vo/ElectronicVisaStatusVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ElectronicVisaStatusVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 164
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Transaction_x0020_Number:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Date_x0020_of_x0020_Submit:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Company_x0020_Name:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Emirate:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Transaction_x0020_Type:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Location:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->State:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Status:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Transaction_x0020_Number:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Date_x0020_of_x0020_Submit:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Company_x0020_Name:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Emirate:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Transaction_x0020_Type:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Location:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->State:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Status:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Transaction_x0020_Number:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Date_x0020_of_x0020_Submit:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Company_x0020_Name:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Emirate:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Transaction_x0020_Type:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Location:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->State:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Status:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getCompany_x0020_Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Company_x0020_Name:Ljava/lang/String;

    return-object v0
.end method

.method public getDate_x0020_of_x0020_Submit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Date_x0020_of_x0020_Submit:Ljava/lang/String;

    return-object v0
.end method

.method public getEmirate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Emirate:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Location:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->State:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public getTransaction_x0020_Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Transaction_x0020_Number:Ljava/lang/String;

    return-object v0
.end method

.method public getTransaction_x0020_Type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Transaction_x0020_Type:Ljava/lang/String;

    return-object v0
.end method

.method public setCompany_x0020_Name(Ljava/lang/String;)V
    .locals 0
    .param p1, "company_x0020_Name"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Company_x0020_Name:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setDate_x0020_of_x0020_Submit(Ljava/lang/String;)V
    .locals 0
    .param p1, "date_x0020_of_x0020_Submit"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Date_x0020_of_x0020_Submit:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setEmirate(Ljava/lang/String;)V
    .locals 0
    .param p1, "emirate"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Emirate:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Location:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->State:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Status:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setTransaction_x0020_Number(Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction_x0020_Number"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Transaction_x0020_Number:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setTransaction_x0020_Type(Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction_x0020_Type"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Transaction_x0020_Type:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Transaction_x0020_Number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Date_x0020_of_x0020_Submit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Company_x0020_Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Emirate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Transaction_x0020_Type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->State:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lae/gov/mol/vo/ElectronicVisaStatusVo;->Status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    return-void
.end method
