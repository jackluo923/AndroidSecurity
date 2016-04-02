.class public Lcom/alipay/android/launcher/TabLauncherApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "TabLauncherApp.java"


# static fields
.field public static final ACTIONTYPE:Ljava/lang/String; = "actionType"

.field public static final TAG:Ljava/lang/String; = "TabLauncherApp"


# instance fields
.field private mTabId:Ljava/lang/String;

.field private paramBundle:Landroid/os/Bundle;

.field private tabMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    .line 34
    const-string/jumbo v0, "20000002"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->mTabId:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->tabMaps:Ljava/util/Map;

    .line 39
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->tabMaps:Ljava/util/Map;

    const-string/jumbo v1, "0"

    const-string/jumbo v2, "20000002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->tabMaps:Ljava/util/Map;

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "20000238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->tabMaps:Ljava/util/Map;

    const-string/jumbo v1, "2"

    const-string/jumbo v2, "20000217"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->tabMaps:Ljava/util/Map;

    const-string/jumbo v1, "3"

    const-string/jumbo v2, "20000004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->mTabId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "20000002"

    .line 154
    :goto_0
    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->tabMaps:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncherApp;->mTabId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    if-eqz v0, :cond_1

    .line 150
    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->mTabId:Ljava/lang/String;

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->mTabId:Ljava/lang/String;

    goto :goto_0
.end method

.method public handlParams(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncherApp;->paramBundle:Landroid/os/Bundle;

    .line 136
    const-string/jumbo v0, "actionType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->mTabId:Ljava/lang/String;

    .line 140
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/TabLauncherApp;->handlParams(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/TabLauncherApp;->handlParams(Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->paramBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncherApp;->onStart()V

    .line 126
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alipay/android/launcher/TabLauncher;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncherApp;->paramBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncherApp;->paramBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "externParams"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    const-string/jumbo v3, "appId"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    const-string/jumbo v4, "actionType"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    const-string/jumbo v5, "startApp"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "20000001"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    iput-object v4, p0, Lcom/alipay/android/launcher/TabLauncherApp;->mTabId:Ljava/lang/String;

    .line 76
    :cond_0
    const-string/jumbo v4, "startApp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "20000252"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const-string/jumbo v2, "20000217"

    iput-object v2, p0, Lcom/alipay/android/launcher/TabLauncherApp;->mTabId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->paramBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->paramBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "guide"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alipay/android/launcher/guide/StartGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncherApp;->paramBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncherApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 112
    :goto_1
    return-void

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->paramBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "20000003"

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncherApp;->paramBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "actionType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->paramBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncherApp;->paramBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 101
    :cond_4
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "TabLauncherApp"

    const-string/jumbo v3, "startActivity TabLauncher"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncherApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->restoreState(Landroid/content/SharedPreferences;)V

    .line 171
    const-string/jumbo v0, "tablauncher.tabid"

    const-string/jumbo v1, "20000002"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->mTabId:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->saveState(Landroid/content/SharedPreferences$Editor;)V

    .line 165
    const-string/jumbo v0, "tablauncher.tabid"

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncherApp;->mTabId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    return-void
.end method

.method public setTabId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncherApp;->mTabId:Ljava/lang/String;

    .line 160
    return-void
.end method
