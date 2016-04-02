.class public Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;
.super Ljava/lang/Object;
.source "UserSelectCity.java"


# instance fields
.field private final GROUPID:Ljava/lang/String;

.field private final HOUR_24_MINUTES:J

.field private final MINUTE_1_MILLIS:J

.field private context:Landroid/app/Activity;

.field private selAdCode:Ljava/lang/String;

.field private selCityName:Ljava/lang/String;

.field private timestampMinutes:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selAdCode:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selCityName:Ljava/lang/String;

    .line 22
    iput-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J

    .line 26
    const-wide/16 v0, 0x5a0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->HOUR_24_MINUTES:J

    .line 28
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->MINUTE_1_MILLIS:J

    .line 30
    const-string/jumbo v0, "com.alipay.android.phone.discovery.o2ohome"

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->GROUPID:Ljava/lang/String;

    .line 34
    iput-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J

    .line 35
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->context:Landroid/app/Activity;

    .line 36
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->initCityInfoFromCache()V

    return-void
.end method

.method private getLocationExpiryMinutes()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x5a0

    .line 65
    .line 66
    const-string/jumbo v2, "O2OHOME_LOCATION_EXPIRY_MINUTES"

    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 73
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 78
    :cond_0
    :goto_1
    return-wide v0

    :catch_0
    move-exception v2

    move-wide v2, v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method private declared-synchronized initCityInfoFromCache()V
    .locals 4

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getCurUserId()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->context:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "com.alipay.android.phone.discovery.o2ohome"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v1, "selAdCode"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selAdCode:Ljava/lang/String;

    .line 103
    const-string/jumbo v1, "selCityName"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selCityName:Ljava/lang/String;

    .line 104
    const-string/jumbo v1, "selTimestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isCacheValid()Z
    .locals 6

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->getLocationExpiryMinutes()J

    move-result-wide v0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized saveCityInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getCurUserId()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->context:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "com.alipay.android.phone.discovery.o2ohome"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selAdCode:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selCityName:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J

    .line 89
    const-string/jumbo v1, "selAdCode"

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selAdCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    const-string/jumbo v1, "selCityName"

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selCityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    const-string/jumbo v1, "selTimestamp"

    iget-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putLong(Ljava/lang/String;J)Z

    .line 92
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getSelectCity()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->isCacheValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selAdCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selCityName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-object v0
.end method

.method public saveSelectCityInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->saveCityInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method
