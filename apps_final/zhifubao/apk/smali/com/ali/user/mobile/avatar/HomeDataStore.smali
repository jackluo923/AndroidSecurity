.class public Lcom/ali/user/mobile/avatar/HomeDataStore;
.super Ljava/lang/Object;
.source "HomeDataStore.java"


# static fields
.field public static final ADDCONTACTVERSION:Ljava/lang/String; = "addContactVersion"

.field public static final APP_FREQUENCY_COUNT:Ljava/lang/String; = "appFrequencyCount"

.field public static final BANK_CCR_IS_NEW:Ljava/lang/String; = "BANK_CCR_IS_NEW"

.field public static final BANK_CCR_SAVED_BANKLIST:Ljava/lang/String; = "BANK_CCR_SAVED_BANKLIST"

.field public static final BANK_CCR_SAVED_TIME:Ljava/lang/String; = "BANK_CCR_SAVED_TIME"

.field public static final BANK_CCR_SMS_CONTENT1:Ljava/lang/String; = "BANK_CCR_SMS_CONTENT1"

.field public static final BANK_CCR_SMS_CONTENT2:Ljava/lang/String; = "BANK_CCR_SMS_CONTENT2"

.field public static final BANK_CCR_SMS_CONTENT3:Ljava/lang/String; = "BANK_CCR_SMS_CONTENT3"

.field public static final BANK_CCR_SMS_FORMAT:Ljava/lang/String; = "BANK_CCR_SMS_FORMAT"

.field public static final BANK_CCR_SMS_OPEN:Ljava/lang/String; = "BANK_CCR_SMS_OPEN"

.field public static final BANK_CCR_SUPPORT_BANKLIST:Ljava/lang/String; = "BANK_CCR_SUPPORT_BANKLIST"

.field public static final BANK_CCR_UPDATESAVED:Ljava/lang/String; = "BANK_CCR_UPDATESAVED"

.field public static final BARCODE_BACK_IMG:Ljava/lang/String; = "barcode_backimg"

.field public static final BARCODE_SERVER_ENV:Ljava/lang/String; = "barcode_server_env"

.field public static final BARCODE_SHOW_GUIDE:Ljava/lang/String; = "barcode_first_guide"

.field public static final CHOOSELOGINTYPE:Ljava/lang/String; = "chooseloginType"

.field public static final CURENTVERSION:Ljava/lang/String; = "curentVersion"

.field public static final CURUSER_QRCODE_PATH:Ljava/lang/String; = "curUserQrcodePath"

.field public static final DISPLAY_LICENSE:Ljava/lang/String; = "license"

.field public static final ISFIRSTLOGIN:Ljava/lang/String; = "isFirstLogin"

.field public static final LASTLOGINUSERAVTARPATH:Ljava/lang/String; = "lastLoginUserAvtarPath"

.field public static final LASTNETSTATE:Ljava/lang/String; = "lastNetState"

.field public static final LASTREJECTTIME:Ljava/lang/String; = "lastRejectTime"

.field public static final LASTUPDATEVERSION:Ljava/lang/String; = "lastupdateversion"

.field public static final LOGINTYPE:Ljava/lang/String; = "logintype"

.field public static final LOGINTYPE_ALIPAY:Ljava/lang/String; = "alipay"

.field public static final LOGINTYPE_TAOBAO:Ljava/lang/String; = "taobao"

.field public static final LOGIN_CHECKED:Ljava/lang/String; = "login_check"

.field public static final LOGIN_SERVER_TIME:Ljava/lang/String; = "loginServerTime"

.field public static final MAIN_VERSION:Ljava/lang/String; = "main_version"

.field public static final MOTO_BRAND:Ljava/lang/String; = "motoInternal"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NAME_TAOBAO:Ljava/lang/String; = "name_taobao"

.field public static final NOTIFICATION_SETTING_ENDTIME:Ljava/lang/String; = "SETTINGS_TIME_END"

.field public static final NOTIFICATION_SETTING_RECEIVECHECKEDSTATUS:Ljava/lang/String; = "SETTINGS_NOTIFICATION_ENABLED"

.field public static final NOTIFICATION_SETTING_STARTTIME:Ljava/lang/String; = "SETTINGS_TIME_START"

.field public static final NOTIFICATION_SETTING_VIBRATORCHECKEDSTATUS:Ljava/lang/String; = "SETTINGS_VIBRATE_ENABLED"

.field public static final NOTIFICATION_SETTING_VOICECHECKEDSTATUS:Ljava/lang/String; = "SETTINGS_SOUND_ENABLED"

.field public static final PASSWORD:Ljava/lang/String; = "pwd"

.field public static final PASSWORD_TAOBAO:Ljava/lang/String; = "pwd_taobao"

.field public static final PERSONLCARDFIST:Ljava/lang/String; = "personlcardFist"

.field public static final PWD_CHECKED:Ljava/lang/String; = "pwd_check"

.field public static final PWD_CHECKED_TAOBAO:Ljava/lang/String; = "pwd_check_taobao"

.field public static final QRCODE_PREFIX:Ljava/lang/String; = "qrcodePrefix"

.field public static final QUICKPAY:Ljava/lang/String; = "quickpay"

.field public static final RECORDLIST_VERSION:Ljava/lang/String; = "recordlist_version"

.field public static final REJECTTIMES:Ljava/lang/String; = "rejectTimes"

.field public static final SAFEPAYLASTNETSTATE:Ljava/lang/String; = "safePayLastNetState"

.field public static final SAFEPAYREJECTTIMES:Ljava/lang/String; = "safePayRejectTimes"

.field public static final SAMSUNG_BRAND:Ljava/lang/String; = "samsungInternal"

.field public static final SAM_FIRST:Ljava/lang/String; = "firstloginsam"

.field public static final SAVED_URL:Ljava/lang/String; = "check"

.field public static final SETTING_INFOS:Ljava/lang/String; = "SETTING_Infos"

.field public static final STARTDATETIME:Ljava/lang/String; = "startdatetime"

.field public static final THE_LAST_TIME_SUCCESS_CARD_INDEX_NUMBER:Ljava/lang/String; = "THE_LAST_TIME_SUCCESS_CARD_INDEX_NUMBER"

.field public static final TRANSFERBYSMS_VERSION:Ljava/lang/String; = "transferbysms_version"

.field public static final TRANSFERCONFIRM:Ljava/lang/String; = "transferConfirm"

.field public static final TRANSFERINDEX:Ljava/lang/String; = "transferIndex"

.field public static final TRANSFERTOCARD_VERSION:Ljava/lang/String; = "transfertocard_version"

.field public static final TRANSFERVERSION:Ljava/lang/String; = "transferVersion"

.field public static final VOUCHERLIST_VERSION:Ljava/lang/String; = "voucherlist_version"

.field public static final WPTHintCheck:Ljava/lang/String; = "WPTHintCheck"


# instance fields
.field private a:Landroid/content/Context;

.field public settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->a:Landroid/content/Context;

    .line 98
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->a:Landroid/content/Context;

    const-string/jumbo v1, "SETTING_Infos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->settings:Landroid/content/SharedPreferences;

    .line 99
    return-void
.end method


# virtual methods
.method public TryRemoveDownloadFile()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->settings:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "check"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 141
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 143
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "check"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    :cond_0
    return-void
.end method

.method public containString(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->settings:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->settings:Landroid/content/SharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    return-void
.end method

.method public romve(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/HomeDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return-void
.end method
