.class public Lae/gov/mol/vo/CompanyStatusVo;
.super Ljava/lang/Object;
.source "CompanyStatusVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/CompanyStatusVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Desc_Arabic:Ljava/lang/String;

.field private Desc_English:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lae/gov/mol/vo/CompanyStatusVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyStatusVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/CompanyStatusVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusVo;->Desc_English:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusVo;->Desc_Arabic:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusVo;->Desc_English:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusVo;->Desc_Arabic:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusVo;->Desc_English:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/CompanyStatusVo;->Desc_Arabic:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getDesc_Arabic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusVo;->Desc_Arabic:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc_English()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusVo;->Desc_English:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc_Arabic(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc_Arabic"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusVo;->Desc_Arabic:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDesc_English(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc_English"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lae/gov/mol/vo/CompanyStatusVo;->Desc_English:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "desc"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusVo;->Desc_English:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lae/gov/mol/vo/CompanyStatusVo;->Desc_Arabic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    return-void
.end method
