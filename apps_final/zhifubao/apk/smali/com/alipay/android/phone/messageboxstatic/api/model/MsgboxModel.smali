.class public Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;
.super Ljava/lang/Object;
.source "MsgboxModel.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtCreate()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->l:J

    return-wide v0
.end method

.method public getGmtValid()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->m:J

    return-wide v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOperate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOperateMsgIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->d:Ljava/util/List;

    return-object v0
.end method

.method public getTemplateCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->h:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setGmtCreate(J)V
    .locals 0

    .prologue
    .line 245
    iput-wide p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->l:J

    .line 246
    return-void
.end method

.method public setGmtValid(J)V
    .locals 0

    .prologue
    .line 261
    iput-wide p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->m:J

    .line 262
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->i:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->j:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setLinkName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->k:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->c:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setMsgType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->b:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setOperate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->a:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setOperateMsgIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->d:Ljava/util/List;

    .line 150
    return-void
.end method

.method public setTemplateCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->e:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setTemplateType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->f:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->g:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    const-string/jumbo v1, "operate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    const-string/jumbo v2, ", msgType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    const-string/jumbo v2, ", msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    const-string/jumbo v2, ", operateMsgIdList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->d:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 271
    const-string/jumbo v2, ", templateCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    const-string/jumbo v2, ", templateType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    const-string/jumbo v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 274
    const-string/jumbo v2, ", content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    const-string/jumbo v2, ", icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    const-string/jumbo v2, ", link="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 277
    const-string/jumbo v2, ", linkName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 278
    const-string/jumbo v2, ", gmtCreate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    const-string/jumbo v2, ", gmtValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/android/phone/messageboxstatic/api/model/MsgboxModel;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
