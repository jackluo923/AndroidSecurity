.class public Lae/gov/mol/vo/AlleServicesVo;
.super Ljava/lang/Object;
.source "AlleServicesVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/AlleServicesVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field Services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/ServiceDataVo;",
            ">;"
        }
    .end annotation
.end field

.field __type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lae/gov/mol/vo/AlleServicesVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/AlleServicesVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/AlleServicesVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AlleServicesVo;->__type:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/vo/AlleServicesVo;->Services:Ljava/util/List;

    .line 86
    iget-object v0, p0, Lae/gov/mol/vo/AlleServicesVo;->Services:Ljava/util/List;

    sget-object v1, Lae/gov/mol/vo/ServiceDataVo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/ServiceDataVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lae/gov/mol/vo/AlleServicesVo;->Services:Ljava/util/List;

    return-object v0
.end method

.method public get__type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lae/gov/mol/vo/AlleServicesVo;->__type:Ljava/lang/String;

    return-object v0
.end method

.method public setServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/ServiceDataVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/ServiceDataVo;>;"
    iput-object p1, p0, Lae/gov/mol/vo/AlleServicesVo;->Services:Ljava/util/List;

    .line 54
    return-void
.end method

.method public set__type(Ljava/lang/String;)V
    .locals 0
    .param p1, "__type"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lae/gov/mol/vo/AlleServicesVo;->__type:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lae/gov/mol/vo/AlleServicesVo;->__type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lae/gov/mol/vo/AlleServicesVo;->Services:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 66
    return-void
.end method
