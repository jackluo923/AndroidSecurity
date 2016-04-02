.class public Lcom/ali/user/mobile/context/AliuserLoginContext;
.super Ljava/lang/Object;
.source "AliuserLoginContext.java"


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static c:Z

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static g:Lcom/ali/user/mobile/gw/GWUrlSetter;

.field private static h:Lcom/ali/user/mobile/rsa/RSAHandler;

.field private static i:Lcom/ali/user/mobile/login/dex/DexHandler;

.field private static j:Lcom/ali/user/mobile/service/UserLoginService;

.field private static k:Lcom/ali/user/mobile/service/UserFaceLoginService;

.field private static l:Lcom/ali/user/mobile/service/UserRegisterService;

.field private static m:Lcom/ali/user/mobile/service/UrlFetchService;

.field private static n:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/ali/user/mobile/context/LoginHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Lcom/ali/user/mobile/login/OnLoginCaller;

.field private static p:Landroid/os/Bundle;

.field private static q:Z

.field private static r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->a:Z

    .line 67
    sput-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->c:Z

    .line 231
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->n:Ljava/util/Stack;

    .line 285
    sput-boolean v1, Lcom/ali/user/mobile/context/AliuserLoginContext;->q:Z

    .line 295
    sput-boolean v1, Lcom/ali/user/mobile/context/AliuserLoginContext;->r:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 101
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "aliuser.login.activity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "AliuserLoginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u914d\u7f6e\u7684\u767b\u5f55activity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v0, "com.ali.user.mobile.login.ui.UserLoginActivity"

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    .line 111
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string/jumbo v1, "AliuserLoginContext"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    const-string/jumbo v0, "AliuserLoginContext"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->q:Z

    .line 308
    sput-object v2, Lcom/ali/user/mobile/context/AliuserLoginContext;->e:Ljava/lang/Class;

    .line 309
    sput-object v2, Lcom/ali/user/mobile/context/AliuserLoginContext;->f:Ljava/lang/Class;

    .line 310
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 311
    return-void
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getDexHandler()Lcom/ali/user/mobile/login/dex/DexHandler;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->i:Lcom/ali/user/mobile/login/dex/DexHandler;

    return-object v0
.end method

.method public static getGwUrlSetter()Lcom/ali/user/mobile/gw/GWUrlSetter;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->g:Lcom/ali/user/mobile/gw/GWUrlSetter;

    return-object v0
.end method

.method public static getLoginActivityClazz()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 120
    const-string/jumbo v0, "AliuserLoginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8bbe\u7f6e\u7684\u767b\u5f55clazz:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ali/user/mobile/context/AliuserLoginContext;->e:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public static getLoginCaller()Lcom/ali/user/mobile/login/OnLoginCaller;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->o:Lcom/ali/user/mobile/login/OnLoginCaller;

    return-object v0
.end method

.method public static getLoginFragmentClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->f:Ljava/lang/Class;

    return-object v0
.end method

.method public static getLoginHandler()Lcom/ali/user/mobile/context/LoginHandler;
    .locals 4

    .prologue
    .line 234
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    .line 237
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/context/LoginHandler;

    .line 238
    const-string/jumbo v1, "AliuserLoginContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLoginHandler:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLoginHistoryManager(Landroid/content/Context;)Lcom/ali/user/mobile/login/LoginHistoryManager;
    .locals 1

    .prologue
    .line 272
    invoke-static {p0}, Lcom/ali/user/mobile/db/LoginHistoryDao;->get(Landroid/content/Context;)Lcom/ali/user/mobile/db/LoginHistoryDao;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginActivityClazz()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginActivityClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    :goto_0
    return-object v0

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getRsaHandler()Lcom/ali/user/mobile/rsa/RSAHandler;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->h:Lcom/ali/user/mobile/rsa/RSAHandler;

    return-object v0
.end method

.method public static getUrlFetchService()Lcom/ali/user/mobile/service/UrlFetchService;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->m:Lcom/ali/user/mobile/service/UrlFetchService;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/ali/user/mobile/service/impl/UrlFetchServiceImpl;

    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/service/impl/UrlFetchServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->m:Lcom/ali/user/mobile/service/UrlFetchService;

    .line 225
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->m:Lcom/ali/user/mobile/service/UrlFetchService;

    return-object v0
.end method

.method public static getUserFaceLoginService()Lcom/ali/user/mobile/service/UserFaceLoginService;
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->k:Lcom/ali/user/mobile/service/UserFaceLoginService;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;

    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->k:Lcom/ali/user/mobile/service/UserFaceLoginService;

    .line 201
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->k:Lcom/ali/user/mobile/service/UserFaceLoginService;

    return-object v0
.end method

.method public static getUserLoginService()Lcom/ali/user/mobile/service/UserLoginService;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->j:Lcom/ali/user/mobile/service/UserLoginService;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;

    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->j:Lcom/ali/user/mobile/service/UserLoginService;

    .line 189
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->j:Lcom/ali/user/mobile/service/UserLoginService;

    return-object v0
.end method

.method public static getUserRegisterService()Lcom/ali/user/mobile/service/UserRegisterService;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->l:Lcom/ali/user/mobile/service/UserRegisterService;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;

    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->l:Lcom/ali/user/mobile/service/UserRegisterService;

    .line 213
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->l:Lcom/ali/user/mobile/service/UserRegisterService;

    return-object v0
.end method

.method public static getsConfigParam()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->p:Landroid/os/Bundle;

    return-object v0
.end method

.method public static isBizFinish()Z
    .locals 1

    .prologue
    .line 298
    sget-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->r:Z

    return v0
.end method

.method public static isComeBack()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->a:Z

    return v0
.end method

.method public static isResetCookie()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->c:Z

    return v0
.end method

.method public static isSaveHistory()Z
    .locals 1

    .prologue
    .line 288
    sget-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->q:Z

    return v0
.end method

.method public static popLoginHandler()Lcom/ali/user/mobile/context/LoginHandler;
    .locals 4

    .prologue
    .line 244
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    .line 247
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/context/LoginHandler;

    .line 248
    const-string/jumbo v1, "AliuserLoginContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "popLoginHandler:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static pushLoginHandler(Lcom/ali/user/mobile/context/LoginHandler;)V
    .locals 3

    .prologue
    .line 254
    const-string/jumbo v0, "AliuserLoginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pushLoginHandler:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->n:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method public static setBizFinish(Z)V
    .locals 0

    .prologue
    .line 302
    sput-boolean p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->r:Z

    .line 303
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->b:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static setComeBack(Z)V
    .locals 3

    .prologue
    .line 44
    const-string/jumbo v0, "AliuserLoginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u767b\u5f55\u9875\u9762\u662f\u5426\u53ef\u4ee5\u540e\u9000\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sput-boolean p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->a:Z

    .line 46
    return-void
.end method

.method public static setDexHandler(Lcom/ali/user/mobile/login/dex/DexHandler;)V
    .locals 0

    .prologue
    .line 177
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->i:Lcom/ali/user/mobile/login/dex/DexHandler;

    .line 178
    return-void
.end method

.method public static setGwUrlSetter(Lcom/ali/user/mobile/gw/GWUrlSetter;)V
    .locals 0

    .prologue
    .line 151
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->g:Lcom/ali/user/mobile/gw/GWUrlSetter;

    .line 152
    return-void
.end method

.method public static setLoginActivity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public static setLoginActivityClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 125
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->e:Ljava/lang/Class;

    .line 126
    return-void
.end method

.method public static setLoginCaller(Lcom/ali/user/mobile/login/OnLoginCaller;)V
    .locals 0

    .prologue
    .line 268
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->o:Lcom/ali/user/mobile/login/OnLoginCaller;

    .line 269
    return-void
.end method

.method public static setLoginFragmentClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 138
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->f:Ljava/lang/Class;

    .line 139
    return-void
.end method

.method public static setResetCookie(Z)V
    .locals 3

    .prologue
    .line 74
    const-string/jumbo v0, "AliuserLoginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u767b\u5f55rpc\u662f\u5426\u9700\u8981\u6e05cookie\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sput-boolean p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->c:Z

    .line 76
    return-void
.end method

.method public static setRsaHandler(Lcom/ali/user/mobile/rsa/RSAHandler;)V
    .locals 0

    .prologue
    .line 160
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->h:Lcom/ali/user/mobile/rsa/RSAHandler;

    .line 161
    return-void
.end method

.method public static setSaveHistory(Z)V
    .locals 0

    .prologue
    .line 292
    sput-boolean p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->q:Z

    .line 293
    return-void
.end method

.method public static setsConfigParam(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 282
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->p:Landroid/os/Bundle;

    .line 283
    return-void
.end method
