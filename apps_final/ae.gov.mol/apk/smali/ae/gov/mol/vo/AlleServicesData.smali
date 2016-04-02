.class public Lae/gov/mol/vo/AlleServicesData;
.super Ljava/lang/Object;
.source "AlleServicesData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/AlleServicesData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field d:Lae/gov/mol/vo/AlleServicesVo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lae/gov/mol/vo/AlleServicesData$1;

    invoke-direct {v0}, Lae/gov/mol/vo/AlleServicesData$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/AlleServicesData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-class v0, Lae/gov/mol/vo/AlleServicesVo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/AlleServicesVo;

    iput-object v0, p0, Lae/gov/mol/vo/AlleServicesData;->d:Lae/gov/mol/vo/AlleServicesVo;

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getD()Lae/gov/mol/vo/AlleServicesVo;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lae/gov/mol/vo/AlleServicesData;->d:Lae/gov/mol/vo/AlleServicesVo;

    return-object v0
.end method

.method public setD(Lae/gov/mol/vo/AlleServicesVo;)V
    .locals 0
    .param p1, "d"    # Lae/gov/mol/vo/AlleServicesVo;

    .prologue
    .line 35
    iput-object p1, p0, Lae/gov/mol/vo/AlleServicesData;->d:Lae/gov/mol/vo/AlleServicesVo;

    .line 36
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lae/gov/mol/vo/AlleServicesData;->d:Lae/gov/mol/vo/AlleServicesVo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    return-void
.end method
