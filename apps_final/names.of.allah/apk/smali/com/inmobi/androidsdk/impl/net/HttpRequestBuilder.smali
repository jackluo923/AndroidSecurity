.class public final Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenDensity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "d-device-screen-density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenDensity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "&d-device-screen-size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Couldn\'t build post string in IMHttpRequestBuilder"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/commons/thinICE/wifi/WifiInfo;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "u-postalCode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/inmobi/androidsdk/impl/SDKUtil;->getQAMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&mk-carrier=117.97.87.6"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&x-real-ip=117.97.87.6"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Couldn\'t build post string in IMHttpRequestBuilder"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "&u-areaCode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDateOfBirth()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "&u-dateOfBirth="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDateOfBirth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getGender()Lcom/inmobi/commons/GenderType;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "&u-gender="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getGender()Lcom/inmobi/commons/GenderType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/GenderType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getKeywords()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "&p-keywords="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "&p-type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getIncome()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "&u-income="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getIncome()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEducation()Lcom/inmobi/commons/EducationType;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "&u-education="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEducation()Lcom/inmobi/commons/EducationType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/EducationType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEthnicity()Lcom/inmobi/commons/EthnicityType;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "&u-ethnicity="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEthnicity()Lcom/inmobi/commons/EthnicityType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/EthnicityType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAge()I

    move-result v0

    if-lez v0, :cond_c

    const-string v0, "&u-age="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAge()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getInterests()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "&u-interests="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getInterests()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "&u-location="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "&u-marital="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/MaritalStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getHasChildren()Lcom/inmobi/commons/HasChildren;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v0, "&u-haschildren="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getHasChildren()Lcom/inmobi/commons/HasChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/HasChildren;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, "&u-language="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v0, "&u-sexualorientation="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/SexualOrientation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "&ts="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&tz="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&c-ap-bssid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p1, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->bssid:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_13
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getCurrentCellTower(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "&c-sid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_14
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v3, "Exception getting cell tower id"

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method private static b(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSiteId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "mk-siteid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSiteId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "&u-id-adt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPlainUidMap()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "&u-id-map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPlainUidMap()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "&aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "&mk-version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pr-SAND-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "4.4.1"

    invoke-static {v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getInMobiInternalVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-20140613"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&mk-rel-version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&format=imai"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&mk-ads=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&h-user-agent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&u-appbid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAppBId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&u-appDNM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAppDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&u-appver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAppVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&d-localization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocalization()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "&d-netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "&d-orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "&mk-ad-slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAdUnitSlot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSlotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "&mk-site-slotid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "&u-latlong-accu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->currentLocationStr(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&u-ll-ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getGeoTS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_1
    return-object v0

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Couldn\'t build post string in IMHttpRequestBuilder"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static buildPostBody(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/commons/thinICE/wifi/WifiInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-static {p0, p1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->a(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/commons/thinICE/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    if-ne v2, p2, :cond_4

    const-string v2, "requestactivity=AdRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->a(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->b(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :try_start_1
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    if-ne v2, p2, :cond_0

    const-string v2, "adtype=int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[InMobi]-[Network]-4.4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occured in an ad request"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static currentLocationStr(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLon()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocAccuracy()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getURLDecoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
