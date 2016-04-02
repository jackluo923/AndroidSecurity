.class public Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHardExpiry()J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->e:J

    return-wide v0
.end method

.method public getRuleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSoftExpiry()J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->d:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->b:J

    return-wide v0
.end method

.method public setHardExpiry(J)V
    .locals 0

    iput-wide p1, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->e:J

    return-void
.end method

.method public setRuleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->a:Ljava/lang/String;

    return-void
.end method

.method public setRules(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->c:Ljava/util/HashMap;

    return-void
.end method

.method public setSoftExpiry(J)V
    .locals 0

    iput-wide p1, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->d:J

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->b:J

    return-void
.end method
