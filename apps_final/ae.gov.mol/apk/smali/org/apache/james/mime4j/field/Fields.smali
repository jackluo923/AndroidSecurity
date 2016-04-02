.class public Lorg/apache/james/mime4j/field/Fields;
.super Ljava/lang/Object;
.source "Fields.java"


# static fields
.field private static final FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "[\\x21-\\x39\\x3b-\\x7e]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/Fields;->FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

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

.method public static addressList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/field/address/Address;>;"
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 554
    invoke-static {p0, p1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method private static addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    .prologue
    .line 576
    .local p1, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/field/address/Address;>;"
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "fieldValue":Ljava/lang/String;
    sget-object v1, Lorg/apache/james/mime4j/field/AddressListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {v1, p0, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/AddressListField;

    return-object v1
.end method

.method public static bcc(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/field/address/Address;>;"
    const-string v0, "Bcc"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static bcc(Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 2
    .param p0, "address"    # Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 439
    const-string v0, "Bcc"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs bcc([Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 2
    .param p0, "addresses"    # [Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 450
    const-string v0, "Bcc"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static cc(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/field/address/Address;>;"
    const-string v0, "Cc"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static cc(Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 2
    .param p0, "address"    # Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 406
    const-string v0, "Cc"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs cc([Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 2
    .param p0, "addresses"    # [Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 417
    const-string v0, "Cc"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method private static checkValidFieldName(Ljava/lang/String;)V
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 581
    sget-object v0, Lorg/apache/james/mime4j/field/Fields;->FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid field name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    return-void
.end method

.method public static contentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .locals 2
    .param p0, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 123
    sget-object v0, Lorg/apache/james/mime4j/field/ContentDispositionField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Content-Disposition"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    return-object v0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .locals 7
    .param p0, "dispositionType"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 173
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    return-object v0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/String;J)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .locals 7
    .param p0, "dispositionType"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    const/4 v4, 0x0

    .line 193
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    return-object v0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .locals 4
    .param p0, "dispositionType"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "creationDate"    # Ljava/util/Date;
    .param p5, "modificationDate"    # Ljava/util/Date;
    .param p6, "readDate"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x0

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 225
    const-string v1, "filename"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_1

    .line 228
    const-string v1, "size"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_1
    if-eqz p4, :cond_2

    .line 232
    const-string v1, "creation-date"

    invoke-static {p4, v3}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_2
    if-eqz p5, :cond_3

    .line 236
    const-string v1, "modification-date"

    invoke-static {p5, v3}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_3
    if-eqz p6, :cond_4

    .line 240
    const-string v1, "read-date"

    invoke-static {p6, v3}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_4
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v1

    return-object v1
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .locals 6
    .param p0, "dispositionType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/james/mime4j/field/ContentDispositionField;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->isValidDispositionType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 144
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    :cond_1
    sget-object v4, Lorg/apache/james/mime4j/field/ContentDispositionField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v5, "Content-Disposition"

    invoke-static {v4, v5, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v4

    check-cast v4, Lorg/apache/james/mime4j/field/ContentDispositionField;

    .line 155
    :goto_0
    return-object v4

    .line 148
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 154
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "contentDisposition":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v4

    goto :goto_0
.end method

.method public static contentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTransferEncodingField;
    .locals 2
    .param p0, "contentTransferEncoding"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-object v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Content-Transfer-Encoding"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    return-object v0
.end method

.method public static contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTypeField;
    .locals 2
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lorg/apache/james/mime4j/field/ContentTypeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Content-Type"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    return-object v0
.end method

.method public static contentType(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentTypeField;
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/james/mime4j/field/ContentTypeField;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->isValidMimeType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 81
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    :cond_1
    sget-object v4, Lorg/apache/james/mime4j/field/ContentTypeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v5, "Content-Type"

    invoke-static {v4, v5, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v4

    check-cast v4, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 92
    :goto_0
    return-object v4

    .line 85
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTypeField;

    move-result-object v4

    goto :goto_0
.end method

.method public static date(Ljava/lang/String;Ljava/util/Date;)Lorg/apache/james/mime4j/field/DateTimeField;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 270
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/james/mime4j/field/Fields;->date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method public static date(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 288
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 289
    invoke-static {p0, p1, p2}, Lorg/apache/james/mime4j/field/Fields;->date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method public static date(Ljava/util/Date;)Lorg/apache/james/mime4j/field/DateTimeField;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 255
    const-string v0, "Date"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/james/mime4j/field/Fields;->date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method private static date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 559
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "formattedDate":Ljava/lang/String;
    sget-object v1, Lorg/apache/james/mime4j/field/DateTimeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {v1, p0, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/DateTimeField;

    return-object v1
.end method

.method private static encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/james/mime4j/field/address/Address;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Address;

    .line 621
    .local v0, "address":Lorg/apache/james/mime4j/field/address/Address;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 622
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Address;->getEncodedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 627
    .end local v0    # "address":Lorg/apache/james/mime4j/field/address/Address;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static from(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/field/MailboxListField;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "mailboxes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/field/address/Mailbox;>;"
    const-string v0, "From"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxListField;
    .locals 2
    .param p0, "mailbox"    # Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 340
    const-string v0, "From"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs from([Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxListField;
    .locals 2
    .param p0, "mailboxes"    # [Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 351
    const-string v0, "From"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object v0

    return-object v0
.end method

.method private static isValidDispositionType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dispositionType"    # Ljava/lang/String;

    .prologue
    .line 599
    if-nez p0, :cond_0

    .line 600
    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isValidMimeType(Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 586
    if-nez p0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return v3

    .line 589
    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 590
    .local v0, "idx":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 593
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "type":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "subType":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static mailbox(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "mailbox"    # Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 513
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 514
    invoke-static {p0, p1}, Lorg/apache/james/mime4j/field/Fields;->mailbox0(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;

    move-result-object v0

    return-object v0
.end method

.method private static mailbox0(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "mailbox"    # Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 564
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/Fields;->encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "fieldValue":Ljava/lang/String;
    sget-object v1, Lorg/apache/james/mime4j/field/MailboxField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {v1, p0, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/MailboxField;

    return-object v1
.end method

.method public static mailboxList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/field/MailboxListField;"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "mailboxes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/field/address/Mailbox;>;"
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 532
    invoke-static {p0, p1}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object v0

    return-object v0
.end method

.method private static mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/field/MailboxListField;"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "mailboxes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/field/address/Mailbox;>;"
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "fieldValue":Ljava/lang/String;
    sget-object v1, Lorg/apache/james/mime4j/field/MailboxListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {v1, p0, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/MailboxListField;

    return-object v1
.end method

.method public static messageId(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;
    .locals 3
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {p0}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueMessageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "fieldValue":Ljava/lang/String;
    sget-object v1, Lorg/apache/james/mime4j/field/UnstructuredField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v2, "Message-ID"

    invoke-static {v1, v2, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v1

    return-object v1
.end method

.method private static parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;
    .locals 6
    .param p0, "parser"    # Lorg/apache/james/mime4j/field/FieldParser;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/apache/james/mime4j/parser/Field;",
            ">(",
            "Lorg/apache/james/mime4j/field/FieldParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .prologue
    .line 607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/james/mime4j/util/MimeUtil;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, "rawStr":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v2

    .line 610
    .local v2, "raw":Lorg/apache/james/mime4j/util/ByteSequence;
    invoke-interface {p0, p1, p2, v2}, Lorg/apache/james/mime4j/field/FieldParser;->parse(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v1

    .line 613
    .local v1, "field":Lorg/apache/james/mime4j/parser/Field;
    move-object v0, v1

    .line 614
    .local v0, "f":Lorg/apache/james/mime4j/parser/Field;, "TF;"
    return-object v0
.end method

.method public static replyTo(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/field/address/Address;>;"
    const-string v0, "Reply-To"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static replyTo(Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 2
    .param p0, "address"    # Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 473
    const-string v0, "Reply-To"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs replyTo([Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 2
    .param p0, "addresses"    # [Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 485
    const-string v0, "Reply-To"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static sender(Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;
    .locals 1
    .param p0, "mailbox"    # Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 329
    const-string v0, "Sender"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->mailbox0(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;

    move-result-object v0

    return-object v0
.end method

.method public static subject(Ljava/lang/String;)Lorg/apache/james/mime4j/field/UnstructuredField;
    .locals 4
    .param p0, "subject"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string v2, "Subject"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x2

    .line 315
    .local v1, "usedCharacters":I
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v2, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "fieldValue":Ljava/lang/String;
    sget-object v2, Lorg/apache/james/mime4j/field/UnstructuredField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v3, "Subject"

    invoke-static {v2, v3, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/field/UnstructuredField;

    return-object v2
.end method

.method public static to(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/james/mime4j/field/address/Address;>;"
    const-string v0, "To"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static to(Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 2
    .param p0, "address"    # Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 373
    const-string v0, "To"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs to([Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 2
    .param p0, "addresses"    # [Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 384
    const-string v0, "To"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method
