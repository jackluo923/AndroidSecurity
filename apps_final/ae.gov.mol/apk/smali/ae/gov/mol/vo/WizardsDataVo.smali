.class public Lae/gov/mol/vo/WizardsDataVo;
.super Ljava/lang/Object;
.source "WizardsDataVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/WizardsDataVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/AttachmentDataVo;",
            ">;"
        }
    .end annotation
.end field

.field private HasSubmit:Ljava/lang/String;

.field private HtmlUrl:Ljava/lang/String;

.field private IsGetService:Ljava/lang/String;

.field private PageIndex:Ljava/lang/String;

.field private SOAPAction:Ljava/lang/String;

.field private SOAPMethod:Ljava/lang/String;

.field private SubmitUrl:Ljava/lang/String;

.field private WizardId:Ljava/lang/String;

.field private WizardTitleAR:Ljava/lang/String;

.field private WizardTitleEN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lae/gov/mol/vo/WizardsDataVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/WizardsDataVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/WizardsDataVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 221
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardId:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardTitleEN:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardTitleAR:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->HtmlUrl:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SubmitUrl:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->PageIndex:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->HasSubmit:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SOAPAction:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SOAPMethod:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->IsGetService:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardId:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardTitleEN:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardTitleAR:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->HtmlUrl:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SubmitUrl:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->PageIndex:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->HasSubmit:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SOAPAction:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SOAPMethod:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->IsGetService:Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->Attachments:Ljava/util/List;

    .line 225
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->Attachments:Ljava/util/List;

    sget-object v1, Lae/gov/mol/vo/AttachmentDataVo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardId:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardTitleEN:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardTitleAR:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->HtmlUrl:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SubmitUrl:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->PageIndex:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->HasSubmit:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SOAPAction:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SOAPMethod:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->IsGetService:Ljava/lang/String;

    .line 236
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/AttachmentDataVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->Attachments:Ljava/util/List;

    return-object v0
.end method

.method public getHasSubmit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->HasSubmit:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->HtmlUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsGetService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->IsGetService:Ljava/lang/String;

    return-object v0
.end method

.method public getPageIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->PageIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getSOAPAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SOAPAction:Ljava/lang/String;

    return-object v0
.end method

.method public getSOAPMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SOAPMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SubmitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWizardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardId:Ljava/lang/String;

    return-object v0
.end method

.method public getWizardTitleAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardTitleAR:Ljava/lang/String;

    return-object v0
.end method

.method public getWizardTitleEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardTitleEN:Ljava/lang/String;

    return-object v0
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/AttachmentDataVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/AttachmentDataVo;>;"
    iput-object p1, p0, Lae/gov/mol/vo/WizardsDataVo;->Attachments:Ljava/util/List;

    .line 185
    return-void
.end method

.method public setHasSubmit(Ljava/lang/String;)V
    .locals 0
    .param p1, "hasSubmit"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lae/gov/mol/vo/WizardsDataVo;->HasSubmit:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setHtmlUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "htmlUrl"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lae/gov/mol/vo/WizardsDataVo;->HtmlUrl:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setIsGetService(Ljava/lang/String;)V
    .locals 0
    .param p1, "isGetService"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lae/gov/mol/vo/WizardsDataVo;->IsGetService:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setPageIndex(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageIndex"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lae/gov/mol/vo/WizardsDataVo;->PageIndex:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setSOAPAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "sOAPAction"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lae/gov/mol/vo/WizardsDataVo;->SOAPAction:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setSOAPMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "sOAPMethod"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lae/gov/mol/vo/WizardsDataVo;->SOAPMethod:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setSubmitUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "submitUrl"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lae/gov/mol/vo/WizardsDataVo;->SubmitUrl:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setWizardId(Ljava/lang/String;)V
    .locals 0
    .param p1, "wizardId"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setWizardTitleAR(Ljava/lang/String;)V
    .locals 0
    .param p1, "wizardTitleAR"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardTitleAR:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setWizardTitleEN(Ljava/lang/String;)V
    .locals 0
    .param p1, "wizardTitleEN"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardTitleEN:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->Attachments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 196
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardTitleEN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->WizardTitleAR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->HtmlUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SubmitUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->PageIndex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->HasSubmit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SOAPAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->SOAPMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lae/gov/mol/vo/WizardsDataVo;->IsGetService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    return-void
.end method
