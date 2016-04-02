.class public Lae/gov/mol/vo/newdatasetdata;
.super Ljava/lang/Object;
.source "newdatasetdata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;
    }
.end annotation


# instance fields
.field public CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/newdatasetdata;",
            ">;"
        }
    .end annotation
.end field

.field NewDataSet:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lae/gov/mol/vo/newdatasetdata$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/newdatasetdata$1;-><init>(Lae/gov/mol/vo/newdatasetdata;)V

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lae/gov/mol/vo/newdatasetdata$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/newdatasetdata$1;-><init>(Lae/gov/mol/vo/newdatasetdata;)V

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    const-class v0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata;->NewDataSet:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getNewDataSet()Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata;->NewDataSet:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    return-object v0
.end method

.method public setNewDataSet(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;)V
    .locals 0
    .param p1, "newDataSet"    # Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    .prologue
    .line 33
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata;->NewDataSet:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    .line 34
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata;->NewDataSet:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    return-void
.end method
