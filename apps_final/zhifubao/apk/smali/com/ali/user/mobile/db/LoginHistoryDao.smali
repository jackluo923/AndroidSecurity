.class public Lcom/ali/user/mobile/db/LoginHistoryDao;
.super Ljava/lang/Object;
.source "LoginHistoryDao.java"

# interfaces
.implements Lcom/ali/user/mobile/login/LoginHistoryManager;


# static fields
.field private static d:Lcom/ali/user/mobile/db/LoginHistoryDao;


# instance fields
.field private a:Landroid/content/ContextWrapper;

.field private b:Lcom/ali/user/mobile/db/LoginHistoryDBHelper;

.field private c:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/ali/user/mobile/login/LoginHistory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    :try_start_0
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    .line 33
    invoke-static {p1}, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->getLoginHistoryDBHelper(Landroid/content/Context;)Lcom/ali/user/mobile/db/LoginHistoryDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->b:Lcom/ali/user/mobile/db/LoginHistoryDBHelper;

    .line 34
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->b:Lcom/ali/user/mobile/db/LoginHistoryDBHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->getLoginHistoryDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->c:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string/jumbo v1, "LoginHistoryDao"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Lcom/ali/user/mobile/login/LoginHistory;)Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    const-string/jumbo v0, "LoginHistoryDao"

    const-string/jumbo v1, "loginHistory\u5fc5\u8981\u4fe1\u606f\u4e0d\u5168"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/ali/user/mobile/db/LoginHistoryDao;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/ali/user/mobile/db/LoginHistoryDao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/db/LoginHistoryDao;->d:Lcom/ali/user/mobile/db/LoginHistoryDao;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/ali/user/mobile/db/LoginHistoryDao;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/db/LoginHistoryDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/db/LoginHistoryDao;->d:Lcom/ali/user/mobile/db/LoginHistoryDao;

    .line 44
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/db/LoginHistoryDao;->d:Lcom/ali/user/mobile/db/LoginHistoryDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/mobile/db/LoginHistoryDao;->d:Lcom/ali/user/mobile/db/LoginHistoryDao;

    .line 237
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->b:Lcom/ali/user/mobile/db/LoginHistoryDBHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->close()V

    .line 238
    return-void
.end method

.method public deleteLoginHistory(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 141
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo p2, "alipay"

    .line 146
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    invoke-static {v0, p2}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    invoke-static {v1, p1}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "loginType"

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "loginAccount"

    invoke-virtual {v0, v3, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 150
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 154
    :goto_0
    return v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string/jumbo v1, "LoginHistoryDao"

    const-string/jumbo v2, "\u5220\u9664\u8d26\u6237\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteLoginHistoryByUserId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 159
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string/jumbo p2, "alipay"

    .line 164
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    invoke-static {v0, p2}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    invoke-static {v1, p1}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "loginType"

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 168
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 172
    :goto_0
    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string/jumbo v1, "LoginHistoryDao"

    const-string/jumbo v2, "\u5220\u9664\u8d26\u6237\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/login/LoginHistory;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x5

    const/4 v3, 0x0

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string/jumbo p1, "alipay"

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    invoke-static {v1, p1}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v2

    .line 136
    :goto_0
    return-object v0

    .line 117
    :cond_1
    iget-object v4, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string/jumbo v6, "loginType"

    invoke-virtual {v5, v6, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 119
    const-string/jumbo v1, "loginTime"

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 120
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v4

    .line 121
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 122
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_3

    move v1, v0

    .line 123
    :goto_1
    if-lt v3, v1, :cond_4

    .line 131
    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_2
    :goto_2
    move-object v0, v2

    .line 136
    goto :goto_0

    .line 122
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 124
    :cond_4
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    .line 125
    iget-object v5, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v6, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/ali/user/mobile/db/DataEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    .line 126
    iget-object v5, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v6, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/ali/user/mobile/db/DataEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    .line 127
    iget-object v5, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v6, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/ali/user/mobile/db/DataEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    .line 128
    iget-object v5, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v6, v0, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/ali/user/mobile/db/DataEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    .line 129
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string/jumbo v1, "LoginHistoryDao"

    const-string/jumbo v3, "\u83b7\u53d6\u5386\u53f2\u8d26\u6237\u5931\u8d25"

    invoke-static {v1, v3, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getLatestHistory()Lcom/ali/user/mobile/login/LoginHistory;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginHistory(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/login/LoginHistory;
    .locals 5

    .prologue
    .line 204
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string/jumbo p2, "alipay"

    .line 209
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    invoke-static {v0, p2}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    invoke-static {v1, p1}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "loginType"

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "loginAccount"

    invoke-virtual {v0, v3, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 213
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 215
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    .line 216
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ali/user/mobile/db/DataEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ali/user/mobile/db/DataEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    .line 218
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ali/user/mobile/db/DataEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ali/user/mobile/db/DataEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    .line 220
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-object v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string/jumbo v1, "LoginHistoryDao"

    const-string/jumbo v2, "\u83b7\u53d6\u8d26\u6237\u4fe1\u606f\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoginHistoryByUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/login/LoginHistory;
    .locals 5

    .prologue
    .line 177
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo p2, "alipay"

    .line 182
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    invoke-static {v0, p2}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    invoke-static {v1, p1}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "loginType"

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 186
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 188
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    .line 189
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ali/user/mobile/db/DataEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    .line 190
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ali/user/mobile/db/DataEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    .line 191
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ali/user/mobile/db/DataEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    .line 192
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ali/user/mobile/db/DataEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    .line 193
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string/jumbo v1, "LoginHistoryDao"

    const-string/jumbo v2, "\u83b7\u53d6\u8d26\u6237\u4fe1\u606f\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveHistory(Lcom/ali/user/mobile/login/LoginHistory;)V
    .locals 3

    .prologue
    .line 49
    invoke-static {p1}, Lcom/ali/user/mobile/db/LoginHistoryDao;->a(Lcom/ali/user/mobile/login/LoginHistory;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v0, Lcom/ali/user/mobile/login/LoginHistory;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginHistory;-><init>()V

    .line 54
    iget-boolean v1, p1, Lcom/ali/user/mobile/login/LoginHistory;->faceAuth:Z

    iput-boolean v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->faceAuth:Z

    .line 55
    iget v1, p1, Lcom/ali/user/mobile/login/LoginHistory;->faceAuthFailCount:I

    iput v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->faceAuthFailCount:I

    .line 56
    iget-wide v1, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginTime:J

    iput-wide v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginTime:J

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    .line 63
    invoke-static {v0}, Lcom/ali/user/mobile/db/LoginHistoryDao;->a(Lcom/ali/user/mobile/login/LoginHistory;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string/jumbo v1, "LoginHistoryDao"

    const-string/jumbo v2, "\u4fdd\u5b58\u5386\u53f2\u8d26\u6237\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveHistoryNecessary(Lcom/ali/user/mobile/login/LoginHistory;)V
    .locals 8

    .prologue
    .line 73
    invoke-static {p1}, Lcom/ali/user/mobile/db/LoginHistoryDao;->a(Lcom/ali/user/mobile/login/LoginHistory;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v1, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->a:Landroid/content/ContextWrapper;

    iget-object v4, p1, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ali/user/mobile/db/DataEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 87
    const-string/jumbo v5, "loginAccount"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "userId"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "loginTime"

    iget-wide v5, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    const-string/jumbo v0, "loginType"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "loginPortraitUrl"

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDao;->b:Lcom/ali/user/mobile/db/LoginHistoryDBHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    iget-object v5, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/ali/user/mobile/db/LoginHistoryDao;->getLoginHistoryByUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/login/LoginHistory;

    move-result-object v2

    .line 95
    if-nez v2, :cond_2

    .line 96
    const-string/jumbo v1, "loginHistory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string/jumbo v1, "LoginHistoryOperater"

    const-string/jumbo v2, "exception when saveHistory"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    :cond_2
    :try_start_1
    const-string/jumbo v2, "loginHistory"

    const-string/jumbo v5, "userId = ? and loginType = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v1, v6, v3

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
