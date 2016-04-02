.class public Lorg/apache/james/mime4j/field/address/Mailbox;
.super Lorg/apache/james/mime4j/field/address/Address;
.source "Mailbox.java"


# static fields
.field private static final EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/field/address/DomainList;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final domain:Ljava/lang/String;

.field private final localPart:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final route:Lorg/apache/james/mime4j/field/address/DomainList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lorg/apache/james/mime4j/field/address/DomainList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/DomainList;-><init>(Ljava/util/List;Z)V

    sput-object v0, Lorg/apache/james/mime4j/field/address/Mailbox;->EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/field/address/DomainList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "localPart"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "route"    # Lorg/apache/james/mime4j/field/address/DomainList;
    .param p3, "localPart"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/Address;-><init>()V

    .line 102
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 105
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    :cond_3
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    .line 106
    if-nez p2, :cond_4

    sget-object p2, Lorg/apache/james/mime4j/field/address/Mailbox;->EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/field/address/DomainList;

    .end local p2    # "route":Lorg/apache/james/mime4j/field/address/DomainList;
    :cond_4
    iput-object p2, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->route:Lorg/apache/james/mime4j/field/address/DomainList;

    .line 107
    iput-object p3, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    .line 108
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    move-object p4, v0

    .end local p4    # "domain":Ljava/lang/String;
    :cond_6
    iput-object p4, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    .line 109
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "baseMailbox"    # Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 116
    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/field/address/DomainList;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "route"    # Lorg/apache/james/mime4j/field/address/DomainList;
    .param p2, "localPart"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private getCanonicalizedAddress()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    .line 284
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 4
    .param p0, "rawMailboxString"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 134
    .local v1, "parser":Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    :try_start_0
    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseMailbox()Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildMailbox(Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;)Lorg/apache/james/mime4j/field/address/Mailbox;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/apache/james/mime4j/field/address/parser/ParseException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected final doAddMailboxesTo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/field/address/Mailbox;>;"
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 265
    if-ne p1, p0, :cond_0

    .line 266
    const/4 v1, 0x1

    .line 271
    :goto_0
    return v1

    .line 267
    :cond_0
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/Mailbox;

    if-nez v1, :cond_1

    .line 268
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 270
    check-cast v0, Lorg/apache/james/mime4j/field/address/Mailbox;

    .line 271
    .local v0, "other":Lorg/apache/james/mime4j/field/address/Mailbox;
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/Mailbox;->getCanonicalizedAddress()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/Mailbox;->getCanonicalizedAddress()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    .line 179
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayString(Z)Ljava/lang/String;
    .locals 5
    .param p1, "includeRoute"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 185
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->route:Lorg/apache/james/mime4j/field/address/DomainList;

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    and-int/2addr p1, v2

    .line 186
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    if-eqz p1, :cond_7

    :cond_0
    move v0, v3

    .line 188
    .local v0, "includeAngleBrackets":Z
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    :cond_1
    if-eqz v0, :cond_2

    .line 196
    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :cond_2
    if-eqz p1, :cond_3

    .line 200
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->route:Lorg/apache/james/mime4j/field/address/DomainList;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/DomainList;->toRouteString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    :cond_3
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 207
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_4
    if-eqz v0, :cond_5

    .line 212
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0    # "includeAngleBrackets":Z
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    move v2, v4

    .line 185
    goto :goto_0

    :cond_7
    move v0, v4

    .line 186
    goto :goto_1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 233
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 238
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Lorg/apache/james/mime4j/field/address/DomainList;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->route:Lorg/apache/james/mime4j/field/address/DomainList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/Mailbox;->getCanonicalizedAddress()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
