.class public final Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FollowAccountInfoVO.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;",
        ">;"
    }
.end annotation


# instance fields
.field public acceptMsg:Ljava/lang/Boolean;

.field public avatar:Ljava/lang/String;

.field public disturb:Ljava/lang/Boolean;

.field public followObjectId:Ljava/lang/String;

.field public followType:Ljava/lang/String;

.field public gmtFollowTime:Ljava/lang/Long;

.field public gotoAppUri:Ljava/lang/String;

.field public isFollow:Ljava/lang/Boolean;

.field public latestMsg:Ljava/lang/String;

.field public latestMsgTime:Ljava/lang/Long;

.field public msgNoteType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

.field public pluginType:Ljava/lang/String;

.field public publicChannel:Ljava/lang/String;

.field public unReadMsgCount:Ljava/lang/Integer;

.field public vip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;)V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 184
    if-nez p1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->followObjectId:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->name:Ljava/lang/String;

    .line 187
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->avatar:Ljava/lang/String;

    .line 188
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->isFollow:Ljava/lang/Boolean;

    .line 189
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->latestMsg:Ljava/lang/String;

    .line 190
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->unReadMsgCount:Ljava/lang/Integer;

    .line 191
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->msgNoteType:Ljava/lang/String;

    .line 192
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->followType:Ljava/lang/String;

    .line 193
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->pluginType:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->gotoAppUri:Ljava/lang/String;

    .line 195
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    .line 196
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->disturb:Ljava/lang/Boolean;

    .line 197
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->acceptMsg:Ljava/lang/Boolean;

    .line 198
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->publicChannel:Ljava/lang/String;

    .line 199
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->gmtFollowTime:Ljava/lang/Long;

    .line 200
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->latestMsgTime:Ljava/lang/Long;

    .line 201
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->vip:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final acceptMsg(Ljava/lang/Boolean;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->acceptMsg:Ljava/lang/Boolean;

    .line 266
    return-object p0
.end method

.method public final avatar(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->avatar:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public final build()Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;-><init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->build()Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;

    move-result-object v0

    return-object v0
.end method

.method public final disturb(Ljava/lang/Boolean;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->disturb:Ljava/lang/Boolean;

    .line 261
    return-object p0
.end method

.method public final followObjectId(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->followObjectId:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public final followType(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->followType:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.method public final gmtFollowTime(Ljava/lang/Long;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->gmtFollowTime:Ljava/lang/Long;

    .line 276
    return-object p0
.end method

.method public final gotoAppUri(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->gotoAppUri:Ljava/lang/String;

    .line 251
    return-object p0
.end method

.method public final isFollow(Ljava/lang/Boolean;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->isFollow:Ljava/lang/Boolean;

    .line 221
    return-object p0
.end method

.method public final latestMsg(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->latestMsg:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public final latestMsgTime(Ljava/lang/Long;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->latestMsgTime:Ljava/lang/Long;

    .line 281
    return-object p0
.end method

.method public final msgNoteType(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->msgNoteType:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->name:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public final operateProperties(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    .line 256
    return-object p0
.end method

.method public final pluginType(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->pluginType:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public final publicChannel(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->publicChannel:Ljava/lang/String;

    .line 271
    return-object p0
.end method

.method public final unReadMsgCount(Ljava/lang/Integer;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->unReadMsgCount:Ljava/lang/Integer;

    .line 231
    return-object p0
.end method

.method public final vip(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->vip:Ljava/lang/String;

    .line 286
    return-object p0
.end method
