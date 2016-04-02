.class public Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;

.field private b:Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    iput v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->d:I

    iput-object p1, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->a:Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;

    iput-object p2, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getEndPoints()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->getRulesUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->a:Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;

    invoke-virtual {v2}, Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;->getEncodedRequestParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[InMobi]-[Monetization]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Getting LTVP rule: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const v3, 0xea60

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v3, 0xea60

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setParams(Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "success"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "error_message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[InMobi]-[Monetization]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received LTVP rule fetch failure: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;

    iget-object v3, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->a:Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;

    new-instance v4, Lcom/inmobi/monetization/internal/LtvpErrorCode;

    invoke-direct {v4, v0, v1}, Lcom/inmobi/monetization/internal/LtvpErrorCode;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;->onLtvpGetRuleFailed(Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;Lcom/inmobi/monetization/internal/LtvpErrorCode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "response"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "[InMobi]-[Monetization]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received LTVP rule fetch success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;

    invoke-direct {v1}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;-><init>()V

    const-string v2, "rule_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ts"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "exp"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "se"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "he"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v10, "rules"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Received LTVP rule fetch exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->a:Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;

    new-instance v2, Lcom/inmobi/monetization/internal/LtvpErrorCode;

    const/4 v3, -0x1

    const-string v4, "Ltvp rule server unreachable"

    invoke-direct {v2, v3, v4}, Lcom/inmobi/monetization/internal/LtvpErrorCode;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;->onLtvpGetRuleFailed(Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;Lcom/inmobi/monetization/internal/LtvpErrorCode;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->setRuleId(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->setTimeStamp(J)V

    invoke-virtual {v1, v6, v7}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->setSoftExpiry(J)V

    invoke-virtual {v1, v8, v9}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->setHardExpiry(J)V

    invoke-virtual {v1, v5}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->setRules(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->b:Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;

    iget-object v2, p0, Lcom/inmobi/monetization/internal/GetLtvpRuleRequestTask;->a:Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;

    invoke-interface {v0, v2, v1}, Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;->onLtvpGetRuleSucceeded(Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
