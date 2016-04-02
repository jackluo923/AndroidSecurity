.class public Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;
.super Ljava/lang/Object;
.source "PPChatMenuActionDemo.java"

# interfaces
.implements Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->a:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->f:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    .line 52
    const-string/jumbo v0, "publicId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->b:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "publicName"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->c:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->d:Lorg/json/JSONObject;

    .line 55
    iput-object p4, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->e:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 178
    const-string/jumbo v1, "#publicId#"

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    const-string/jumbo v0, "ShowRecords"

    const-string/jumbo v2, "actionType"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 187
    if-eqz v2, :cond_2

    .line 188
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "BILL_REF_URL"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 190
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 194
    :cond_2
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 195
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 196
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 205
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 208
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 210
    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 211
    const-string/jumbo v2, "10000111"

    const-string/jumbo v3, "appId"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 212
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "jiushi"

    const-string/jumbo v4, "10000111, sleep"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    const-wide/16 v2, 0x5dc

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :goto_1
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    .line 225
    :goto_2
    return-object p1

    .line 197
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    if-nez v2, :cond_6

    const-string/jumbo v5, "click_menu"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 199
    :cond_6
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 215
    :catch_1
    move-exception v2

    .line 216
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 219
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "jiushi"

    const-string/jumbo v4, "10000111, pass"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$string;->pub_tel_cannot_msg:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string/jumbo v1, "%TELNO%"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo$1;

    invoke-direct {v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo$1;-><init>()V

    .line 167
    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->simpleAlert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 174
    return-void
.end method

.method private a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 123
    const-string/jumbo v0, "menubar"

    const-string/jumbo v1, "go to ppchat"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string/jumbo v0, "alipays://platformapi/startapp?appId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v0, "20000042"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v0, "&publicId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v0, "&publicName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v0, "&showChat="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    const-string/jumbo v0, "&shopId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v0, "&menuAction="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v0, "&menuData="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->d:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v0, "&sourceId=merchant_menu"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    if-eqz p2, :cond_0

    .line 135
    const-string/jumbo v0, "&actionType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v0, "&actionParam="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v0, "&name="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 142
    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    .line 144
    return-void
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 299
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 300
    if-nez v0, :cond_0

    .line 301
    const-string/jumbo v0, ""

    .line 304
    :goto_0
    return-object v0

    .line 303
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public onMenuItemClick(Lcom/alipay/publiccore/core/model/account/ButtonObject;Z)V
    .locals 13

    .prologue
    const/4 v2, 0x1

    .line 60
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string/jumbo v1, "click_menu"

    iget-object v3, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->a:Landroid/content/Context;

    iget-object v3, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionParam:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object v8, v4

    .line 66
    :goto_1
    if-eqz p2, :cond_a

    .line 67
    iget-object v9, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->b:Ljava/lang/String;

    iget-object v10, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    iget-object v11, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->e:Ljava/lang/String;

    iget-object v12, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->e:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;

    const-string/jumbo v1, "UC-FWC-150604-13"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "public"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "merchantView"

    const-string/jumbo v6, "menu1"

    const-string/jumbo v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->i:Ljava/lang/String;

    iput-object v8, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->j:Ljava/lang/String;

    iput-object v10, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "^"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/c/a;->a(Lcom/alipay/mobile/publicsvc/common/proguard/c/b;)V

    goto :goto_0

    .line 65
    :cond_2
    const-string/jumbo v6, "alipays://"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v4, v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    :cond_3
    :goto_3
    move-object v8, v4

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "http://"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "https://"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_c

    const-string/jumbo v1, "ppchat_smart_toolbar"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "u"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pe"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "le"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "publicId"

    iget-object v5, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "show_option_menu"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "smartToolBar"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "showProgress"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "rt"

    const-string/jumbo v2, "false"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "dt"

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "{\"access_channel\":\"APP\",\"term_equip_type\":\"UNKNOW\",\"app_type\":\"ALIPAYPUBLIC\",\"term_tech\":\"UNKNOW\"}"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"extern_channel\":\"alipay\",\"create_channel\":\"AC0003000000030000\",\"public_id\":\"PUBLICID\",\"token\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\",\"create_access_channel\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\"pay_access_channel\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "PUBLICID"

    iget-object v3, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sc"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "bizScenario"

    const-string/jumbo v2, "ppchat"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    if-eqz v0, :cond_3

    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v0, "tel"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v1, v4}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tel:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startExtActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-static {v1, v4}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_8
    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 67
    :cond_9
    const-string/jumbo v1, ""

    goto/16 :goto_2

    .line 69
    :cond_a
    iget-object v9, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->b:Ljava/lang/String;

    iget-object v10, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    iget-object v11, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->e:Ljava/lang/String;

    iget-object v12, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->e:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;

    const-string/jumbo v1, "UC-FWC-150604-14"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "public"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "merchantView"

    const-string/jumbo v6, "menu2"

    const-string/jumbo v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->i:Ljava/lang/String;

    iput-object v8, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->j:Ljava/lang/String;

    iput-object v10, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "^"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/c/a;->a(Lcom/alipay/mobile/publicsvc/common/proguard/c/b;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, ""

    goto :goto_5

    :cond_c
    move v0, v2

    goto/16 :goto_4
.end method

.method public onPopMenu(Lcom/alipay/publiccore/core/model/account/ButtonObject;)V
    .locals 13

    .prologue
    .line 76
    iget-object v8, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->b:Ljava/lang/String;

    .line 77
    iget-object v9, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    .line 78
    iget-object v10, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    .line 79
    iget-object v11, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->e:Ljava/lang/String;

    iget-object v12, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->e:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;

    const-string/jumbo v1, "UC-FWC-150604-15"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "public"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "merchantView"

    const-string/jumbo v6, "menuTo2"

    const-string/jumbo v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->i:Ljava/lang/String;

    iput-object v9, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->j:Ljava/lang/String;

    iput-object v10, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "^"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/c/a;->a(Lcom/alipay/mobile/publicsvc/common/proguard/c/b;)V

    .line 80
    return-void

    .line 76
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public onSwitchChat()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 84
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->f:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->setMenuEnable()V

    .line 89
    iget-object v8, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;->e:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;

    const-string/jumbo v1, "UC-FWC-150604-12"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "20000042"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "merchantView"

    const-string/jumbo v6, "menuBtn"

    const-string/jumbo v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "menuBtn"

    iput-object v1, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->f:Ljava/lang/String;

    iput-object v8, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->i:Ljava/lang/String;

    iput-object v9, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/c/a;->a(Lcom/alipay/mobile/publicsvc/common/proguard/c/b;)V

    .line 90
    const-string/jumbo v0, "menubar"

    const-string/jumbo v1, "set menu bar enable"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
