.class public Lcom/appyet/wrapper/AccountManagerWrapper;
.super Ljava/lang/Object;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mApplicationContext:Lcom/appyet/context/ApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "android.accounts.AccountManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/wrapper/AccountManagerWrapper;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    iget-object v0, p0, Lcom/appyet/wrapper/AccountManagerWrapper;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/wrapper/AccountManagerWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method public static checkAvailable()V
    .locals 0

    return-void
.end method


# virtual methods
.method public Authenticate(Landroid/app/Activity;Ljava/lang/String;Lcom/appyet/a/c;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/appyet/a/c",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appyet/wrapper/AccountManagerWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    move v2, v7

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v1, v3, v2

    iget-object v5, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    if-nez v1, :cond_1

    move v0, v7

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/wrapper/AccountManagerWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "reader"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/appyet/a/c;->a:Ljava/lang/Object;

    new-instance v2, Lcom/appyet/a/d;

    invoke-direct {v2}, Lcom/appyet/a/d;-><init>()V

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "GoogleLogin auth="

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/appyet/a/c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/appyet/a/d;->g:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "http://www.google.com/reader/api/0/token"

    iput-object v1, v2, Lcom/appyet/a/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/wrapper/AccountManagerWrapper;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v1, v2}, Lcom/appyet/manager/bl;->a(Lcom/appyet/a/d;)Lcom/appyet/a/f;

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget v2, v1, Lcom/appyet/a/f;->f:I

    const/16 v3, 0x191

    if-eq v2, v3, :cond_2

    iget v1, v1, Lcom/appyet/a/f;->f:I

    const/16 v2, 0x193

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/appyet/wrapper/AccountManagerWrapper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v3, "com.google"

    iget-object v1, p3, Lcom/appyet/a/c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/appyet/a/c;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    move v0, v7

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public getGoogleAccounts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appyet/a/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/wrapper/AccountManagerWrapper;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "@gmail.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "@googlemail.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    new-instance v3, Lcom/appyet/a/b;

    invoke-direct {v3}, Lcom/appyet/a/b;-><init>()V

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, v3, Lcom/appyet/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method
