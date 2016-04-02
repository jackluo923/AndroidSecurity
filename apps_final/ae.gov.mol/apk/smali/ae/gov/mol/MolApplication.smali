.class public Lae/gov/mol/MolApplication;
.super Landroid/app/Application;
.source "MolApplication.java"


# static fields
.field public static final ARABIC:I = 0x0

.field private static final BLOCKED_COMPANY:Ljava/lang/String; = "BlockedCompany"

.field private static final EMAIL:Ljava/lang/String; = "Email"

.field private static final EMAIL_PROFILE:Ljava/lang/String; = "Email_Profile"

.field public static final ENGLISH:I = 0x1

.field private static final GOOD_COMPANY:Ljava/lang/String; = "GoodCompany"

.field private static final LANGUAGE_CHANGE:Ljava/lang/String; = "lang_changed"

.field public static final LANG_AR:Ljava/lang/String; = "ar"

.field public static final LANG_ARB:Ljava/lang/String; = "arb"

.field private static final LANG_AR_NUMEREIC:Ljava/lang/String; = "0"

.field public static final LANG_EN:Ljava/lang/String; = "en"

.field public static final LANG_ENG:Ljava/lang/String; = "eng"

.field private static final LANG_EN_NUMEREIC:Ljava/lang/String; = "1"

.field private static final LOGIN_ID:Ljava/lang/String; = "Login"

.field public static LogEnable:Z = false

.field private static final MOBILENUMBR:Ljava/lang/String; = "MobileNumber"

.field private static final MOBILENUMBR_PROFILE:Ljava/lang/String; = "MobileNumber_Profile"

.field private static final PHONENUMBR:Ljava/lang/String; = "PhoneNumber"

.field private static final PHONENUMBR_PROFILE:Ljava/lang/String; = "PhoneNumber_Profile"

.field private static final TASHEELUSER:Ljava/lang/String; = "TasheelUser"

.field private static final TEMPRATURE:Ljava/lang/String; = "Temperature"

.field private static final TEMPRATURE_ICON:Ljava/lang/String; = "Temperature_Icon"

.field private static final TOTAL_COMPANY:Ljava/lang/String; = "TotalCompany"

.field private static final USER_FULL_NAME:Ljava/lang/String; = "Username_full_Profile"

.field private static final USER_IMAGE:Ljava/lang/String; = "UserImage"

.field private static final USER_NAME_AR:Ljava/lang/String; = "UsernameAr"

.field private static final USER_NAME_EN:Ljava/lang/String; = "UsernameEn"

.field private static final USER_NAME_PROFILE:Ljava/lang/String; = "Username_Profile"

.field public static mCompanyList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/OwnerstatisticsVo;",
            ">;"
        }
    .end annotation
.end field

.field public static mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo; = null

.field public static mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo; = null

.field public static mNewsVo:Lae/gov/mol/vo/NewsVo; = null

.field public static mPersonCompanyList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PersonCompanyListVo;",
            ">;"
        }
    .end annotation
.end field

.field public static mServiceCenterList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceCenterData;",
            ">;"
        }
    .end annotation
.end field

.field public static mStringData:Ljava/lang/String; = null

.field private static mTags:Lae/gov/mol/helper/Tags; = null

.field private static final mTempPassword:Ljava/lang/String; = "mPassword"

.field private static final mTempUserName:Ljava/lang/String; = "mUserName"

.field public static ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

.field public static shouldNotifyGPS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, ""

    sput-object v0, Lae/gov/mol/MolApplication;->mStringData:Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lae/gov/mol/MolApplication;->shouldNotifyGPS:Z

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static Login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mUser_id"    # Ljava/lang/String;
    .param p2, "mUserNameEnglish"    # Ljava/lang/String;
    .param p3, "mUserNameArabic"    # Ljava/lang/String;
    .param p4, "mEmail"    # Ljava/lang/String;
    .param p5, "mTasheelUser"    # Ljava/lang/String;
    .param p6, "mMobileNumber"    # Ljava/lang/String;
    .param p7, "mPhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 340
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Login"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 342
    const-string v2, "UsernameEn"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 343
    const-string v2, "UsernameAr"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 344
    const-string v2, "Email"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    const-string v2, "TasheelUser"

    invoke-interface {v0, v2, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 346
    const-string v2, "MobileNumber"

    invoke-interface {v0, v2, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    const-string v2, "PhoneNumber"

    invoke-interface {v0, v2, p7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    return-void
.end method

.method public static LoginProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mUser_name_profile"    # Ljava/lang/String;
    .param p2, "mUser_full_name"    # Ljava/lang/String;
    .param p3, "mEmail"    # Ljava/lang/String;
    .param p4, "mMobileNumber"    # Ljava/lang/String;
    .param p5, "mPhoneNumber"    # Ljava/lang/String;
    .param p6, "mProfileImage"    # Ljava/lang/String;
    .param p7, "mTotalCompany"    # Ljava/lang/String;
    .param p8, "mGoodCompany"    # Ljava/lang/String;
    .param p9, "mBlockedCompany"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 361
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 362
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Username_Profile"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 363
    const-string v2, "Username_full_Profile"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 364
    const-string v2, "Email_Profile"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 365
    const-string v2, "MobileNumber_Profile"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    const-string v2, "PhoneNumber_Profile"

    invoke-interface {v0, v2, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 367
    const-string v2, "UserImage"

    invoke-interface {v0, v2, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 368
    const-string v2, "TotalCompany"

    invoke-interface {v0, v2, p7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 369
    const-string v2, "GoodCompany"

    invoke-interface {v0, v2, p8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    const-string v2, "BlockedCompany"

    invoke-interface {v0, v2, p9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    return-void
.end method

.method public static Logout(Landroid/content/Context;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 535
    sput-object v3, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    .line 536
    const-string v2, ""

    sput-object v2, Lae/gov/mol/MolApplication;->mStringData:Ljava/lang/String;

    .line 537
    sput-object v3, Lae/gov/mol/MolApplication;->mPersonCompanyList:Ljava/util/ArrayList;

    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 539
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 540
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 541
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 542
    return-void
.end method

.method public static SetLocale(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "localeKey"    # Ljava/lang/String;

    .prologue
    .line 291
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 292
    .local v1, "defaultLocale":Ljava/util/Locale;
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 293
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 294
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 296
    return-void
.end method

.method public static getApplicationLanguageAR_EN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBlockedCompany(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 450
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "BlockedCompany"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "mBlockedCompany":Ljava/lang/String;
    return-object v0
.end method

.method public static getDeviceLocale(Landroid/content/Context;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 305
    const-string v2, "en"

    .line 306
    .local v2, "localeKey":Ljava/lang/String;
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    const-string v2, "ar"

    .line 311
    :goto_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 312
    .local v1, "defaultLocale":Ljava/util/Locale;
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 313
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 314
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 316
    return-void

    .line 309
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "defaultLocale":Ljava/util/Locale;
    :cond_0
    const-string v2, "en"

    goto :goto_0
.end method

.method public static getEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 470
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 471
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "Email"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "mEmail":Ljava/lang/String;
    return-object v0
.end method

.method public static getEmailProfile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 393
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "Email_Profile"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "mEmail":Ljava/lang/String;
    return-object v0
.end method

.method public static getGoodCompany(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 438
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "GoodCompany"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "mGoodCompany":Ljava/lang/String;
    return-object v0
.end method

.method public static getLANG_ENG_ARB()Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 266
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const-string v1, "arb"

    .line 269
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "eng"

    goto :goto_0
.end method

.method public static getLANG_EN_AR()Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 240
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "ar"

    .line 243
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "en"

    goto :goto_0
.end method

.method public static getLanguage()I
    .locals 3

    .prologue
    .line 323
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 324
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const/4 v1, 0x0

    .line 327
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getMinisterMessageVo()Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lae/gov/mol/MolApplication;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    return-object v0
.end method

.method public static getMobile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 483
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "MobileNumber"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "mMobile":Ljava/lang/String;
    return-object v0
.end method

.method public static getMobileNUmberProfile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 404
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "MobileNumber_Profile"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "mMobileNumber":Ljava/lang/String;
    return-object v0
.end method

.method public static getTasheelUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 492
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 493
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "TasheelUser"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "mTasheelId":Ljava/lang/String;
    return-object v1
.end method

.method public static getTasheelUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 502
    const-string v1, ""

    .line 503
    .local v1, "mTasheelUserName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 505
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 516
    :goto_0
    return-object v1

    .line 507
    :pswitch_0
    const-string v2, "UsernameEn"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    goto :goto_0

    .line 510
    :pswitch_1
    const-string v2, "UsernameAr"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTemperature(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 551
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "Temperature"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTemperatureIcon(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 560
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 561
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "Temperature_Icon"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTotalCompany(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 426
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "TotalCompany"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "mTotalCompany":Ljava/lang/String;
    return-object v1
.end method

.method public static getUserImage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 415
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "UserImage"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "mMobileNumber":Ljava/lang/String;
    return-object v0
.end method

.method public static getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 460
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "Login"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "mLoginId":Ljava/lang/String;
    return-object v0
.end method

.method public static getUserNameProfile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "Username_full_Profile"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "mUserFullName":Ljava/lang/String;
    return-object v1
.end method

.method public static getmLanguageNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 253
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const-string v1, "0"

    .line 256
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "1"

    goto :goto_0
.end method

.method public static getmMolGoalVo()Lae/gov/mol/vo/MOLGoalVo;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lae/gov/mol/MolApplication;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    return-object v0
.end method

.method public static getmMol_Vission_MissionVo()Lae/gov/mol/vo/MOL_Vission_MissionVo;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lae/gov/mol/MolApplication;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    return-object v0
.end method

.method public static getmNewsVo()Lae/gov/mol/vo/NewsVo;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lae/gov/mol/MolApplication;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    return-object v0
.end method

.method public static getmPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 618
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 619
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "mPassword"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getmTags()Lae/gov/mol/helper/Tags;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lae/gov/mol/MolApplication;->mTags:Lae/gov/mol/helper/Tags;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lae/gov/mol/helper/Tags;

    invoke-direct {v0}, Lae/gov/mol/helper/Tags;-><init>()V

    .line 281
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lae/gov/mol/MolApplication;->mTags:Lae/gov/mol/helper/Tags;

    goto :goto_0
.end method

.method public static getmUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 608
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "mUserName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isLoggedIn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 524
    invoke-static {p0}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x0

    .line 527
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMinisterMessageVoEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-static {}, Lae/gov/mol/MolApplication;->getMinisterMessageVo()Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    invoke-static {}, Lae/gov/mol/MolApplication;->getMinisterMessageVo()Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMolGoalVoEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 149
    invoke-static {}, Lae/gov/mol/MolApplication;->getmMolGoalVo()Lae/gov/mol/vo/MOLGoalVo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    invoke-static {}, Lae/gov/mol/MolApplication;->getmMolGoalVo()Lae/gov/mol/vo/MOLGoalVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/MOLGoalVo;->getErrResult()Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNewsVoEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 221
    invoke-static {}, Lae/gov/mol/MolApplication;->getmNewsVo()Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    invoke-static {}, Lae/gov/mol/MolApplication;->getmNewsVo()Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 226
    invoke-static {}, Lae/gov/mol/MolApplication;->getmNewsVo()Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 227
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVission_MissionVoEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 175
    invoke-static {}, Lae/gov/mol/MolApplication;->getmMol_Vission_MissionVo()Lae/gov/mol/vo/MOL_Vission_MissionVo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    invoke-static {}, Lae/gov/mol/MolApplication;->getmMol_Vission_MissionVo()Lae/gov/mol/vo/MOL_Vission_MissionVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/MOL_Vission_MissionVo;->getErrResult()Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putTemperature(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "temprature"    # Ljava/lang/String;

    .prologue
    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 572
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 573
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Temperature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u00c2\u00b0C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 574
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 575
    return-void
.end method

.method public static putTemperatureIcon(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;)V
    .locals 4
    .param p0, "mCustomFragmentActivity"    # Lae/gov/mol/helper/CustomFragmentActivity;
    .param p1, "mTempIcon"    # Ljava/lang/String;

    .prologue
    .line 584
    invoke-virtual {p0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 585
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 586
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Temperature_Icon"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 587
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 588
    return-void
.end method

.method public static resetAboutUsCache(Landroid/content/Context;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 201
    sput-object v2, Lae/gov/mol/MolApplication;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    .line 202
    sput-object v2, Lae/gov/mol/MolApplication;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    .line 203
    sput-object v2, Lae/gov/mol/MolApplication;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    .line 204
    sput-object v2, Lae/gov/mol/MolApplication;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 206
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 209
    const-string v2, "lang_changed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    .end local v0    # "mEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setMinisterMessageVo(Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;)V
    .locals 0
    .param p0, "ministerMessageVo"    # Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    .prologue
    .line 112
    sput-object p0, Lae/gov/mol/MolApplication;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    .line 113
    return-void
.end method

.method public static setUserNamePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mUserName"    # Ljava/lang/String;
    .param p2, "mPassword"    # Ljava/lang/String;

    .prologue
    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 630
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 631
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "mUserName"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 632
    const-string v2, "mPassword"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 633
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 634
    return-void
.end method

.method public static setmMolGoalVo(Lae/gov/mol/vo/MOLGoalVo;)V
    .locals 0
    .param p0, "mMolGoalVo"    # Lae/gov/mol/vo/MOLGoalVo;

    .prologue
    .line 139
    sput-object p0, Lae/gov/mol/MolApplication;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    .line 140
    return-void
.end method

.method public static setmMol_Vission_MissionVo(Lae/gov/mol/vo/MOL_Vission_MissionVo;)V
    .locals 0
    .param p0, "mMol_Vission_MissionVo"    # Lae/gov/mol/vo/MOL_Vission_MissionVo;

    .prologue
    .line 165
    sput-object p0, Lae/gov/mol/MolApplication;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    .line 166
    return-void
.end method

.method public static setmNewsVo(Lae/gov/mol/vo/NewsVo;)V
    .locals 0
    .param p0, "mNewsVo"    # Lae/gov/mol/vo/NewsVo;

    .prologue
    .line 191
    sput-object p0, Lae/gov/mol/MolApplication;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    .line 192
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 102
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    sput-object v0, Lae/gov/mol/MolApplication;->mTags:Lae/gov/mol/helper/Tags;

    .line 103
    invoke-static {p0}, Lae/gov/mol/MolApplication;->getDeviceLocale(Landroid/content/Context;)V

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lae/gov/mol/MolApplication;->LogEnable:Z

    .line 105
    return-void
.end method
