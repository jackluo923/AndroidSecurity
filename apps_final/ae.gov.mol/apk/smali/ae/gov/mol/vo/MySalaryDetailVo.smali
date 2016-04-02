.class public Lae/gov/mol/vo/MySalaryDetailVo;
.super Ljava/lang/Object;
.source "MySalaryDetailVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/MySalaryDetailVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ALLOWANCES:Ljava/lang/String;

.field private AMOUNT:Ljava/lang/String;

.field private FIXEDINCOME:Ljava/lang/String;

.field private PERIOD:Ljava/lang/String;

.field private REFUNDAMOUNT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lae/gov/mol/vo/MySalaryDetailVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/MySalaryDetailVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/MySalaryDetailVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->PERIOD:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->FIXEDINCOME:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->ALLOWANCES:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->REFUNDAMOUNT:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->AMOUNT:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->PERIOD:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->FIXEDINCOME:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->ALLOWANCES:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->REFUNDAMOUNT:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->AMOUNT:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->PERIOD:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->FIXEDINCOME:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->ALLOWANCES:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->REFUNDAMOUNT:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->AMOUNT:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getALLOWANCES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->ALLOWANCES:Ljava/lang/String;

    return-object v0
.end method

.method public getAMOUNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->AMOUNT:Ljava/lang/String;

    return-object v0
.end method

.method public getFIXEDINCOME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->FIXEDINCOME:Ljava/lang/String;

    return-object v0
.end method

.method public getPERIOD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->PERIOD:Ljava/lang/String;

    return-object v0
.end method

.method public getREFUNDAMOUNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->REFUNDAMOUNT:Ljava/lang/String;

    return-object v0
.end method

.method public setALLOWANCES(Ljava/lang/String;)V
    .locals 0
    .param p1, "aLLOWANCES"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryDetailVo;->ALLOWANCES:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setAMOUNT(Ljava/lang/String;)V
    .locals 0
    .param p1, "aMOUNT"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryDetailVo;->AMOUNT:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setFIXEDINCOME(Ljava/lang/String;)V
    .locals 0
    .param p1, "fIXEDINCOME"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryDetailVo;->FIXEDINCOME:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPERIOD(Ljava/lang/String;)V
    .locals 0
    .param p1, "pERIOD"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryDetailVo;->PERIOD:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setREFUNDAMOUNT(Ljava/lang/String;)V
    .locals 0
    .param p1, "rEFUNDAMOUNT"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lae/gov/mol/vo/MySalaryDetailVo;->REFUNDAMOUNT:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->PERIOD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->FIXEDINCOME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->ALLOWANCES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->REFUNDAMOUNT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lae/gov/mol/vo/MySalaryDetailVo;->AMOUNT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return-void
.end method
