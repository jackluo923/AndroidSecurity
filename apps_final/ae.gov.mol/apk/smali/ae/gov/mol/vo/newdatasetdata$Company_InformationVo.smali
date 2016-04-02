.class public Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;
.super Ljava/lang/Object;
.source "newdatasetdata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/newdatasetdata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Company_InformationVo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;,
        Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;
    }
.end annotation


# instance fields
.field public CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;",
            ">;"
        }
    .end annotation
.end field

.field public CompanyInfo:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

.field public CompanyQuotaDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$1;-><init>(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;)V

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$1;-><init>(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;)V

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 138
    const-class v0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;->CompanyInfo:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;->CompanyQuotaDetails:Ljava/util/ArrayList;

    .line 140
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;->CompanyQuotaDetails:Ljava/util/ArrayList;

    sget-object v1, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 141
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getCompanyInfo()Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;->CompanyInfo:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    return-object v0
.end method

.method public getCompanyQuotaDetails()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;->CompanyQuotaDetails:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCompanyInfo(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;)V
    .locals 0
    .param p1, "companyInfo"    # Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    .prologue
    .line 93
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;->CompanyInfo:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    .line 94
    return-void
.end method

.method public setCompanyQuotaDetails(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "companyQuotaDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyQuotaDetailsData;>;"
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;->CompanyQuotaDetails:Ljava/util/ArrayList;

    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;->CompanyInfo:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;->CompanyQuotaDetails:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 121
    return-void
.end method
