.class public Lcom/alipay/android/phone/discovery/o2ohome/util/UrlCoderHelper;
.super Ljava/lang/Object;
.source "UrlCoderHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decoder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 37
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static decoderUtf8(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/UrlCoderHelper;->decoder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encoder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 28
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static encoderUtf8(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/UrlCoderHelper;->encoder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
