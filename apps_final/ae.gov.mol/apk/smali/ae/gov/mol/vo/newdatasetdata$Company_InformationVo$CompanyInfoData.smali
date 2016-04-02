.class public Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;
.super Ljava/lang/Object;
.source "newdatasetdata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompanyInfoData"
.end annotation


# instance fields
.field private Abscond:Ljava/lang/String;

.field private COMLICPLACE_DESC:Ljava/lang/String;

.field private COMLICTYPE_DESC:Ljava/lang/String;

.field private COM_COMPANY_CATEGORY:Ljava/lang/String;

.field private COM_COMPANY_CODE:Ljava/lang/String;

.field private COM_COMPANY_CODE_OLD:Ljava/lang/String;

.field private COM_FAX:Ljava/lang/String;

.field private COM_LICENSE_END:Ljava/lang/String;

.field private COM_LICENSE_NO:Ljava/lang/String;

.field private COM_LO_CODE:Ljava/lang/String;

.field private COM_NAME_ARB:Ljava/lang/String;

.field private COM_NAME_ENG:Ljava/lang/String;

.field private COM_PHONE:Ljava/lang/String;

.field private COM_PO_BOX:Ljava/lang/String;

.field private COM_STATUS:Ljava/lang/String;

.field public CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private EMIRATE:Ljava/lang/String;

.field private LabourOffice:Ljava/lang/String;

.field private TotalEmployees:Ljava/lang/String;

.field final synthetic this$1:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;


# direct methods
.method public constructor <init>(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;)V
    .locals 1

    .prologue
    .line 173
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->this$1:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CODE:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LO_CODE:Ljava/lang/String;

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CATEGORY:Ljava/lang/String;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CODE_OLD:Ljava/lang/String;

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_NAME_ARB:Ljava/lang/String;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_NAME_ENG:Ljava/lang/String;

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_STATUS:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LICENSE_END:Ljava/lang/String;

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LICENSE_NO:Ljava/lang/String;

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COMLICTYPE_DESC:Ljava/lang/String;

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COMLICPLACE_DESC:Ljava/lang/String;

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_PHONE:Ljava/lang/String;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_FAX:Ljava/lang/String;

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_PO_BOX:Ljava/lang/String;

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->EMIRATE:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->LabourOffice:Ljava/lang/String;

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->TotalEmployees:Ljava/lang/String;

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->Abscond:Ljava/lang/String;

    .line 455
    new-instance v0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData$1;-><init>(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;)V

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 173
    return-void
.end method

.method public constructor <init>(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 468
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->this$1:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CODE:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LO_CODE:Ljava/lang/String;

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CATEGORY:Ljava/lang/String;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CODE_OLD:Ljava/lang/String;

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_NAME_ARB:Ljava/lang/String;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_NAME_ENG:Ljava/lang/String;

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_STATUS:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LICENSE_END:Ljava/lang/String;

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LICENSE_NO:Ljava/lang/String;

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COMLICTYPE_DESC:Ljava/lang/String;

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COMLICPLACE_DESC:Ljava/lang/String;

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_PHONE:Ljava/lang/String;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_FAX:Ljava/lang/String;

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_PO_BOX:Ljava/lang/String;

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->EMIRATE:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->LabourOffice:Ljava/lang/String;

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->TotalEmployees:Ljava/lang/String;

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->Abscond:Ljava/lang/String;

    .line 455
    new-instance v0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData$1;-><init>(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;)V

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CODE:Ljava/lang/String;

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LO_CODE:Ljava/lang/String;

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CATEGORY:Ljava/lang/String;

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CODE_OLD:Ljava/lang/String;

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_NAME_ARB:Ljava/lang/String;

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_NAME_ENG:Ljava/lang/String;

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_STATUS:Ljava/lang/String;

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LICENSE_END:Ljava/lang/String;

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LICENSE_NO:Ljava/lang/String;

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COMLICTYPE_DESC:Ljava/lang/String;

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COMLICPLACE_DESC:Ljava/lang/String;

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_PHONE:Ljava/lang/String;

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_FAX:Ljava/lang/String;

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_PO_BOX:Ljava/lang/String;

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->EMIRATE:Ljava/lang/String;

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->LabourOffice:Ljava/lang/String;

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->TotalEmployees:Ljava/lang/String;

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->Abscond:Ljava/lang/String;

    .line 487
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;)Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->this$1:Lae/gov/mol/vo/newdatasetdata$Company_InformationVo;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public getAbscond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->Abscond:Ljava/lang/String;

    return-object v0
.end method

.method public getCOMLICPLACE_DESC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COMLICPLACE_DESC:Ljava/lang/String;

    return-object v0
.end method

.method public getCOMLICTYPE_DESC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COMLICTYPE_DESC:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_COMPANY_CATEGORY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CATEGORY:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_COMPANY_CODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_COMPANY_CODE_OLD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CODE_OLD:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_FAX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_FAX:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_LICENSE_END()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LICENSE_END:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_LICENSE_NO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LICENSE_NO:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_LO_CODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LO_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_NAME_ARB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_NAME_ARB:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_NAME_ENG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_NAME_ENG:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_PHONE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_PHONE:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_PO_BOX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_PO_BOX:Ljava/lang/String;

    return-object v0
.end method

.method public getCOM_STATUS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_STATUS:Ljava/lang/String;

    return-object v0
.end method

.method public getEMIRATE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->EMIRATE:Ljava/lang/String;

    return-object v0
.end method

.method public getLabourOffice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->LabourOffice:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalEmployees()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->TotalEmployees:Ljava/lang/String;

    return-object v0
.end method

.method public setAbscond(Ljava/lang/String;)V
    .locals 0
    .param p1, "abscond"    # Ljava/lang/String;

    .prologue
    .line 424
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->Abscond:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setCOMLICPLACE_DESC(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOMLICPLACE_DESC"    # Ljava/lang/String;

    .prologue
    .line 326
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COMLICPLACE_DESC:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setCOMLICTYPE_DESC(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOMLICTYPE_DESC"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COMLICTYPE_DESC:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setCOM_COMPANY_CATEGORY(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_COMPANY_CATEGORY"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CATEGORY:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setCOM_COMPANY_CODE(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_COMPANY_CODE"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CODE:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setCOM_COMPANY_CODE_OLD(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_COMPANY_CODE_OLD"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CODE_OLD:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setCOM_FAX(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_FAX"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_FAX:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setCOM_LICENSE_END(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_LICENSE_END"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LICENSE_END:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setCOM_LICENSE_NO(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_LICENSE_NO"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LICENSE_NO:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setCOM_LO_CODE(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_LO_CODE"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LO_CODE:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setCOM_NAME_ARB(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_NAME_ARB"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_NAME_ARB:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setCOM_NAME_ENG(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_NAME_ENG"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_NAME_ENG:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setCOM_PHONE(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_PHONE"    # Ljava/lang/String;

    .prologue
    .line 340
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_PHONE:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setCOM_PO_BOX(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_PO_BOX"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_PO_BOX:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setCOM_STATUS(Ljava/lang/String;)V
    .locals 0
    .param p1, "cOM_STATUS"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_STATUS:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setEMIRATE(Ljava/lang/String;)V
    .locals 0
    .param p1, "eMIRATE"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->EMIRATE:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setLabourOffice(Ljava/lang/String;)V
    .locals 0
    .param p1, "labourOffice"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->LabourOffice:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setTotalEmployees(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalEmployees"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->TotalEmployees:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LO_CODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CATEGORY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_COMPANY_CODE_OLD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_NAME_ARB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_NAME_ENG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LICENSE_END:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_LICENSE_NO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COMLICTYPE_DESC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COMLICPLACE_DESC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_PHONE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_FAX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->COM_PO_BOX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->EMIRATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->LabourOffice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->TotalEmployees:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lae/gov/mol/vo/newdatasetdata$Company_InformationVo$CompanyInfoData;->Abscond:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    return-void
.end method
