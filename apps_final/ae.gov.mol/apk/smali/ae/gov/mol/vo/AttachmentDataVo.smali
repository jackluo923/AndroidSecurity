.class public Lae/gov/mol/vo/AttachmentDataVo;
.super Ljava/lang/Object;
.source "AttachmentDataVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/AttachmentDataVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AttachmentId:Ljava/lang/String;

.field private FieldName:Ljava/lang/String;

.field private LabelTitleAR:Ljava/lang/String;

.field private LabelTitleEN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lae/gov/mol/vo/AttachmentDataVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/AttachmentDataVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/AttachmentDataVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->AttachmentId:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->LabelTitleEN:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->LabelTitleAR:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->FieldName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->AttachmentId:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->LabelTitleEN:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->LabelTitleAR:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->FieldName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->AttachmentId:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->LabelTitleEN:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->LabelTitleAR:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->FieldName:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getAttachmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->AttachmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->FieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelTitleAR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->LabelTitleAR:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelTitleEN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->LabelTitleEN:Ljava/lang/String;

    return-object v0
.end method

.method public setAttachmentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lae/gov/mol/vo/AttachmentDataVo;->AttachmentId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lae/gov/mol/vo/AttachmentDataVo;->FieldName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setLabelTitleAR(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelTitleAR"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lae/gov/mol/vo/AttachmentDataVo;->LabelTitleAR:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setLabelTitleEN(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelTitleEN"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lae/gov/mol/vo/AttachmentDataVo;->LabelTitleEN:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->AttachmentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->LabelTitleEN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->LabelTitleAR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lae/gov/mol/vo/AttachmentDataVo;->FieldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void
.end method
