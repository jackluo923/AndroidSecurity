.class public Lae/gov/mol/vo/CompanyQuotaVo;
.super Ljava/lang/Object;
.source "CompanyQuotaVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/CompanyQuotaVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private APPROVE:Ljava/lang/String;

.field private USED:Ljava/lang/String;

.field private balance:Ljava/lang/String;

.field private comcode:Ljava/lang/String;

.field private type_arabic:Ljava/lang/String;

.field private type_english:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lae/gov/mol/vo/CompanyQuotaVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyQuotaVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/CompanyQuotaVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->comcode:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->type_english:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->type_arabic:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->APPROVE:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->USED:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->balance:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->comcode:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->type_english:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->type_arabic:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->APPROVE:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->USED:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->balance:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->comcode:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->type_english:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->type_arabic:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->APPROVE:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->USED:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->balance:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getAPPROVE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->APPROVE:Ljava/lang/String;

    return-object v0
.end method

.method public getBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public getComcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->comcode:Ljava/lang/String;

    return-object v0
.end method

.method public getType_arabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->type_arabic:Ljava/lang/String;

    return-object v0
.end method

.method public getType_english()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->type_english:Ljava/lang/String;

    return-object v0
.end method

.method public getUSED()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->USED:Ljava/lang/String;

    return-object v0
.end method

.method public setAPPROVE(Ljava/lang/String;)V
    .locals 0
    .param p1, "aPPROVE"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaVo;->APPROVE:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setBalance(Ljava/lang/String;)V
    .locals 0
    .param p1, "balance"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaVo;->balance:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setComcode(Ljava/lang/String;)V
    .locals 0
    .param p1, "comcode"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaVo;->comcode:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setType_arabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "type_arabic"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaVo;->type_arabic:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setType_english(Ljava/lang/String;)V
    .locals 0
    .param p1, "type_english"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaVo;->type_english:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setUSED(Ljava/lang/String;)V
    .locals 0
    .param p1, "uSED"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lae/gov/mol/vo/CompanyQuotaVo;->USED:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->comcode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->type_english:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->type_arabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->APPROVE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->USED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lae/gov/mol/vo/CompanyQuotaVo;->balance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return-void
.end method
