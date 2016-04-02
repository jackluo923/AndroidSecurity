.class public Lmobi/monaca/framework/MonacaURI$QueryParam;
.super Ljava/lang/Object;
.source "MonacaURI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/MonacaURI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryParam"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field final synthetic this$0:Lmobi/monaca/framework/MonacaURI;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/MonacaURI;Ljava/lang/String;)V
    .locals 4
    .param p2, "baseParam"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 189
    iput-object p1, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->this$0:Lmobi/monaca/framework/MonacaURI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    sget v1, Lmobi/monaca/framework/psedo/R$string;->equal:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "keyAndValue":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 192
    :cond_0
    iput-object p2, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->key:Ljava/lang/String;

    .line 193
    iput-object v3, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->value:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iput-object v3, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->key:Ljava/lang/String;

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->key:Ljava/lang/String;

    .line 200
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->value:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getDecodedKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->key:Ljava/lang/String;

    sget-object v2, Lmobi/monaca/framework/MonacaURI;->URL_ENCODE:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    :goto_0
    return-object v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->key:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDecodedValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->value:Ljava/lang/String;

    sget-object v2, Lmobi/monaca/framework/MonacaURI;->URL_ENCODE:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 224
    :goto_0
    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/MonacaURI$QueryParam;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
