.class public Lmobi/monaca/framework/MonacaURI;
.super Ljava/lang/Object;
.source "MonacaURI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/MonacaURI$QueryParam;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final URL_ENCODE:Ljava/lang/String;


# instance fields
.field private hasUnusedFragment:Z

.field private originalUri:Ljava/net/URI;

.field private queryParamsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmobi/monaca/framework/MonacaURI$QueryParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget v0, Lmobi/monaca/framework/psedo/R$string;->encoding:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/MonacaURI;->URL_ENCODE:Ljava/lang/String;

    .line 25
    const-class v0, Lmobi/monaca/framework/MonacaURI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/MonacaURI;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmobi/monaca/framework/MonacaURI;->originalUri:Ljava/net/URI;

    .line 34
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaURI;->parseQuery()V

    .line 36
    iget-object v1, p0, Lmobi/monaca/framework/MonacaURI;->originalUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lmobi/monaca/framework/MonacaURI;->hasUnusedFragment:Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_1
    return-void

    .line 36
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method public static buildUrlWithQuery(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "queryJson"    # Lorg/json/JSONObject;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 103
    .end local p0    # "baseUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 71
    .restart local p0    # "baseUrl":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 76
    .local v3, "newUrl":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->and:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 86
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lmobi/monaca/framework/MonacaURI;->URL_ENCODE:Ljava/lang/String;

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->dot:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->dot_encoded:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->and:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_1

    .line 80
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->question:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 91
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_2

    .line 93
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lmobi/monaca/framework/MonacaURI;->URL_ENCODE:Ljava/lang/String;

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->dot:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->dot_encoded:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->equal:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmobi/monaca/framework/MonacaURI;->URL_ENCODE:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->dot:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->dot_encoded:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->and:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto/16 :goto_1

    .line 96
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v4, Lmobi/monaca/framework/MonacaURI;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/monaca/framework/util/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 101
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lmobi/monaca/framework/MonacaURI;->trimLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object p0, v3

    .line 103
    goto/16 :goto_0
.end method

.method public static removeSpecialChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string v1, "\\"

    const-string v2, "\\\\"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v3, "\\\\\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, "\\/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "}"

    const-string v3, "\\}"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lmobi/monaca/framework/MonacaURI;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lmobi/monaca/framework/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v1, Lmobi/monaca/framework/MonacaURI;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lmobi/monaca/framework/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object v0
.end method

.method public static trimLastChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    return-object p0
.end method


# virtual methods
.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lmobi/monaca/framework/MonacaURI;->originalUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryParamsContainingHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "baseHtml"    # Ljava/lang/String;

    .prologue
    .line 142
    sget v7, Lmobi/monaca/framework/psedo/R$string;->script_queryparams_forward:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "paramsString":Ljava/lang/String;
    iget-object v7, p0, Lmobi/monaca/framework/MonacaURI;->queryParamsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/monaca/framework/MonacaURI$QueryParam;

    .line 146
    .local v4, "q":Lmobi/monaca/framework/MonacaURI$QueryParam;
    invoke-virtual {v4}, Lmobi/monaca/framework/MonacaURI$QueryParam;->hasValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lmobi/monaca/framework/MonacaURI$QueryParam;->getDecodedKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmobi/monaca/framework/MonacaURI;->removeSpecialChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lmobi/monaca/framework/MonacaURI$QueryParam;->getDecodedValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmobi/monaca/framework/MonacaURI;->removeSpecialChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "script":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    goto :goto_0

    .line 149
    .end local v5    # "script":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lmobi/monaca/framework/MonacaURI$QueryParam;->getDecodedKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmobi/monaca/framework/MonacaURI;->removeSpecialChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "null,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "script":Ljava/lang/String;
    goto :goto_1

    .line 154
    .end local v4    # "q":Lmobi/monaca/framework/MonacaURI$QueryParam;
    .end local v5    # "script":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Lmobi/monaca/framework/MonacaURI;->trimLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lmobi/monaca/framework/psedo/R$string;->script_queryparams_backward:I

    invoke-static {v8}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 158
    .local v6, "targetHtml":Ljava/lang/String;
    const-string v7, "<head.*?>"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 159
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 161
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 162
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 164
    :goto_2
    return-object v7

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public getUrlWithoutOptions()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lmobi/monaca/framework/MonacaURI;->originalUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmobi/monaca/framework/MonacaURI;->originalUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaURI;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget-object v1, p0, Lmobi/monaca/framework/MonacaURI;->originalUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmobi/monaca/framework/MonacaURI;->originalUri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lmobi/monaca/framework/psedo/R$string;->question:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmobi/monaca/framework/MonacaURI;->originalUri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 116
    goto :goto_0
.end method

.method public hasQueryParams()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmobi/monaca/framework/MonacaURI;->queryParamsArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/MonacaURI;->queryParamsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnusedFragment()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lmobi/monaca/framework/MonacaURI;->hasUnusedFragment:Z

    return v0
.end method

.method public parseQuery()V
    .locals 5

    .prologue
    .line 169
    iget-object v3, p0, Lmobi/monaca/framework/MonacaURI;->originalUri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lmobi/monaca/framework/MonacaURI;->originalUri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v3

    sget v4, Lmobi/monaca/framework/psedo/R$string;->and:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "params":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmobi/monaca/framework/MonacaURI;->queryParamsArrayList:Ljava/util/ArrayList;

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 174
    new-instance v1, Lmobi/monaca/framework/MonacaURI$QueryParam;

    aget-object v3, v2, v0

    invoke-direct {v1, p0, v3}, Lmobi/monaca/framework/MonacaURI$QueryParam;-><init>(Lmobi/monaca/framework/MonacaURI;Ljava/lang/String;)V

    .line 175
    .local v1, "p":Lmobi/monaca/framework/MonacaURI$QueryParam;
    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaURI$QueryParam;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    iget-object v3, p0, Lmobi/monaca/framework/MonacaURI;->queryParamsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "i":I
    .end local v1    # "p":Lmobi/monaca/framework/MonacaURI$QueryParam;
    .end local v2    # "params":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lmobi/monaca/framework/MonacaURI;->queryParamsArrayList:Ljava/util/ArrayList;

    .line 183
    :cond_2
    return-void
.end method

.method public popFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lmobi/monaca/framework/MonacaURI;->hasUnusedFragment:Z

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/monaca/framework/MonacaURI;->hasUnusedFragment:Z

    .line 60
    iget-object v0, p0, Lmobi/monaca/framework/MonacaURI;->originalUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
