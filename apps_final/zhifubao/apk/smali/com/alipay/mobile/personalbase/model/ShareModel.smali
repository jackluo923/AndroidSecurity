.class public Lcom/alipay/mobile/personalbase/model/ShareModel;
.super Ljava/lang/Object;
.source "ShareModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_IMAGE:I = 0x2

.field public static final TYPE_STOCK:I = 0x6

.field public static final TYPE_TAOBAO_GOODS:I = 0x7

.field public static final TYPE_TEXT:I = 0x1

.field public static final TYPE_WEB_PAGE:I = 0x3

.field public static final TYPE_WEB_PAGE_WITH_STAR:I = 0x5

.field public static final TYPE_WEB_PAGE_WITH_SUBTITLE:I = 0x4


# instance fields
.field private appIcon:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private bigImage:Ljava/lang/String;

.field private bizMemo:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private extendData:Ljava/lang/String;

.field private extendLevel:I

.field private extendMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private imageByte:[B

.field private imageHeight:I

.field private imageWidth:I

.field private showExtraWord:Z

.field private subTitle:Ljava/lang/String;

.field private templateCode:I

.field private text:Ljava/lang/String;

.field private thumb:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->showExtraWord:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendMaps:Ljava/util/HashMap;

    .line 41
    return-void
.end method


# virtual methods
.method public getAppIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->appIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getBigImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bigImage:Ljava/lang/String;

    return-object v0
.end method

.method public getBizMemo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    .line 125
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->type:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    goto :goto_0

    .line 105
    :pswitch_1
    const-string/jumbo v0, "[\u56fe\u7247]"

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    goto :goto_1

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    goto :goto_1

    .line 111
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\u94fe\u63a5]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    goto :goto_1

    .line 114
    :pswitch_4
    const-string/jumbo v0, "[\u80a1\u7968]"

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendMaps:Ljava/util/HashMap;

    const-string/jumbo v1, "stockName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendMaps:Ljava/util/HashMap;

    const-string/jumbo v1, "stockName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendMaps:Ljava/util/HashMap;

    const-string/jumbo v2, "stockName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendMaps:Ljava/util/HashMap;

    const-string/jumbo v1, "stockCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendMaps:Ljava/util/HashMap;

    const-string/jumbo v1, "stockCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendMaps:Ljava/util/HashMap;

    const-string/jumbo v2, "stockCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    goto/16 :goto_1

    .line 124
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\u6dd8\u5b9d\u5b9d\u8d1d]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    goto/16 :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendData:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendLevel()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendLevel:I

    return v0
.end method

.method public getExtendMaps()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method public getImageByte()[B
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->imageByte:[B

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->imageWidth:I

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateCode()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->type:I

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->templateCode:I

    return v0

    .line 171
    :pswitch_1
    const/16 v0, 0xe

    iput v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->templateCode:I

    goto :goto_0

    .line 174
    :pswitch_2
    const/16 v0, 0xb

    iput v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->templateCode:I

    goto :goto_0

    .line 177
    :pswitch_3
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->templateCode:I

    goto :goto_0

    .line 180
    :pswitch_4
    const/16 v0, 0x78

    iput v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->templateCode:I

    goto :goto_0

    .line 183
    :pswitch_5
    const/16 v0, 0x79

    iput v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->templateCode:I

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isShowExtraWord()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->showExtraWord:Z

    return v0
.end method

.method public setAppIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->appIcon:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->appId:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->appName:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setBigImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bigImage:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setBizMemo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->bizMemo:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->description:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setExtendData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendData:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setExtendLevel(I)V
    .locals 0

    .prologue
    .line 149
    iput p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendLevel:I

    .line 150
    return-void
.end method

.method public setExtendMapItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->extendMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public setImageByte([B)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->imageByte:[B

    .line 249
    return-void
.end method

.method public setImageHeight(I)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->imageHeight:I

    .line 233
    return-void
.end method

.method public setImageWidth(I)V
    .locals 0

    .prologue
    .line 224
    iput p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->imageWidth:I

    .line 225
    return-void
.end method

.method public setShowExtraWord(Z)V
    .locals 0

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->showExtraWord:Z

    .line 166
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->subTitle:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setTemplateCode(I)V
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->templateCode:I

    .line 193
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->text:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->thumb:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->title:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->type:I

    .line 158
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/model/ShareModel;->url:Ljava/lang/String;

    .line 97
    return-void
.end method
