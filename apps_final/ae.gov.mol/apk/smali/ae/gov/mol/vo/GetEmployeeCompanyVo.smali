.class public Lae/gov/mol/vo/GetEmployeeCompanyVo;
.super Ljava/lang/Object;
.source "GetEmployeeCompanyVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/GetEmployeeCompanyVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BadEmp:Ljava/lang/String;

.field private GoodEmp:Ljava/lang/String;

.field private com_company_code:Ljava/lang/String;

.field private com_name_arb:Ljava/lang/String;

.field private com_name_eng:Ljava/lang/String;

.field private totalemployees:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lae/gov/mol/vo/GetEmployeeCompanyVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/GetEmployeeCompanyVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_company_code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_name_arb:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_name_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->totalemployees:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->GoodEmp:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->BadEmp:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_company_code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_name_arb:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_name_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->totalemployees:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->GoodEmp:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->BadEmp:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_company_code:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_name_arb:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_name_eng:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->totalemployees:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->GoodEmp:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->BadEmp:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getBadEmp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->BadEmp:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_company_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_company_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_name_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_name_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_name_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodEmp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->GoodEmp:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalemployees()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->totalemployees:Ljava/lang/String;

    return-object v0
.end method

.method public setBadEmp(Ljava/lang/String;)V
    .locals 0
    .param p1, "badEmp"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->BadEmp:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setCom_company_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_company_code"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_company_code:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setCom_name_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_name_arb"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_name_arb:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setCom_name_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_name_eng"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_name_eng:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setGoodEmp(Ljava/lang/String;)V
    .locals 0
    .param p1, "goodEmp"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->GoodEmp:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setTotalemployees(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalemployees"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->totalemployees:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_company_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_name_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->com_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->totalemployees:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->GoodEmp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lae/gov/mol/vo/GetEmployeeCompanyVo;->BadEmp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return-void
.end method
