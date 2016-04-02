.class public abstract Lorg/apache/james/mime4j/message/Entity;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Disposable;


# instance fields
.field private body:Lorg/apache/james/mime4j/message/Body;

.field private header:Lorg/apache/james/mime4j/message/Header;

.field private parent:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 40
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 41
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 48
    return-void
.end method

.method protected constructor <init>(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 3
    .param p1, "other"    # Lorg/apache/james/mime4j/message/Entity;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 40
    iput-object v1, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 41
    iput-object v1, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 68
    iget-object v1, p1, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lorg/apache/james/mime4j/message/Header;

    iget-object v2, p1, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/message/Header;-><init>(Lorg/apache/james/mime4j/message/Header;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 72
    :cond_0
    iget-object v1, p1, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p1, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    invoke-static {v1}, Lorg/apache/james/mime4j/message/BodyCopier;->copy(Lorg/apache/james/mime4j/message/Body;)Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    .line 74
    .local v0, "bodyCopy":Lorg/apache/james/mime4j/message/Body;
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 76
    .end local v0    # "bodyCopy":Lorg/apache/james/mime4j/message/Body;
    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    invoke-interface {v0}, Lorg/apache/james/mime4j/message/Body;->dispose()V

    .line 522
    :cond_0
    return-void
.end method

.method public getBody()Lorg/apache/james/mime4j/message/Body;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-static {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset(Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding"

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    .line 318
    .local v0, "f":Lorg/apache/james/mime4j/field/ContentTransferEncodingField;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding(Lorg/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDispositionType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/Entity;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    .line 342
    .local v0, "field":Lorg/apache/james/mime4j/field/ContentDispositionField;
    if-nez v0, :cond_0

    .line 343
    const/4 v1, 0x0

    .line 345
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getDispositionType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 441
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/Entity;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    .line 442
    .local v0, "field":Lorg/apache/james/mime4j/field/ContentDispositionField;
    if-nez v0, :cond_0

    .line 443
    const/4 v1, 0x0

    .line 445
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getFilename()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHeader()Lorg/apache/james/mime4j/message/Header;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 291
    .local v0, "child":Lorg/apache/james/mime4j/field/ContentTypeField;
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/field/ContentTypeField;

    move-object v1, v2

    .line 296
    .local v1, "parent":Lorg/apache/james/mime4j/field/ContentTypeField;
    :goto_0
    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType(Lorg/apache/james/mime4j/field/ContentTypeField;Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 291
    .end local v1    # "parent":Lorg/apache/james/mime4j/field/ContentTypeField;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .locals 3

    .prologue
    .line 503
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 505
    .local v0, "f":Lorg/apache/james/mime4j/field/ContentTypeField;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/apache/james/mime4j/parser/Field;",
            ">(",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    .line 549
    .local v1, "header":Lorg/apache/james/mime4j/message/Header;
    if-nez v1, :cond_0

    .line 550
    const/4 v0, 0x0

    .line 554
    :goto_0
    return-object v0

    .line 553
    :cond_0
    invoke-virtual {v1, p1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    .line 554
    .local v0, "field":Lorg/apache/james/mime4j/parser/Field;, "TF;"
    goto :goto_0
.end method

.method obtainHeader()Lorg/apache/james/mime4j/message/Header;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 534
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-object v0
.end method

.method public removeBody()Lorg/apache/james/mime4j/message/Body;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v2, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 154
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 151
    .local v0, "body":Lorg/apache/james/mime4j/message/Body;
    iput-object v1, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 152
    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/message/Body;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    goto :goto_0
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;)V
    .locals 2
    .param p1, "body"    # Lorg/apache/james/mime4j/message/Body;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "body already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 136
    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/message/Body;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    .line 137
    return-void
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;)V
    .locals 1
    .param p1, "body"    # Lorg/apache/james/mime4j/message/Body;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    .line 258
    return-void
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "body"    # Lorg/apache/james/mime4j/message/Body;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/message/Body;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 277
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 278
    .local v0, "header":Lorg/apache/james/mime4j/message/Header;
    invoke-static {p2, p3}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentTypeField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 279
    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 8
    .param p1, "dispositionType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 358
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v7

    .line 359
    .local v7, "header":Lorg/apache/james/mime4j/message/Header;
    const-wide/16 v2, -0x1

    move-object v0, p1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 361
    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "dispositionType"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 376
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v7

    .line 377
    .local v7, "header":Lorg/apache/james/mime4j/message/Header;
    const-wide/16 v2, -0x1

    move-object v0, p1

    move-object v1, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 379
    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "dispositionType"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    const/4 v4, 0x0

    .line 398
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v7

    .local v7, "header":Lorg/apache/james/mime4j/message/Header;
    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-object v5, v4

    move-object v6, v4

    .line 399
    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 401
    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 2
    .param p1, "dispositionType"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "creationDate"    # Ljava/util/Date;
    .param p6, "modificationDate"    # Ljava/util/Date;
    .param p7, "readDate"    # Ljava/util/Date;

    .prologue
    .line 428
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 429
    .local v0, "header":Lorg/apache/james/mime4j/message/Header;
    invoke-static/range {p1 .. p7}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 431
    return-void
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 330
    .local v0, "header":Lorg/apache/james/mime4j/message/Header;
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->contentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 331
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 11
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 459
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v9

    .line 460
    .local v9, "header":Lorg/apache/james/mime4j/message/Header;
    const-string v0, "Content-Disposition"

    invoke-virtual {v9, v0}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v8

    check-cast v8, Lorg/apache/james/mime4j/field/ContentDispositionField;

    .line 462
    .local v8, "field":Lorg/apache/james/mime4j/field/ContentDispositionField;
    if-nez v8, :cond_1

    .line 463
    if-eqz p1, :cond_0

    .line 464
    const-string v0, "attachment"

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getDispositionType()Ljava/lang/String;

    move-result-object v7

    .line 470
    .local v7, "dispositionType":Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 472
    .local v10, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_2

    .line 473
    const-string v0, "filename"

    invoke-interface {v10, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :goto_1
    invoke-static {v7, v10}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_0

    .line 475
    :cond_2
    const-string v0, "filename"

    invoke-interface {v10, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setHeader(Lorg/apache/james/mime4j/message/Header;)V
    .locals 0
    .param p1, "header"    # Lorg/apache/james/mime4j/message/Header;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 114
    return-void
.end method

.method public setMessage(Lorg/apache/james/mime4j/message/Message;)V
    .locals 2
    .param p1, "message"    # Lorg/apache/james/mime4j/message/Message;

    .prologue
    .line 166
    const-string v0, "message/rfc822"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    .line 167
    return-void
.end method

.method public setMultipart(Lorg/apache/james/mime4j/message/Multipart;)V
    .locals 4
    .param p1, "multipart"    # Lorg/apache/james/mime4j/message/Multipart;

    .prologue
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multipart/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "mimeType":Ljava/lang/String;
    const-string v2, "boundary"

    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 183
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    return-void
.end method

.method public setMultipart(Lorg/apache/james/mime4j/message/Multipart;Ljava/util/Map;)V
    .locals 4
    .param p1, "multipart"    # Lorg/apache/james/mime4j/message/Multipart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/message/Multipart;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multipart/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "mimeType":Ljava/lang/String;
    const-string v2, "boundary"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 201
    .end local p2    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "boundary"

    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v1

    .line 204
    .end local v1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p2    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    .line 205
    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/james/mime4j/message/Entity;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 96
    return-void
.end method

.method public setText(Lorg/apache/james/mime4j/message/TextBody;)V
    .locals 1
    .param p1, "textBody"    # Lorg/apache/james/mime4j/message/TextBody;

    .prologue
    .line 217
    const-string v0, "plain"

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/Entity;->setText(Lorg/apache/james/mime4j/message/TextBody;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public setText(Lorg/apache/james/mime4j/message/TextBody;Ljava/lang/String;)V
    .locals 5
    .param p1, "textBody"    # Lorg/apache/james/mime4j/message/TextBody;
    .param p2, "subtype"    # Ljava/lang/String;

    .prologue
    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "text/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "mimeType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 237
    .local v2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/TextBody;->getMimeCharset()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "mimeCharset":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "us-ascii"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 239
    const-string v3, "charset"

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 242
    :cond_0
    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    return-void
.end method
