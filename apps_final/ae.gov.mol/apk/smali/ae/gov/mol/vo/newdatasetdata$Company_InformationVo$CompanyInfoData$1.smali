.class Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData$1;
.super Ljava/lang/Object;
.source "newdatasetdata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;
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
        "Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;


# direct methods
.method constructor <init>(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData$1;->this$2:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 464
    new-instance v0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    iget-object v1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData$1;->this$2:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    # getter for: Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->this$1:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;
    invoke-static {v1}, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->access$0(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;)Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;-><init>(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData$1;->createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 459
    new-array v0, p1, [Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData$1;->newArray(I)[Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    move-result-object v0

    return-object v0
.end method
