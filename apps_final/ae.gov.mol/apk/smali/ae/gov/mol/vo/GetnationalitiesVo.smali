.class public Lae/gov/mol/vo/GetnationalitiesVo;
.super Ljava/lang/Object;
.source "GetnationalitiesVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/GetnationalitiesVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nat_code:Ljava/lang/String;

.field private nat_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lae/gov/mol/vo/GetnationalitiesVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/GetnationalitiesVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/GetnationalitiesVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetnationalitiesVo;->nat_code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetnationalitiesVo;->nat_name:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetnationalitiesVo;->nat_code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/GetnationalitiesVo;->nat_name:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetnationalitiesVo;->nat_code:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/GetnationalitiesVo;->nat_name:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getNat_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lae/gov/mol/vo/GetnationalitiesVo;->nat_code:Ljava/lang/String;

    return-object v0
.end method

.method public getNat_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lae/gov/mol/vo/GetnationalitiesVo;->nat_name:Ljava/lang/String;

    return-object v0
.end method

.method public setNat_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "nat_code"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lae/gov/mol/vo/GetnationalitiesVo;->nat_code:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setNat_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "nat_name"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lae/gov/mol/vo/GetnationalitiesVo;->nat_name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lae/gov/mol/vo/GetnationalitiesVo;->getNat_name()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "mName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 89
    .end local v0    # "mName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "mName":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lae/gov/mol/vo/GetnationalitiesVo;->nat_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lae/gov/mol/vo/GetnationalitiesVo;->nat_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void
.end method
