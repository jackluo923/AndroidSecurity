.class public final Lcom/google/zxing/client/android/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/HttpHelper$1;,
        Lcom/google/zxing/client/android/HttpHelper$ContentType;
    }
.end annotation


# static fields
.field private static final REDIRECTOR_DOMAINS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    const-class v0, Lcom/google/zxing/client/android/HttpHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "amzn.to"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "bit.ly"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bitly.com"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "fb.me"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "goo.gl"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "is.gd"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "j.mp"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "lnkd.in"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ow.ly"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "R.BEETAGG.COM"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "r.beetagg.com"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "SCN.BY"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "su.pr"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "t.co"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "tinyurl.com"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "tr.im"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/zxing/client/android/HttpHelper;->REDIRECTOR_DOMAINS:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static consume(Ljava/net/URLConnection;I)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "connection"    # Ljava/net/URLConnection;
    .param p1, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {p0}, Lcom/google/zxing/client/android/HttpHelper;->getEncoding(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "encoding":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v5, "out":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 147
    .local v3, "in":Ljava/io/Reader;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    .end local v3    # "in":Ljava/io/Reader;
    .local v4, "in":Ljava/io/Reader;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [C

    .line 150
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v6, p1, :cond_1

    invoke-virtual {v4, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "charsRead":I
    if-lez v1, :cond_1

    .line 151
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    .end local v0    # "buffer":[C
    .end local v1    # "charsRead":I
    :catchall_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/Reader;
    .restart local v3    # "in":Ljava/io/Reader;
    :goto_1
    if-eqz v3, :cond_0

    .line 156
    :try_start_2
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 161
    :cond_0
    :goto_2
    throw v6

    .line 154
    .end local v3    # "in":Ljava/io/Reader;
    .restart local v0    # "buffer":[C
    .restart local v4    # "in":Ljava/io/Reader;
    :cond_1
    if-eqz v4, :cond_2

    .line 156
    :try_start_3
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 164
    :cond_2
    :goto_3
    return-object v5

    .line 157
    :catch_0
    move-exception v6

    goto :goto_3

    .line 159
    :catch_1
    move-exception v6

    goto :goto_3

    .line 157
    .end local v0    # "buffer":[C
    .end local v4    # "in":Ljava/io/Reader;
    .restart local v3    # "in":Ljava/io/Reader;
    :catch_2
    move-exception v7

    goto :goto_2

    .line 159
    :catch_3
    move-exception v7

    goto :goto_2

    .line 154
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method public static downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/google/zxing/client/android/HttpHelper$ContentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;I)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/google/zxing/client/android/HttpHelper$ContentType;
    .param p2, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v1, Lcom/google/zxing/client/android/HttpHelper$1;->$SwitchMap$com$google$zxing$client$android$HttpHelper$ContentType:[I

    invoke-virtual {p1}, Lcom/google/zxing/client/android/HttpHelper$ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 85
    const-string v0, "text/*,*/*"

    .line 87
    .local v0, "contentTypes":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0, p2}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 78
    .end local v0    # "contentTypes":Ljava/lang/String;
    :pswitch_0
    const-string v0, "application/xhtml+xml,text/html,text/*,*/*"

    .line 79
    .restart local v0    # "contentTypes":Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v0    # "contentTypes":Ljava/lang/String;
    :pswitch_1
    const-string v0, "application/json,text/*,*/*"

    .line 82
    .restart local v0    # "contentTypes":Ljava/lang/String;
    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static downloadViaHttp(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "contentTypes"    # Ljava/lang/String;
    .param p2, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    sget-object v6, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 94
    .local v0, "conn":Ljava/net/URLConnection;
    instance-of v6, v0, Ljava/net/HttpURLConnection;

    if-nez v6, :cond_0

    .line 95
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    :cond_0
    move-object v1, v0

    .line 97
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 98
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const-string v6, "Accept"

    invoke-virtual {v1, v6, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v6, "Accept-Charset"

    const-string v7, "utf-8,*"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v6, "User-Agent"

    const-string v7, "ZXing (Android)"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 121
    .local v4, "responseCode":I
    const/16 v6, 0xc8

    if-eq v4, v6, :cond_1

    .line 122
    :try_start_2
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad HTTP response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .end local v4    # "responseCode":I
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v6

    .line 104
    :catch_0
    move-exception v3

    .line 106
    .local v3, "npe":Ljava/lang/NullPointerException;
    :try_start_3
    sget-object v6, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad URI? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 108
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 110
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad URI? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 116
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 118
    .restart local v3    # "npe":Ljava/lang/NullPointerException;
    sget-object v6, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad URI? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 124
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    .restart local v4    # "responseCode":I
    :cond_1
    sget-object v6, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Consuming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v1, p2}, Lcom/google/zxing/client/android/HttpHelper;->consume(Ljava/net/URLConnection;I)Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 127
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v6
.end method

.method private static getEncoding(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 3
    .param p0, "connection"    # Ljava/net/URLConnection;

    .prologue
    .line 132
    const-string v2, "Content-Type"

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "contentTypeHeader":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 134
    const-string v2, "charset="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 135
    .local v0, "charsetStart":I
    if-ltz v0, :cond_0

    .line 136
    const-string v2, "charset="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    .end local v0    # "charsetStart":I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "UTF-8"

    goto :goto_0
.end method

.method public static unredirect(Ljava/net/URI;)Ljava/net/URI;
    .locals 10
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 168
    sget-object v7, Lcom/google/zxing/client/android/HttpHelper;->REDIRECTOR_DOMAINS:Ljava/util/Collection;

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 219
    .end local p0    # "uri":Ljava/net/URI;
    :goto_0
    return-object p0

    .line 171
    .restart local p0    # "uri":Ljava/net/URI;
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6

    .line 173
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 174
    .local v0, "conn":Ljava/net/URLConnection;
    instance-of v7, v0, Ljava/net/HttpURLConnection;

    if-nez v7, :cond_1

    .line 175
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    :cond_1
    move-object v1, v0

    .line 177
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 178
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 179
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 180
    const-string v7, "HEAD"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 181
    const-string v7, "User-Agent"

    const-string v8, "ZXing (Android)"

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 202
    .local v5, "responseCode":I
    packed-switch v5, :pswitch_data_0

    .line 219
    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 185
    .end local v5    # "responseCode":I
    :catch_0
    move-exception v4

    .line 187
    .local v4, "npe":Ljava/lang/NullPointerException;
    :try_start_2
    sget-object v7, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad URI? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v7

    .line 189
    :catch_1
    move-exception v2

    .line 191
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_3
    sget-object v7, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad URI? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 197
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 199
    .restart local v4    # "npe":Ljava/lang/NullPointerException;
    sget-object v7, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad URI? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 208
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    .restart local v5    # "responseCode":I
    :pswitch_1
    const-string v7, "Location"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 209
    .local v3, "location":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 211
    :try_start_4
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 219
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object p0, v7

    goto/16 :goto_0

    .line 212
    :catch_3
    move-exception v7

    goto :goto_1

    .line 202
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
