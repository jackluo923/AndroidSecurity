.class public Lcom/ali/user/mobile/log/GwCommonLogAgent;
.super Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
.source "GwCommonLogAgent.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public logGwCommonRes(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 14
    if-nez p1, :cond_0

    .line 15
    const-string/jumbo v1, "res=null"

    const-string/jumbo v2, "N"

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->resultStatus:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xc8

    iget v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->resultStatus:I

    if-ne v0, v2, :cond_1

    const-string/jumbo v2, "Y"

    :goto_1
    iget-object v6, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->token:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "N"

    goto :goto_1
.end method
