.class public final Lcom/alipay/mobile/common/misc/MoneyUtil;
.super Ljava/lang/Object;
.source "MoneyUtil.java"


# static fields
.field public static final ZERO:Ljava/lang/String; = "0.00"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static formatMoney(D)Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/text/DecimalFormat;

    .line 72
    const-string/jumbo v1, "###,###,###,##0.00"

    .line 71
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMoney(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo p0, "0.00"

    .line 60
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/misc/MoneyUtil;->formatMoney(D)Ljava/lang/String;

    move-result-object v0

    .line 61
    return-object v0
.end method

.method public static formatMoney(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    const/4 v1, 0x1

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/misc/MoneyUtil;->formatMoney(D)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    return-object v0
.end method

.method public static moneyWithUnit(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "\u5143"

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/misc/MoneyUtil;->moneyWithUnit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static moneyWithUnit(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo p0, "0.00"

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alipay/mobile/common/misc/MoneyUtil;->formatMoney(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
