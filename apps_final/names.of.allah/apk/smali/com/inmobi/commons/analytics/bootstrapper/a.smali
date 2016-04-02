.class final Lcom/inmobi/commons/analytics/bootstrapper/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/commons/cache/CacheController$Validator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final validate(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->a(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method
