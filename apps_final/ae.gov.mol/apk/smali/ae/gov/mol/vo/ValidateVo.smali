.class public Lae/gov/mol/vo/ValidateVo;
.super Ljava/lang/Object;
.source "ValidateVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ValidateVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ComOwner:Ljava/lang/String;

.field private has_balag:Ljava/lang/String;

.field private per_code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lae/gov/mol/vo/ValidateVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ValidateVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ValidateVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ValidateVo;->ComOwner:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ValidateVo;->has_balag:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ValidateVo;->per_code:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ValidateVo;->ComOwner:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ValidateVo;->has_balag:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ValidateVo;->per_code:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ValidateVo;->ComOwner:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ValidateVo;->has_balag:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ValidateVo;->per_code:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getComOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lae/gov/mol/vo/ValidateVo;->ComOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getHas_balag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lae/gov/mol/vo/ValidateVo;->has_balag:Ljava/lang/String;

    return-object v0
.end method

.method public getPer_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lae/gov/mol/vo/ValidateVo;->per_code:Ljava/lang/String;

    return-object v0
.end method

.method public setComOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "comOwner"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lae/gov/mol/vo/ValidateVo;->ComOwner:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setHas_balag(Ljava/lang/String;)V
    .locals 0
    .param p1, "has_balag"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lae/gov/mol/vo/ValidateVo;->has_balag:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPer_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "per_code"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lae/gov/mol/vo/ValidateVo;->per_code:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lae/gov/mol/vo/ValidateVo;->ComOwner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lae/gov/mol/vo/ValidateVo;->has_balag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lae/gov/mol/vo/ValidateVo;->per_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return-void
.end method
