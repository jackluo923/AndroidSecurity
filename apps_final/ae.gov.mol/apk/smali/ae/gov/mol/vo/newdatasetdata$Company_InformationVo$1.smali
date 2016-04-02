.class Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$1;
.super Ljava/lang/Object;
.source "newdatasetdata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;


# direct methods
.method constructor <init>(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$1;->this$1:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 133
    new-instance v0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    invoke-direct {v0, p1}, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$1;->createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 128
    new-array v0, p1, [Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$1;->newArray(I)[Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    move-result-object v0

    return-object v0
.end method
