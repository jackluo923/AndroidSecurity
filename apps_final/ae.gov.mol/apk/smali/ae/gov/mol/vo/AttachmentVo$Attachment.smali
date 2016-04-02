.class public Lae/gov/mol/vo/AttachmentVo$Attachment;
.super Ljava/lang/Object;
.source "AttachmentVo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/AttachmentVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Attachment"
.end annotation


# instance fields
.field private AttachmentID:Ljava/lang/String;

.field private mButtonId:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/vo/AttachmentVo;


# direct methods
.method public constructor <init>(Lae/gov/mol/vo/AttachmentVo;)V
    .locals 1

    .prologue
    .line 30
    iput-object p1, p0, Lae/gov/mol/vo/AttachmentVo$Attachment;->this$0:Lae/gov/mol/vo/AttachmentVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentVo$Attachment;->status:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentVo$Attachment;->AttachmentID:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AttachmentVo$Attachment;->mButtonId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttachmentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lae/gov/mol/vo/AttachmentVo$Attachment;->AttachmentID:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lae/gov/mol/vo/AttachmentVo$Attachment;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getmButtonId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lae/gov/mol/vo/AttachmentVo$Attachment;->mButtonId:Ljava/lang/String;

    return-object v0
.end method

.method public setAttachmentID(Ljava/lang/String;)V
    .locals 0
    .param p1, "attachmentID"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lae/gov/mol/vo/AttachmentVo$Attachment;->AttachmentID:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lae/gov/mol/vo/AttachmentVo$Attachment;->status:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setmButtonId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mButtonId"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lae/gov/mol/vo/AttachmentVo$Attachment;->mButtonId:Ljava/lang/String;

    .line 70
    return-void
.end method
