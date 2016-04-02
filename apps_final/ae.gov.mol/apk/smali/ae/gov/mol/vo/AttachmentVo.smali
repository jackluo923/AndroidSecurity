.class public Lae/gov/mol/vo/AttachmentVo;
.super Ljava/lang/Object;
.source "AttachmentVo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/vo/AttachmentVo$Attachment;
    }
.end annotation


# instance fields
.field public errResult:Lae/gov/mol/vo/AttachmentVo$Attachment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrResult()Lae/gov/mol/vo/AttachmentVo$Attachment;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lae/gov/mol/vo/AttachmentVo;->errResult:Lae/gov/mol/vo/AttachmentVo$Attachment;

    return-object v0
.end method

.method public setErrResult(Lae/gov/mol/vo/AttachmentVo$Attachment;)V
    .locals 0
    .param p1, "errResult"    # Lae/gov/mol/vo/AttachmentVo$Attachment;

    .prologue
    .line 22
    iput-object p1, p0, Lae/gov/mol/vo/AttachmentVo;->errResult:Lae/gov/mol/vo/AttachmentVo$Attachment;

    .line 23
    return-void
.end method
