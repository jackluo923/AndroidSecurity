.class public Lorg/apache/james/mime4j/message/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/james/mime4j/parser/Field;",
        ">;"
    }
.end annotation


# instance fields
.field private fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/parser/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/parser/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeIOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    .line 43
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    .line 77
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>()V

    .line 78
    .local v1, "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    new-instance v2, Lorg/apache/james/mime4j/message/Header$1;

    invoke-direct {v2, p0, v1}, Lorg/apache/james/mime4j/message/Header$1;-><init>(Lorg/apache/james/mime4j/message/Header;Lorg/apache/james/mime4j/parser/MimeStreamParser;)V

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 89
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "ex":Lorg/apache/james/mime4j/MimeException;
    new-instance v2, Lorg/apache/james/mime4j/MimeIOException;

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    throw v2
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/message/Header;)V
    .locals 3
    .param p1, "other"    # Lorg/apache/james/mime4j/message/Header;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    .line 43
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    .line 62
    iget-object v2, p1, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/parser/Field;

    .line 63
    .local v1, "otherField":Lorg/apache/james/mime4j/parser/Field;
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_0

    .line 65
    .end local v1    # "otherField":Lorg/apache/james/mime4j/parser/Field;
    :cond_0
    return-void
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/parser/Field;)V
    .locals 3
    .param p1, "field"    # Lorg/apache/james/mime4j/parser/Field;

    .prologue
    .line 101
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 102
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/parser/Field;>;"
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/parser/Field;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 104
    .restart local v0    # "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/parser/Field;>;"
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 129
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/parser/Field;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/parser/Field;

    .line 132
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/parser/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/parser/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "lowerCaseName":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 145
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/parser/Field;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 150
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/parser/Field;>;"
    :goto_0
    return-object v2

    .line 148
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/parser/Field;>;"
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .restart local v2    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/parser/Field;>;"
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/james/mime4j/parser/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeFields(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "lowerCaseName":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 172
    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/parser/Field;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    :cond_0
    const/4 v4, 0x0

    .line 181
    :goto_0
    return v4

    .line 175
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/james/mime4j/parser/Field;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/parser/Field;

    .line 177
    .local v0, "field":Lorg/apache/james/mime4j/parser/Field;
    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 181
    .end local v0    # "field":Lorg/apache/james/mime4j/parser/Field;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0
.end method

.method public setField(Lorg/apache/james/mime4j/parser/Field;)V
    .locals 8
    .param p1, "field"    # Lorg/apache/james/mime4j/parser/Field;

    .prologue
    .line 197
    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, "lowerCaseName":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 199
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/parser/Field;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 220
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 205
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v1, -0x1

    .line 208
    .local v1, "firstOccurrence":I
    const/4 v2, 0x0

    .line 209
    .local v2, "index":I
    iget-object v6, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/james/mime4j/parser/Field;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 210
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/parser/Field;

    .line 211
    .local v0, "f":Lorg/apache/james/mime4j/parser/Field;
    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 212
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 214
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    .line 215
    move v1, v2

    .line 209
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 219
    .end local v0    # "f":Lorg/apache/james/mime4j/parser/Field;
    :cond_3
    iget-object v6, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v6, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 231
    .local v2, "str":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/parser/Field;

    .line 232
    .local v0, "field":Lorg/apache/james/mime4j/parser/Field;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 235
    .end local v0    # "field":Lorg/apache/james/mime4j/parser/Field;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
