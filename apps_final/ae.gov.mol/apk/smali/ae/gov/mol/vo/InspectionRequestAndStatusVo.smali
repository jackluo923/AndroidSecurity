.class public Lae/gov/mol/vo/InspectionRequestAndStatusVo;
.super Ljava/lang/Object;
.source "InspectionRequestAndStatusVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/InspectionRequestAndStatusVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private InspectionStatus:Ljava/lang/String;

.field private Nationality:Ljava/lang/String;

.field private PassportNumber:Ljava/lang/String;

.field private PerNameA:Ljava/lang/String;

.field private PerNameE:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private comNameA:Ljava/lang/String;

.field private comNameE:Ljava/lang/String;

.field private com_code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lae/gov/mol/vo/InspectionRequestAndStatusVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/InspectionRequestAndStatusVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 198
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->com_code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->comNameA:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->comNameE:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PerNameA:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PerNameE:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PassportNumber:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->Nationality:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->InspectionStatus:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->com_code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->comNameA:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->comNameE:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PerNameA:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PerNameE:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PassportNumber:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->Nationality:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->InspectionStatus:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->code:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->com_code:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->comNameA:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->comNameE:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PerNameA:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PerNameE:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PassportNumber:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->Nationality:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->InspectionStatus:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getComNameA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->comNameA:Ljava/lang/String;

    return-object v0
.end method

.method public getComNameE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->comNameE:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->com_code:Ljava/lang/String;

    return-object v0
.end method

.method public getInspectionStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->InspectionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->Nationality:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PassportNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPerNameA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PerNameA:Ljava/lang/String;

    return-object v0
.end method

.method public getPerNameE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PerNameE:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->code:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setComNameA(Ljava/lang/String;)V
    .locals 0
    .param p1, "comNameA"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->comNameA:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setComNameE(Ljava/lang/String;)V
    .locals 0
    .param p1, "comNameE"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->comNameE:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setCom_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_code"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->com_code:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setInspectionStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "inspectionStatus"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->InspectionStatus:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setNationality(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->Nationality:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setPassportNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportNumber"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PassportNumber:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setPerNameA(Ljava/lang/String;)V
    .locals 0
    .param p1, "perNameA"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PerNameA:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setPerNameE(Ljava/lang/String;)V
    .locals 0
    .param p1, "perNameE"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PerNameE:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->com_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->comNameA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->comNameE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PerNameA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PerNameE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->PassportNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->Nationality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->InspectionStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return-void
.end method
