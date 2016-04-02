.class public final Lcom/appyet/g/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appyet/g/b/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/appyet/g/c/b;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    const-string v1, "double"

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appyet/g/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/appyet/g/c/b;

    move-result-object v0

    return-object v0
.end method
