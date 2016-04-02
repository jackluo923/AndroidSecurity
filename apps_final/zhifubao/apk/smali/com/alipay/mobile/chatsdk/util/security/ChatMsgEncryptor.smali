.class public Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;
.super Ljava/lang/Object;
.source "ChatMsgEncryptor.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final PWD_KEY:Ljava/lang/String; = "chatdbmsgv01_&*jasdfm,dhf"

.field private static volatile dynamicDataStore:Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;

.field private static volatile isSecretSoInited:Z

.field private static volatile tkey:Ljava/lang/String;

.field private static volatile utilWX:Lcom/taobao/securityjni/wraper/UtilWXWraper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    const-class v1, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->LOGTAG:Ljava/lang/String;

    .line 16
    sput-object v2, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->dynamicDataStore:Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->isSecretSoInited:Z

    .line 22
    sput-object v2, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->tkey:Ljava/lang/String;

    .line 24
    sput-object v2, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->utilWX:Lcom/taobao/securityjni/wraper/UtilWXWraper;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :goto_0
    return-object p0

    .line 81
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->init()V

    .line 82
    sget-object v1, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->utilWX:Lcom/taobao/securityjni/wraper/UtilWXWraper;

    invoke-virtual {v1, p0}, Lcom/taobao/securityjni/wraper/UtilWXWraper;->Get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object p0, v0

    .line 87
    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    sget-object v2, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "decrypt:[ encrypted="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 85
    const-string/jumbo v4, " ][ e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v2, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static decrypt2(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 112
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->getDbSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    sget-object v2, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "decrypt:[ encrypted="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 115
    const-string/jumbo v4, " ][ e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v2, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    :goto_0
    return-object p0

    .line 59
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->init()V

    .line 61
    sget-object v1, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->utilWX:Lcom/taobao/securityjni/wraper/UtilWXWraper;

    invoke-virtual {v1, p0}, Lcom/taobao/securityjni/wraper/UtilWXWraper;->Put(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object p0, v0

    .line 66
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    sget-object v2, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "encrypt:[ source="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v2, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static encrypt2(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->getDbSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    sget-object v2, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "encrypt:[ source="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v2, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getDbSecretKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->init()V

    .line 126
    sget-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->tkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-class v1, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->tkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->dynamicDataStore:Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;

    const-string/jumbo v2, "chatdbmsgv01_&*jasdfm,dhf"

    invoke-virtual {v0, v2}, Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    sput-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->tkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/alipay/mobile/chatsdk/util/RandomUtils;->getUUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->putDbSecretKey(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->dynamicDataStore:Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;

    const-string/jumbo v2, "chatdbmsgv01_&*jasdfm,dhf"

    invoke-virtual {v0, v2}, Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->tkey:Ljava/lang/String;

    .line 135
    sget-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getDbSecretKey:[ secretKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    sget-object v3, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->tkey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    sget-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->tkey:Ljava/lang/String;

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized init()V
    .locals 3

    .prologue
    .line 30
    const-class v1, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->isSecretSoInited:Z

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/taobao/securityjni/wraper/UtilWXWraper;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 34
    invoke-direct {v0, v2}, Lcom/taobao/securityjni/wraper/UtilWXWraper;-><init>(Landroid/content/ContextWrapper;)V

    sput-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->utilWX:Lcom/taobao/securityjni/wraper/UtilWXWraper;

    .line 37
    new-instance v0, Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;

    .line 38
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 37
    invoke-direct {v0, v2}, Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;-><init>(Landroid/content/ContextWrapper;)V

    sput-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->dynamicDataStore:Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;

    .line 41
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->isSecretSoInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v1

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static putDbSecretKey(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 146
    sget-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "putDbSecretKey:[ secretKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->dynamicDataStore:Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;

    const-string/jumbo v1, "chatdbmsgv01_&*jasdfm,dhf"

    invoke-virtual {v0, v1, p0}, Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method
