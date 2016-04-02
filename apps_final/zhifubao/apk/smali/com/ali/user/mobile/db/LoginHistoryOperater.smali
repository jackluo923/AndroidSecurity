.class public Lcom/ali/user/mobile/db/LoginHistoryOperater;
.super Ljava/lang/Object;
.source "LoginHistoryOperater.java"

# interfaces
.implements Lcom/ali/user/mobile/login/LoginHistoryManager;


# instance fields
.field private a:Lcom/ali/user/mobile/db/LoginHistoryDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/ali/user/mobile/db/LoginHistoryDao;->get(Landroid/content/Context;)Lcom/ali/user/mobile/db/LoginHistoryDao;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryOperater;->a:Lcom/ali/user/mobile/db/LoginHistoryDao;

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryOperater;->a:Lcom/ali/user/mobile/db/LoginHistoryDao;

    invoke-virtual {v0}, Lcom/ali/user/mobile/db/LoginHistoryDao;->close()V

    .line 187
    return-void
.end method

.method public deleteLoginHistory(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryOperater;->a:Lcom/ali/user/mobile/db/LoginHistoryDao;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/db/LoginHistoryDao;->deleteLoginHistory(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public deleteLoginHistoryByUserId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryOperater;->a:Lcom/ali/user/mobile/db/LoginHistoryDao;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/db/LoginHistoryDao;->deleteLoginHistoryByUserId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHistoryByAccount(Lcom/ali/user/mobile/login/LoginHistory;)Lcom/ali/user/mobile/login/LoginHistory;
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryOperater;->a:Lcom/ali/user/mobile/db/LoginHistoryDao;

    iget-object v1, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/db/LoginHistoryDao;->getLoginHistory(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/login/LoginHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 69
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryOperater;->a:Lcom/ali/user/mobile/db/LoginHistoryDao;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/db/LoginHistoryDao;->getHistoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLatestHistory()Lcom/ali/user/mobile/login/LoginHistory;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/db/LoginHistoryOperater;->getHistoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 175
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    .line 178
    :cond_0
    return-object v0
.end method

.method public getLoginHistory(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/login/LoginHistory;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryOperater;->a:Lcom/ali/user/mobile/db/LoginHistoryDao;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/db/LoginHistoryDao;->getLoginHistory(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/login/LoginHistory;

    move-result-object v0

    return-object v0
.end method

.method public getLoginHistoryByUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/login/LoginHistory;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryOperater;->a:Lcom/ali/user/mobile/db/LoginHistoryDao;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/db/LoginHistoryDao;->getLoginHistoryByUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/login/LoginHistory;

    move-result-object v0

    return-object v0
.end method

.method public saveHistory(Lcom/ali/user/mobile/login/LoginHistory;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryOperater;->a:Lcom/ali/user/mobile/db/LoginHistoryDao;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/db/LoginHistoryDao;->saveHistory(Lcom/ali/user/mobile/login/LoginHistory;)V

    .line 65
    return-void
.end method

.method public saveHistoryNecessary(Lcom/ali/user/mobile/login/LoginHistory;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryOperater;->a:Lcom/ali/user/mobile/db/LoginHistoryDao;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/db/LoginHistoryDao;->saveHistoryNecessary(Lcom/ali/user/mobile/login/LoginHistory;)V

    .line 236
    return-void
.end method

.method public updateHistory(Lcom/ali/user/mobile/login/LoginHistory;)Z
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/db/LoginHistoryOperater;->saveHistory(Lcom/ali/user/mobile/login/LoginHistory;)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method
