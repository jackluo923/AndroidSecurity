.class public Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;
.super Ljava/lang/Object;
.source "ReadSettingServerUrl.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "https://mclient.alipay.com/gateway.do"

    sput-object v0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    iput-object v0, p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->c:Ljava/lang/String;

    return-void
.end method

.method public static final getCcdcURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string/jumbo v0, "content://com.alipay.setting/CcrCcdcUrl"

    const-string/jumbo v1, "https://ccdcapi.alipay.com/cacheWapCardInfo.json"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://ccdcapi.alipay.com/cacheWapCardInfo.json"

    goto :goto_0
.end method

.method public static final getCmsHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "content://com.alipay.setting/CmsUrl"

    const-string/jumbo v1, "http://d.alipay.com"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://d.alipay.com"

    goto :goto_0
.end method

.method public static final getCmsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v0, "content://com.alipay.setting/CmsUrl"

    const-string/jumbo v1, "http://d.alipay.com/mbresultyy/prc.htm"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://d.alipay.com/mbresultyy/prc.htm"

    goto :goto_0
.end method

.method public static final getCpbSignAddCmsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, "content://com.alipay.setting/CpbSignAddUrl"

    const-string/jumbo v1, "http://d.alipay.net/cpbSign/add.htm"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://d.alipay.com/cpbSign/add.htm"

    goto :goto_0
.end method

.method public static final getForgetPayPWD(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    const-string/jumbo v0, "https://wapcashier.alipay.com/home/resetPayPwd.htm?src=alipayclient&awid="

    .line 217
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const-string/jumbo v1, "content://com.alipay.setting/ForgetPayPWDUrl"

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_0
    return-object v0
.end method

.method public static final getInnerBatchPayPrefix1(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string/jumbo v0, "content://com.alipay.setting/inner_batch_pay_prefix1"

    const-string/jumbo v1, "http://maliprod.alipay.com/batch_payment.do"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://maliprod.alipay.com/batch_payment.do"

    goto :goto_0
.end method

.method public static final getInnerBatchPayPrefix2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-string/jumbo v0, "content://com.alipay.setting/inner_batch_pay_prefix2"

    const-string/jumbo v1, "http://mali.alipay.com/batch_payment.do"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://mali.alipay.com/batch_payment.do"

    goto :goto_0
.end method

.method public static final getInnerSinglePayPrefix1(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string/jumbo v0, "content://com.alipay.setting/inner_single_pay_prefix1"

    const-string/jumbo v1, "http://maliprod.alipay.com/w/trade_pay.do"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://maliprod.alipay.com/w/trade_pay.do"

    goto :goto_0
.end method

.method public static final getInnerSinglePayPrefix2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string/jumbo v0, "content://com.alipay.setting/inner_single_pay_prefix2"

    const-string/jumbo v1, "http://mali.alipay.com/w/trade_pay.do"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://mali.alipay.com/w/trade_pay.do"

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->a:Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    invoke-direct {v0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->a:Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    .line 25
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->a:Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final getNonsupportCmsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string/jumbo v0, "content://com.alipay.setting/NonsupportUrl"

    const-string/jumbo v1, "http://d.alipay.net/cpbSign/nonsupport.htm"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://d.alipay.com/cpbSign/nonsupport.htm"

    goto :goto_0
.end method

.method public static final getOuterPayPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string/jumbo v0, "content://com.alipay.setting/outer_pay_prefix"

    const-string/jumbo v1, "http://wappaygw.alipay.com/service/rest.htm"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://wappaygw.alipay.com/service/rest.htm"

    goto :goto_0
.end method

.method public static final getPoliceCenterUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string/jumbo v0, "content://com.alipay.setting/SafePoliceCenterUrl"

    const-string/jumbo v1, "https://clientsc.alipay.com/account/gateway.htm"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://clientsc.alipay.com/account/gateway.htm"

    goto :goto_0
.end method

.method public static final getPublicUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-string/jumbo v0, "http://d.alipay.com/mbresultyy/public.htm"

    return-object v0
.end method

.method public static final getRobotUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string/jumbo v0, "content://com.alipay.setting/ContainerServerUrl"

    const-string/jumbo v1, "https://cschannel.alipay.com/mobile/csrouter.htm?platform=android"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://cschannel.alipay.com/mobile/csrouter.htm?platform=android"

    goto :goto_0
.end method

.method public static final getSafePayServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v0, "content://com.alipay.setting/SafePayServerUrl"

    sget-object v1, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->b:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://mclient.alipay.com/gateway.do"

    goto :goto_0
.end method

.method public static final getStatisticsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "content://com.alipay.setting/StatisticsServerUrl"

    const-string/jumbo v1, "http://mdap.alipay.com/loggw/log.do"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://mdap.alipay.com/loggw/log.do"

    goto :goto_0
.end method

.method public static final getTaobaoMobileDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const-string/jumbo v0, "content://com.alipay.setting/taobao_mobile_domain"

    const-string/jumbo v1, "m.taobao.com"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "m.taobao.com"

    goto :goto_0
.end method

.method public static final getTmallMobileDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string/jumbo v0, "content://com.alipay.setting/tmall_mobile_domain"

    const-string/jumbo v1, "m.tmall.com"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "m.tmall.com"

    goto :goto_0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_0
    :goto_0
    return-object p2

    .line 92
    :cond_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 44
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 53
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final setSafePayUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    sput-object p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->b:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public final getGWFURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 63
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "mobilegw.url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string/jumbo v1, "getGWFURL"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string/jumbo v0, "content://com.alipay.setting/GWFServerUrl"

    iget-object v1, p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public getmUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final isEnableAmnetSetting(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 356
    invoke-static {p1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    const-string/jumbo v1, "content://com.alipay.setting/XmppUseMmtp"

    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 365
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :cond_1
    const-string/jumbo v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public final isOnline(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 340
    invoke-static {p1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string/jumbo v1, ".alipay.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->c:Ljava/lang/String;

    .line 34
    return-void
.end method
