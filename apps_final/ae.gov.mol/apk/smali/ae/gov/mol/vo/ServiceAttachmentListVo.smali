.class public Lae/gov/mol/vo/ServiceAttachmentListVo;
.super Ljava/lang/Object;
.source "ServiceAttachmentListVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ServiceAttachmentListVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private companyName:Ljava/lang/String;

.field private companyNumber:Ljava/lang/String;

.field private documentID:Ljava/lang/String;

.field private isMandatory:Z

.field private maximumPages:I

.field private minimumPages:I

.field private scanDescription:Ljava/lang/String;

.field private scanItemID:Ljava/lang/String;

.field private scanType:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lae/gov/mol/vo/ServiceAttachmentListVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ServiceAttachmentListVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ServiceAttachmentListVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 207
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->companyNumber:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->serviceName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->companyName:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanItemID:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->documentID:Ljava/lang/String;

    .line 20
    iput v1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->maximumPages:I

    .line 21
    iput v1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->minimumPages:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanType:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanDescription:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->isMandatory:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, -0x1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->companyNumber:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->serviceName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->companyName:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanItemID:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->documentID:Ljava/lang/String;

    .line 20
    iput v1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->maximumPages:I

    .line 21
    iput v1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->minimumPages:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanType:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanDescription:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->isMandatory:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->companyNumber:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->serviceName:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->companyName:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanItemID:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->documentID:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->maximumPages:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->minimumPages:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanType:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanDescription:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->isMandatory:Z

    .line 188
    return-void
.end method


# virtual methods
.method public IsMandatory()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->isMandatory:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->companyNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->documentID:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumPages()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->maximumPages:I

    return v0
.end method

.method public getMinimumPages()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->minimumPages:I

    return v0
.end method

.method public getScanDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getScanItemID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanItemID:Ljava/lang/String;

    return-object v0
.end method

.method public getScanType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanType:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyName"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->companyName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setCompanyNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyNumber"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->companyNumber:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDocumentID(Ljava/lang/String;)V
    .locals 0
    .param p1, "documentID"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->documentID:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setIsMandatory(Z)V
    .locals 0
    .param p1, "isMandatory"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->isMandatory:Z

    .line 168
    return-void
.end method

.method public setMaximumPages(I)V
    .locals 0
    .param p1, "maximumPages"    # I

    .prologue
    .line 111
    iput p1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->maximumPages:I

    .line 112
    return-void
.end method

.method public setMinimumPages(I)V
    .locals 0
    .param p1, "minimumPages"    # I

    .prologue
    .line 125
    iput p1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->minimumPages:I

    .line 126
    return-void
.end method

.method public setScanDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "scanDescription"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanDescription:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setScanItemID(Ljava/lang/String;)V
    .locals 0
    .param p1, "scanItemID"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanItemID:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setScanType(Ljava/lang/String;)V
    .locals 0
    .param p1, "scanType"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanType:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->serviceName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->companyNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->companyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanItemID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->documentID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->maximumPages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->minimumPages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->scanDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-boolean v0, p0, Lae/gov/mol/vo/ServiceAttachmentListVo;->isMandatory:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    return-void

    .line 221
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
