.class public final Lcom/alipay/asset/common/util/PhoneCashierAuthUtil;
.super Ljava/lang/Object;
.source "PhoneCashierAuthUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final auth(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    if-eqz p0, :cond_0

    .line 31
    const-class v0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;

    .line 30
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;

    .line 33
    :cond_0
    invoke-static {v0, p1}, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil;->auth(Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;)V

    .line 34
    return-void
.end method

.method public static final auth(Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;)V
    .locals 4

    .prologue
    .line 37
    const-class v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->getMicroService(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    .line 38
    if-nez p0, :cond_1

    .line 40
    const-string/jumbo v1, "uuid=\"\"&extern_token=\"\"&app_name=\"\"&biz_type=\"\"&apiname=\"\"&apiservice=\"\"&tip=\"\""

    .line 59
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhoneCashierAuthUtil"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v2, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$1;

    invoke-direct {v2, p1}, Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$1;-><init>(Lcom/alipay/asset/common/util/PhoneCashierAuthUtil$AuthCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;->boot(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    .line 84
    return-void

    .line 43
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uuid=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    const-string/jumbo v2, "\"&extern_token=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 46
    iget-object v1, p0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;->externToken:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    const-string/jumbo v2, "\"&app_name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    const-string/jumbo v2, "\"&biz_type=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;->bizType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    const-string/jumbo v2, "\"&apiname=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;->apiName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    const-string/jumbo v2, "\"&apiservice=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;->apiService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    const-string/jumbo v2, "\"&tip=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;->tip:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;->tip:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;->authTokenInfo:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "&auth_token_info=\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;->authTokenInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobilewealth/common/service/facade/result/pwd/PasswordTokenCreator;->externToken:Ljava/lang/String;

    goto/16 :goto_1

    .line 53
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_2
.end method

.method public static getPwdTokenFromMemo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    const-string/jumbo v0, ""

    .line 99
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 104
    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 106
    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
