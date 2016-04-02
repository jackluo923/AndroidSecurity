.class public Lcom/adsdk/sdk/mraid/HttpResponses;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractBooleanHeader(Lorg/apache/http/HttpResponse;Lcom/adsdk/sdk/mraid/ResponseHeader;Z)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/adsdk/sdk/mraid/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/adsdk/sdk/mraid/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0
.end method

.method public static extractHeader(Lorg/apache/http/HttpResponse;Lcom/adsdk/sdk/mraid/ResponseHeader;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/adsdk/sdk/mraid/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static extractIntHeader(Lorg/apache/http/HttpResponse;Lcom/adsdk/sdk/mraid/ResponseHeader;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/adsdk/sdk/mraid/HttpResponses;->extractIntegerHeader(Lorg/apache/http/HttpResponse;Lcom/adsdk/sdk/mraid/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public static extractIntegerHeader(Lorg/apache/http/HttpResponse;Lcom/adsdk/sdk/mraid/ResponseHeader;)Ljava/lang/Integer;
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    invoke-static {p0, p1}, Lcom/adsdk/sdk/mraid/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/adsdk/sdk/mraid/ResponseHeader;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
