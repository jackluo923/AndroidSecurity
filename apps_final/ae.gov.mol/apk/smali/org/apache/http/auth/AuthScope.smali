.class public Lorg/apache/http/auth/AuthScope;
.super Ljava/lang/Object;
.source "AuthScope.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final ANY:Lorg/apache/http/auth/AuthScope;

.field public static final ANY_HOST:Ljava/lang/String;

.field public static final ANY_PORT:I = -0x1

.field public static final ANY_REALM:Ljava/lang/String;

.field public static final ANY_SCHEME:Ljava/lang/String;


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I

.field private final realm:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-object v0, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    .line 60
    sput-object v0, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    .line 65
    sput-object v0, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    .line 72
    new-instance v0, Lorg/apache/http/auth/AuthScope;

    sget-object v1, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v4, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 142
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v1, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "realm"    # Ljava/lang/String;

    .prologue
    .line 127
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "scheme"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-nez p1, :cond_2

    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    .line 107
    if-gez p2, :cond_0

    const/4 p2, -0x1

    .end local p2    # "port":I
    :cond_0
    iput p2, p0, Lorg/apache/http/auth/AuthScope;->port:I

    .line 108
    if-nez p3, :cond_1

    sget-object p3, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    .end local p3    # "realm":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    .line 109
    if-nez p4, :cond_3

    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 110
    return-void

    .line 106
    .restart local p2    # "port":I
    .restart local p3    # "realm":Ljava/lang/String;
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    .end local p2    # "port":I
    .end local p3    # "realm":Ljava/lang/String;
    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>(Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthScope;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/http/auth/AuthScope;->port:I

    .line 155
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthScope;->getRealm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthScope;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    if-nez p1, :cond_1

    move v1, v2

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    if-eq p1, p0, :cond_0

    .line 238
    instance-of v3, p1, Lorg/apache/http/auth/AuthScope;

    if-nez v3, :cond_2

    .line 239
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 241
    check-cast v0, Lorg/apache/http/auth/AuthScope;

    .line 242
    .local v0, "that":Lorg/apache/http/auth/AuthScope;
    iget-object v3, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/apache/http/auth/AuthScope;->port:I

    iget v4, v0, Lorg/apache/http/auth/AuthScope;->port:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lorg/apache/http/auth/AuthScope;->port:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 282
    const/16 v0, 0x11

    .line 283
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 284
    iget v1, p0, Lorg/apache/http/auth/AuthScope;->port:I

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 285
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 286
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 287
    return v0
.end method

.method public match(Lorg/apache/http/auth/AuthScope;)I
    .locals 4
    .param p1, "that"    # Lorg/apache/http/auth/AuthScope;

    .prologue
    const/4 v1, -0x1

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "factor":I
    iget-object v2, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    add-int/lit8 v0, v0, 0x1

    .line 203
    :cond_0
    iget-object v2, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 204
    add-int/lit8 v0, v0, 0x2

    .line 210
    :cond_1
    iget v2, p0, Lorg/apache/http/auth/AuthScope;->port:I

    iget v3, p1, Lorg/apache/http/auth/AuthScope;->port:I

    if-ne v2, v3, :cond_6

    .line 211
    add-int/lit8 v0, v0, 0x4

    .line 217
    :cond_2
    iget-object v2, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 218
    add-int/lit8 v0, v0, 0x8

    :cond_3
    move v1, v0

    .line 224
    :goto_0
    return v1

    .line 199
    :cond_4
    iget-object v2, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 206
    :cond_5
    iget-object v2, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 213
    :cond_6
    iget v2, p0, Lorg/apache/http/auth/AuthScope;->port:I

    if-eq v2, v1, :cond_2

    iget v2, p1, Lorg/apache/http/auth/AuthScope;->port:I

    if-eq v2, v1, :cond_2

    goto :goto_0

    .line 220
    :cond_7
    iget-object v2, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p1, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    :cond_0
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 260
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    :goto_0
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 267
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    iget v1, p0, Lorg/apache/http/auth/AuthScope;->port:I

    if-ltz v1, :cond_1

    .line 270
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    iget v1, p0, Lorg/apache/http/auth/AuthScope;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 274
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 264
    :cond_2
    const-string v1, "<any realm>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
