.class public Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;
.super Ljava/lang/Object;
.source "NotifyCenter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "chatsdk__notify"

.field private static instance:Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;


# instance fields
.field private followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

.field private hasNoNotifyFlag:Z

.field private onChatList:Z

.field private recodeItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->onChatList:Z

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->recodeItems:Ljava/util/Map;

    .line 38
    iput-boolean v1, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->hasNoNotifyFlag:Z

    .line 49
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    .line 50
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->instance:Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->instance:Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    .line 45
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->instance:Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    return-object v0
.end method

.method private isSameMergeItem(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 283
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    const-string/jumbo v1, "itemType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "itemType"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const-string/jumbo v1, "itemId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "itemId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const-string/jumbo v1, "displayName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "displayName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const-string/jumbo v1, "bizMemo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "bizMemo"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    const-string/jumbo v1, "uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    const-string/jumbo v1, "redPointStyle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "redPointStyle"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    const-string/jumbo v1, "icon"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "icon"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    const-string/jumbo v1, "createTime"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string/jumbo v3, "createTime"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 294
    const-string/jumbo v1, "holdPosition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "holdPosition"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 295
    const-string/jumbo v1, "notDisturb"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "notDisturb"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 296
    const-string/jumbo v1, "top"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "top"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 297
    const-string/jumbo v1, "revert"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "revert"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 298
    const-string/jumbo v1, "unread"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "unread"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private needClearEntryPoint()Z
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 308
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 309
    if-eqz v0, :cond_0

    .line 310
    const-string/jumbo v1, "PUBLIC_PLATFORM_CLEAR_ENTRY_POINT"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string/jumbo v1, "OFF"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyStr(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    const-string/jumbo v0, ""

    .line 231
    :goto_0
    return-object v0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string/jumbo v1, "itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "itemType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string/jumbo v1, "itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "itemId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string/jumbo v1, "displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "displayName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string/jumbo v1, "bizMemo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bizMemo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string/jumbo v1, "icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "icon"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string/jumbo v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string/jumbo v1, "redPointStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "redPointStyle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string/jumbo v1, "createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "createTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string/jumbo v1, "lastOperateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lastOperateTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string/jumbo v1, "notDisturb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "notDisturb"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string/jumbo v1, "unread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "unread"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string/jumbo v1, "revert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "revert"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string/jumbo v1, "holdPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "holdPosition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string/jumbo v1, "top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "top"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private obtainSocialSdkContactService()Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 63
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 62
    return-object v0
.end method

.method private obtainUserId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 90
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 92
    if-nez v0, :cond_0

    move-object v0, v1

    .line 99
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 96
    if-nez v0, :cond_1

    move-object v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearRecordItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->recodeItems:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public deleteItem(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->obtainSocialSdkContactService()Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string/jumbo v3, "itemType"

    const-string/jumbo v4, "public_vip"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v3, "itemId"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->removeRecentListExternal(Ljava/util/List;)V

    .line 133
    :cond_0
    return-void
.end method

.method public initTab()V
    .locals 9

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->obtainUserId()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "chatsdk__notify"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "query tab list "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->obtainSocialSdkContactService()Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->queryTabList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 76
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "chatsdk__notify"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "notify friend  tab list size:"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->updateRecentListExternal(Ljava/util/List;)V

    .line 85
    :cond_1
    return-void

    .line 76
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "chatsdk__notify"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "to notify one of list  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyStr(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v5, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->recodeItems:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "itemId"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method

.method public initTab(Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk__notify"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "query tab list "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->obtainSocialSdkContactService()Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->queryTabList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 111
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "chatsdk__notify"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "notify friend  tab list size:"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->updateRecentListExternal(Ljava/util/List;)V

    .line 120
    :cond_1
    return-void

    .line 111
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "chatsdk__notify"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "to notify one of list  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyStr(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->recodeItems:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "itemId"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method

.method public notifyMergeItem(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;ZZ)V

    .line 236
    return-void
.end method

.method public notifyMergeItem(Ljava/lang/String;ZZ)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->obtainSocialSdkContactService()Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v2

    .line 239
    if-nez v2, :cond_0

    .line 278
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->generateMergeItem(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    .line 243
    if-eqz v3, :cond_4

    .line 244
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->needClearEntryPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-boolean v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->onChatList:Z

    if-eqz v0, :cond_2

    .line 247
    const-string/jumbo v0, "unread"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->recodeItems:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "itemId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->isSameMergeItem(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk__notify"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "same merget item "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "itemId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "unread"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_2
    if-nez p3, :cond_1

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->recodeItems:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "itemId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 252
    if-eqz v0, :cond_5

    .line 253
    const-string/jumbo v1, "unread"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 255
    :goto_2
    if-nez v0, :cond_1

    .line 256
    const-string/jumbo v1, "unread"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->recodeItems:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "itemId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "chatsdk__notify"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "notify publicplatform merge item "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyStr(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->updateRecentListExternal(Ljava/util/List;)V

    goto/16 :goto_0

    .line 271
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 273
    const-string/jumbo v3, "itemType"

    const-string/jumbo v4, "public"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v3, "itemId"

    const-string/jumbo v4, "publicEntryId"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->removeRecentListExternal(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;ZZZ)V

    .line 172
    return-void
.end method

.method public notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;ZZZ)V
    .locals 7

    .prologue
    .line 175
    if-nez p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->hasNoNotifyFlag:Z

    if-eqz v0, :cond_2

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->hasNoNotifyFlag:Z

    .line 180
    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->userId:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->initTab(Ljava/lang/String;Z)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->pluginType:Ljava/lang/String;

    const-string/jumbo v1, "sina_news"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->isFollow:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->obtainSocialSdkContactService()Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_0

    .line 192
    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->vip:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->convertTabBundle(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;ZZ)Landroid/os/Bundle;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->recodeItems:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->userId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "itemId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->isSameMergeItem(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk__notify"

    const-string/jumbo v2, "same vip item "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->recodeItems:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->userId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "itemId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "chatsdk__notify"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "notify publicplatform sigle item "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyStr(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->updateRecentListExternal(Ljava/util/List;)V

    goto/16 :goto_0

    .line 207
    :cond_5
    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->followObjectId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->deleteItem(Ljava/lang/String;)V

    .line 208
    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->userId:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p4}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method public notityShowModel(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 167
    return-void
.end method

.method public notityShowModel(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    .prologue
    .line 136
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 137
    return-void
.end method

.method public notityShowModel(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 4

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->hasNoNotifyFlag:Z

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->hasNoNotifyFlag:Z

    .line 152
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->initTab(Ljava/lang/String;Z)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;ZZZ)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk__notify"

    const-string/jumbo v3, "notityShowModel error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized notityShowModelFromNew(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 147
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHasNoNotifyFlag(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->hasNoNotifyFlag:Z

    .line 59
    return-void
.end method

.method public setOnChatList(Z)V
    .locals 0

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->onChatList:Z

    .line 303
    return-void
.end method
