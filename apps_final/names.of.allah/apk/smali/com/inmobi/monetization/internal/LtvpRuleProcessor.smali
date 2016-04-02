.class public Lcom/inmobi/monetization/internal/LtvpRuleProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;


# instance fields
.field private a:Lcom/inmobi/monetization/internal/ServiceProvider;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/inmobi/monetization/internal/ServiceProvider;->getInstance()Lcom/inmobi/monetization/internal/ServiceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->a:Lcom/inmobi/monetization/internal/ServiceProvider;

    return-void
.end method

.method public static getInstance()Lcom/inmobi/monetization/internal/LtvpRuleProcessor;
    .locals 1

    new-instance v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;-><init>()V

    return-object v0
.end method


# virtual methods
.method public dispatchLtvpRule()V
    .locals 2

    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Fetching LTVP Rule"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;-><init>()V

    iget-object v1, p0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->a:Lcom/inmobi/monetization/internal/ServiceProvider;

    invoke-virtual {v1, v0, p0}, Lcom/inmobi/monetization/internal/ServiceProvider;->getLtvpRule(Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;Lcom/inmobi/monetization/internal/abstraction/IGetLtvpRuleRequestListener;)V

    return-void
.end method

.method public getLtvpRuleConfig(J)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
    .locals 5

    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->getValue()I

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getInstance(Landroid/content/Context;)Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getHardExpiryForLtvpRule()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getHardExpiryForLtvpRule()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Hard Expiry or 1st rule fetch. Default mediation. Fetching Rule"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->dispatchLtvpRule()V

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->clearLtvpRuleCache()V

    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getSoftExpiryForLtvpRule()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Soft Expiry. Default mediation. Fetching Rule"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->dispatchLtvpRule()V

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getLtvpRule(J)I

    move-result v0

    :goto_1
    invoke-static {v0}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->a(I)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Valid rule"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getLtvpRule(J)I

    move-result v0

    goto :goto_1
.end method

.method public onLtvpGetRuleFailed(Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;Lcom/inmobi/monetization/internal/LtvpErrorCode;)V
    .locals 3

    const-string v0, "[InMobi]-[Monetization]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ltvp Rule error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLtvpGetRuleSucceeded(Lcom/inmobi/monetization/internal/GetLtvpRulesRequest;Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;)V
    .locals 3

    const-string v0, "[InMobi]-[Monetization]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ltvp Rule received"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->getRules()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getInstance(Landroid/content/Context;)Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->setLtvpRuleConfig(Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;)V

    return-void
.end method
