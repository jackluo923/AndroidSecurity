.class public Lcom/alipay/android/phone/nfd/nfdservice/api/utils/UserInfoUtils;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_LOGIN_USER_IDS:Ljava/lang/String; = "login_user_ids"

.field private static final TAG:Ljava/lang/String; = "UserInfoUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;

    iget-object v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;->userId:Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;->currentLogin:Z

    move v0, v1

    goto :goto_1

    :cond_1
    iput-boolean v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;->currentLogin:Z

    goto :goto_0
.end method

.method public static final addCurrentLoginUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "login_user_ids"

    invoke-static {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NFDSettingUtil;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;->currentLogin:Z

    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;->sequence:I

    iput-object p1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;->userId:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserListModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserListModel;-><init>()V

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserListModel;->loginUserModels:Ljava/util/List;

    const-string/jumbo v1, "login_user_ids"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NFDSettingUtil;->saveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserListModel;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserListModel;

    iget-object v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserListModel;->loginUserModels:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/UserInfoUtils;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;

    invoke-direct {v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;->currentLogin:Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;->sequence:I

    iput-object p1, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;->userId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "login_user_ids"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NFDSettingUtil;->saveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "UserInfoUtils"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final getAll(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "login_user_ids"

    invoke-static {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NFDSettingUtil;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserListModel;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserListModel;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserListModel;->loginUserModels:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "UserInfoUtils"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getCurrentLoginUserModel(Landroid/content/Context;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "login_user_ids"

    invoke-static {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NFDSettingUtil;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-class v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserListModel;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserListModel;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserListModel;->loginUserModels:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;

    iget-boolean v3, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/LoginUserModel;->currentLogin:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "UserInfoUtils"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static sendBroadcastEnterForeGround(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.eg.android.AlipayGphone.nfd.action.foreground.enter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static sendBroadcastExitForeGround(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.eg.android.AlipayGphone.nfd.action.foreground.exit"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
