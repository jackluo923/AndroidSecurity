.class public Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;
.super Ljava/lang/Object;
.source "ShortcutBadgeManager.java"


# static fields
.field private static final a:Ljava/util/Map;
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

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    .line 26
    const-class v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->b:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "org.adw.launcher"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.AdwHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "org.adwfreak.launcher"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.AdwHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.android.launcher2"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.Android2HomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.Android2HomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.android.launcher"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.AndroidHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.anddoes.launcher"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.ApexHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.lge.launcher"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.LGHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.lge.launcher2"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.LGHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.sec.android.app.launcher"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.LGHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.sec.android.app.twlauncher"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.LGHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.htc.launcher"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.NewHtcHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.teslacoilsw.launcher"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.NovaHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.majeur.launcher"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.SolidHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.sonyericsson.home"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.SonyHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.anddoes.launcher"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.SonyHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.cyanogenmod.trebuchet"

    const-string/jumbo v2, "com.alipay.mobile.mpass.badge.shortcut.impl.SonyHomeBadger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 124
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->c:Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->c:Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;

    .line 153
    :goto_0
    return-object v0

    .line 131
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "meizu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 132
    goto :goto_0

    .line 135
    :cond_1
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    :try_start_0
    const-class v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    :goto_1
    if-eqz v1, :cond_2

    .line 145
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 146
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;

    sput-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->c:Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :cond_2
    :goto_2
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->c:Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 147
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static declared-synchronized a(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 94
    const-class v2, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;

    move-result-object v3

    .line 95
    if-nez v3, :cond_0

    .line 96
    new-instance v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ShortcutBadger is currently not support the home launcher package "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 100
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 102
    if-eqz v0, :cond_2

    .line 103
    const-string/jumbo v4, "badge_disable_launcher"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const-string/jumbo v0, "badge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "count"

    const/4 v4, -0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 106
    const-string/jumbo v0, "badge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;->executeBadge(I)V

    .line 109
    :cond_1
    new-instance v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ShortcutBadger is currently disable the home launcher package "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_2
    const-string/jumbo v0, "badge"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v4, "count"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    if-ltz p1, :cond_3

    const/16 v0, 0x3e7

    if-le p1, v0, :cond_4

    :cond_3
    move p1, v1

    .line 120
    :cond_4
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;->executeBadge(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    monitor-exit v2

    return-void
.end method

.method public static addBadge(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addBadge, badgeCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-lez p1, :cond_0

    .line 83
    const-string/jumbo v0, "badge"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p1

    .line 85
    :try_start_0
    invoke-static {p0, v0}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    sget-object v1, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->d:Ljava/lang/String;

    .line 68
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 67
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 68
    sput-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setBadge(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setupBadge, badgeCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    sget-object v1, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
