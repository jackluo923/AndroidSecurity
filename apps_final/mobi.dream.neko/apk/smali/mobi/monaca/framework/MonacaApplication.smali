.class public Lmobi/monaca/framework/MonacaApplication;
.super Landroid/app/Application;
.source "MonacaApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static instance:Landroid/content/Context;

.field protected static menuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field protected static pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobi/monaca/framework/MonacaPageActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected static settings:Lmobi/monaca/framework/InternalSettings;


# instance fields
.field protected appJsonSetting:Lmobi/monaca/framework/AppJsonSetting;

.field protected enablesBootloader:Z

.field private monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

.field private registeredReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    const-class v0, Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/MonacaApplication;->TAG:Ljava/lang/String;

    .line 49
    sput-object v1, Lmobi/monaca/framework/MonacaApplication;->pages:Ljava/util/List;

    .line 50
    sput-object v1, Lmobi/monaca/framework/MonacaApplication;->menuMap:Ljava/util/Map;

    .line 51
    sput-object v1, Lmobi/monaca/framework/MonacaApplication;->instance:Landroid/content/Context;

    .line 53
    sput-object v1, Lmobi/monaca/framework/MonacaApplication;->settings:Lmobi/monaca/framework/InternalSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/MonacaApplication;->enablesBootloader:Z

    return-void
.end method

.method static synthetic access$000(Lmobi/monaca/framework/MonacaApplication;)Lmobi/monaca/framework/nativeui/component/SpinnerDialog;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/MonacaApplication;

    .prologue
    .line 47
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    return-object v0
.end method

.method static synthetic access$002(Lmobi/monaca/framework/MonacaApplication;Lmobi/monaca/framework/nativeui/component/SpinnerDialog;)Lmobi/monaca/framework/nativeui/component/SpinnerDialog;
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/MonacaApplication;
    .param p1, "x1"    # Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    .prologue
    .line 47
    iput-object p1, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    return-object p1
.end method

.method public static addPage(Lmobi/monaca/framework/MonacaPageActivity;)V
    .locals 1
    .param p0, "page"    # Lmobi/monaca/framework/MonacaPageActivity;

    .prologue
    .line 263
    sget-object v0, Lmobi/monaca/framework/MonacaApplication;->pages:Ljava/util/List;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/monaca/framework/MonacaApplication;->pages:Ljava/util/List;

    .line 267
    :cond_0
    sget-object v0, Lmobi/monaca/framework/MonacaApplication;->pages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public static findMenuRepresentation(Ljava/lang/String;)Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 279
    sget-object v0, Lmobi/monaca/framework/MonacaApplication;->menuMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 280
    sget-object v0, Lmobi/monaca/framework/MonacaApplication;->menuMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/monaca/framework/MonacaApplication;->menuMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;

    .line 282
    :goto_0
    return-object v0

    .line 280
    :cond_0
    sget-object v0, Lmobi/monaca/framework/MonacaApplication;->menuMap:Ljava/util/Map;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->uikey_menu_default:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;

    goto :goto_0

    .line 282
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmobi/monaca/framework/MonacaPageActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    sget-object v0, Lmobi/monaca/framework/MonacaApplication;->pages:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/monaca/framework/MonacaApplication;->pages:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static getStringFromResource(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 286
    sget-object v0, Lmobi/monaca/framework/MonacaApplication;->instance:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removePage(Lmobi/monaca/framework/MonacaPageActivity;)V
    .locals 1
    .param p0, "page"    # Lmobi/monaca/framework/MonacaPageActivity;

    .prologue
    .line 272
    sget-object v0, Lmobi/monaca/framework/MonacaApplication;->pages:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lmobi/monaca/framework/MonacaApplication;->pages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    return-void
.end method


# virtual methods
.method public allowAccess(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 229
    sget v4, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual {p0, v4}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 233
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 239
    sget v4, Lmobi/monaca/framework/psedo/R$string;->asset_url:I

    invoke-virtual {p0, v4}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return v2

    .line 234
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lmobi/monaca/framework/MonacaApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmobi/monaca/framework/util/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 236
    goto :goto_0

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->relative_shared_prefs_path:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 249
    :cond_2
    sget v4, Lmobi/monaca/framework/psedo/R$string;->sd_dir_url:I

    invoke-virtual {p0, v4}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 255
    goto/16 :goto_0
.end method

.method protected createMenuMap()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lmobi/monaca/framework/psedo/R$string;->appmenu_url:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentationBuilder;->buildFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/MonacaApplication;->menuMap:Ljava/util/Map;

    .line 163
    return-void
.end method

.method public dismissMonacaSpinnerDialog()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->dismiss()V

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    .line 206
    :cond_1
    return-void
.end method

.method public enablesBootloader()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lmobi/monaca/framework/MonacaApplication;->enablesBootloader:Z

    return v0
.end method

.method public getAppJsonSetting()Lmobi/monaca/framework/AppJsonSetting;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->appJsonSetting:Lmobi/monaca/framework/AppJsonSetting;

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaApplication;->loadAppJsonSetting()V

    .line 158
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->appJsonSetting:Lmobi/monaca/framework/AppJsonSetting;

    return-object v0
.end method

.method public getInternalSettings()Lmobi/monaca/framework/InternalSettings;
    .locals 5

    .prologue
    .line 296
    sget-object v1, Lmobi/monaca/framework/MonacaApplication;->settings:Lmobi/monaca/framework/InternalSettings;

    if-nez v1, :cond_0

    .line 298
    :try_start_0
    new-instance v1, Lmobi/monaca/framework/InternalSettings;

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Lmobi/monaca/framework/InternalSettings;-><init>(Landroid/os/Bundle;)V

    sput-object v1, Lmobi/monaca/framework/MonacaApplication;->settings:Lmobi/monaca/framework/InternalSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_0
    sget-object v1, Lmobi/monaca/framework/MonacaApplication;->settings:Lmobi/monaca/framework/InternalSettings;

    return-object v1

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lmobi/monaca/framework/InternalSettings;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, v2}, Lmobi/monaca/framework/InternalSettings;-><init>(Landroid/os/Bundle;)V

    sput-object v1, Lmobi/monaca/framework/MonacaApplication;->settings:Lmobi/monaca/framework/InternalSettings;

    goto :goto_0
.end method

.method public getPushProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaApplication;->getAppJsonSetting()Lmobi/monaca/framework/AppJsonSetting;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/monaca/framework/AppJsonSetting;->getPushProjectId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideMonacaSpinnerDialog()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->hide()V

    .line 213
    :cond_0
    return-void
.end method

.method protected initGCM()V
    .locals 6

    .prologue
    .line 85
    new-instance v3, Lmobi/monaca/framework/MonacaApplication$1;

    invoke-direct {v3, p0}, Lmobi/monaca/framework/MonacaApplication$1;-><init>(Lmobi/monaca/framework/MonacaApplication;)V

    iput-object v3, p0, Lmobi/monaca/framework/MonacaApplication;->registeredReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    iget-object v3, p0, Lmobi/monaca/framework/MonacaApplication;->registeredReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "gcm_registered"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lmobi/monaca/framework/MonacaApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaApplication;->getAppJsonSetting()Lmobi/monaca/framework/AppJsonSetting;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/monaca/framework/AppJsonSetting;->getSenderId()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "senderId":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 98
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 99
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "regId":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 109
    .end local v1    # "regId":Ljava/lang/String;
    .end local v2    # "senderId":Ljava/lang/String;
    :goto_0
    return-void

    .line 103
    .restart local v1    # "regId":Ljava/lang/String;
    .restart local v2    # "senderId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaApplication;->sendGCMRegisterIdToAppAPI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v1    # "regId":Ljava/lang/String;
    .end local v2    # "senderId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadAppJsonSetting()V
    .locals 10

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "appJson":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    sget v8, Lmobi/monaca/framework/psedo/R$string;->appjson_filename:I

    invoke-virtual {p0, v8}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 115
    .local v6, "stream":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v3, v7, [B

    .line 116
    .local v3, "buffer":[B
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    .line 117
    new-instance v1, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    sget v8, Lmobi/monaca/framework/psedo/R$string;->encoding:I

    invoke-virtual {p0, v8}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v0    # "appJson":Lorg/json/JSONObject;
    .local v1, "appJson":Lorg/json/JSONObject;
    move-object v0, v1

    .line 127
    .end local v1    # "appJson":Lorg/json/JSONObject;
    .end local v3    # "buffer":[B
    .end local v6    # "stream":Ljava/io/InputStream;
    .restart local v0    # "appJson":Lorg/json/JSONObject;
    :goto_0
    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "appJson":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 131
    .restart local v0    # "appJson":Lorg/json/JSONObject;
    :cond_0
    new-instance v7, Lmobi/monaca/framework/AppJsonSetting;

    invoke-direct {v7, v0}, Lmobi/monaca/framework/AppJsonSetting;-><init>(Lorg/json/JSONObject;)V

    iput-object v7, p0, Lmobi/monaca/framework/MonacaApplication;->appJsonSetting:Lmobi/monaca/framework/AppJsonSetting;

    .line 133
    iget-object v7, p0, Lmobi/monaca/framework/MonacaApplication;->appJsonSetting:Lmobi/monaca/framework/AppJsonSetting;

    invoke-virtual {v7}, Lmobi/monaca/framework/AppJsonSetting;->getDisableCookie()Z

    move-result v4

    .line 134
    .local v4, "disableCookie":Z
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v8

    if-nez v4, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 136
    if-nez v4, :cond_2

    .line 137
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 138
    iget-object v7, p0, Lmobi/monaca/framework/MonacaApplication;->appJsonSetting:Lmobi/monaca/framework/AppJsonSetting;

    invoke-virtual {v7}, Lmobi/monaca/framework/AppJsonSetting;->shouldExtractAssets()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaApplication;->needToUseBootloader()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_1
    sget v7, Lmobi/monaca/framework/psedo/R$string;->data_dir_url:I

    invoke-virtual {p0, v7}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "assetUrl":Ljava/lang/String;
    :goto_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lmobi/monaca/framework/psedo/R$string;->cookie_monaca_cloud_device_id:I

    invoke-virtual {p0, v9}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lmobi/monaca/utils/MonacaDevice;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 143
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lmobi/monaca/framework/psedo/R$string;->cookie_domain:I

    invoke-virtual {p0, v9}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lmobi/monaca/framework/MonacaApplication;->appJsonSetting:Lmobi/monaca/framework/AppJsonSetting;

    invoke-virtual {v9}, Lmobi/monaca/framework/AppJsonSetting;->getMonacaCloudDomain()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 146
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lmobi/monaca/framework/psedo/R$string;->cookie_path:I

    invoke-virtual {p0, v9}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lmobi/monaca/framework/MonacaApplication;->appJsonSetting:Lmobi/monaca/framework/AppJsonSetting;

    invoke-virtual {v9}, Lmobi/monaca/framework/AppJsonSetting;->getMonacaCloudPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 149
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    sget v8, Lmobi/monaca/framework/psedo/R$string;->cookie_secure:I

    invoke-virtual {p0, v8}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 152
    .end local v2    # "assetUrl":Ljava/lang/String;
    :cond_2
    return-void

    .line 118
    .end local v4    # "disableCookie":Z
    :catch_0
    move-exception v5

    .line 119
    .local v5, "e":Ljava/io/IOException;
    sget-object v7, Lmobi/monaca/framework/MonacaApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmobi/monaca/framework/util/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 121
    .local v5, "e":Lorg/json/JSONException;
    sget-object v7, Lmobi/monaca/framework/MonacaApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmobi/monaca/framework/util/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    .end local v5    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v5

    .line 123
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    sget-object v7, Lmobi/monaca/framework/MonacaApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmobi/monaca/framework/util/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v5

    .line 125
    .local v5, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 134
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "disableCookie":Z
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 138
    :cond_4
    sget v7, Lmobi/monaca/framework/psedo/R$string;->www_assetdir_url:I

    invoke-virtual {p0, v7}, Lmobi/monaca/framework/MonacaApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2
.end method

.method public needToUseBootloader()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lmobi/monaca/framework/MonacaApplication;->enablesBootloader:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->needToUseLocalFileBootloader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    return-void
.end method

.method public onCreate()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 72
    sput-object p0, Lmobi/monaca/framework/MonacaApplication;->instance:Landroid/content/Context;

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 75
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 77
    :cond_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 78
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 80
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaApplication;->initGCM()V

    .line 81
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaApplication;->createMenuMap()V

    .line 82
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 311
    sput-object v0, Lmobi/monaca/framework/MonacaApplication;->pages:Ljava/util/List;

    .line 312
    sput-object v0, Lmobi/monaca/framework/MonacaApplication;->menuMap:Ljava/util/Map;

    .line 314
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 315
    return-void
.end method

.method public sendGCMRegisterIdToAppAPI(Ljava/lang/String;)V
    .locals 2
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 322
    new-instance v0, Lmobi/monaca/framework/MonacaApplication$4;

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaApplication;->getPushProjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmobi/monaca/utils/MonacaConst;->getPushRegistrationAPIUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, p1}, Lmobi/monaca/framework/MonacaApplication$4;-><init>(Lmobi/monaca/framework/MonacaApplication;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/MonacaApplication$4;->execute([Ljava/lang/Object;)V

    .line 335
    return-void
.end method

.method public showMonacaSpinnerDialog(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "uiContext"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v1, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->dismiss()V

    .line 172
    :cond_0
    :try_start_0
    new-instance v1, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    invoke-direct {v1, p1, p2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONArray;)V

    iput-object v1, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    .line 173
    iget-object v1, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->setCancelable(Z)V

    .line 174
    iget-object v1, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    new-instance v2, Lmobi/monaca/framework/MonacaApplication$2;

    invoke-direct {v2, p0}, Lmobi/monaca/framework/MonacaApplication$2;-><init>(Lmobi/monaca/framework/MonacaApplication;)V

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 183
    iget-object v1, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    new-instance v2, Lmobi/monaca/framework/MonacaApplication$3;

    invoke-direct {v2, p0}, Lmobi/monaca/framework/MonacaApplication$3;-><init>(Lmobi/monaca/framework/MonacaApplication;)V

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 191
    iget-object v1, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmobi/monaca/framework/MonacaApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    throw v0
.end method

.method public showMonacaSpinnerDialogIfAny()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->show()V

    .line 219
    :cond_0
    return-void
.end method

.method public updateSpinnerTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    invoke-virtual {v0, p1}, Lmobi/monaca/framework/nativeui/component/SpinnerDialog;->updateTitleText(Ljava/lang/String;)V

    .line 225
    :cond_0
    return-void
.end method
