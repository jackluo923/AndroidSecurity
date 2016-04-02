.class public Lae/gov/mol/vo/CompanyVo;
.super Ljava/lang/Object;
.source "CompanyVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/CompanyVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Category:Ljava/lang/String;

.field private Company_Code:Ljava/lang/String;

.field private Company_Name:Ljava/lang/String;

.field private Labour_Office:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lae/gov/mol/vo/CompanyVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/CompanyVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Company_Name:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Company_Code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Labour_Office:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Category:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Company_Name:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Company_Code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Labour_Office:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Category:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Company_Name:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Company_Code:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Labour_Office:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Category:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Category:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_Code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Company_Code:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Company_Name:Ljava/lang/String;

    return-object v0
.end method

.method public getLabour_Office()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Labour_Office:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lae/gov/mol/vo/CompanyVo;->Category:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCompany_Code(Ljava/lang/String;)V
    .locals 0
    .param p1, "company_Code"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lae/gov/mol/vo/CompanyVo;->Company_Code:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setCompany_Name(Ljava/lang/String;)V
    .locals 0
    .param p1, "company_Name"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lae/gov/mol/vo/CompanyVo;->Company_Name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setLabour_Office(Ljava/lang/String;)V
    .locals 0
    .param p1, "labour_Office"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lae/gov/mol/vo/CompanyVo;->Labour_Office:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Company_Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Company_Code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Labour_Office:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lae/gov/mol/vo/CompanyVo;->Category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return-void
.end method
