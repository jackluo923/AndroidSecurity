.class public Lorg/apache/james/mime4j/message/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# instance fields
.field private bodyParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/message/BodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

.field private transient epilogueStrCache:Ljava/lang/String;

.field private parent:Lorg/apache/james/mime4j/message/Entity;

.field private preamble:Lorg/apache/james/mime4j/util/ByteSequence;

.field private transient preambleStrCache:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 52
    sget-object v0, Lorg/apache/james/mime4j/util/ByteSequence;->EMPTY:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    .line 54
    sget-object v0, Lorg/apache/james/mime4j/util/ByteSequence;->EMPTY:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/message/Multipart;)V
    .locals 4
    .param p1, "other"    # Lorg/apache/james/mime4j/message/Multipart;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    .line 39
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 79
    iget-object v3, p1, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v3, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 80
    iget-object v3, p1, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    .line 81
    iget-object v3, p1, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v3, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 82
    iget-object v3, p1, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    .line 84
    iget-object v3, p1, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/message/BodyPart;

    .line 85
    .local v2, "otherBodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    new-instance v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/message/BodyPart;-><init>(Lorg/apache/james/mime4j/message/BodyPart;)V

    .line 86
    .local v0, "bodyPartCopy":Lorg/apache/james/mime4j/message/BodyPart;
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Multipart;->addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V

    goto :goto_0

    .line 89
    .end local v0    # "bodyPartCopy":Lorg/apache/james/mime4j/message/BodyPart;
    .end local v2    # "otherBodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    :cond_0
    iget-object v3, p1, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V
    .locals 1
    .param p1, "bodyPart"    # Lorg/apache/james/mime4j/message/BodyPart;

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    .line 175
    return-void
.end method

.method public addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;I)V
    .locals 1
    .param p1, "bodyPart"    # Lorg/apache/james/mime4j/message/BodyPart;
    .param p2, "index"    # I

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    .line 194
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 314
    iget-object v2, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 315
    .local v0, "bodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/BodyPart;->dispose()V

    goto :goto_0

    .line 317
    .end local v0    # "bodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    :cond_0
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/message/BodyPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEpilogue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    return-object v0
.end method

.method getEpilogueRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public getPreamble()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    return-object v0
.end method

.method getPreambleRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public removeBodyPart(I)Lorg/apache/james/mime4j/message/BodyPart;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 209
    .local v0, "bodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    .line 210
    return-object v0
.end method

.method public replaceBodyPart(Lorg/apache/james/mime4j/message/BodyPart;I)Lorg/apache/james/mime4j/message/BodyPart;
    .locals 3
    .param p1, "bodyPart"    # Lorg/apache/james/mime4j/message/BodyPart;
    .param p2, "index"    # I

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 230
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 231
    .local v0, "replacedBodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    if-ne p1, v0, :cond_1

    .line 232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot replace body part with itself"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, v1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    .line 236
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    .line 238
    return-object v0
.end method

.method public setBodyParts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/message/BodyPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "bodyParts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/message/BodyPart;>;"
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 159
    .local v0, "bodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    iget-object v2, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    goto :goto_0

    .line 161
    .end local v0    # "bodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    :cond_0
    return-void
.end method

.method public setEpilogue(Ljava/lang/String;)V
    .locals 1
    .param p1, "epilogue"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 304
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    .line 305
    return-void
.end method

.method setEpilogueRaw(Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 1
    .param p1, "epilogue"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 280
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 3
    .param p1, "parent"    # Lorg/apache/james/mime4j/message/Entity;

    .prologue
    .line 126
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 127
    iget-object v2, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 128
    .local v0, "bodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    goto :goto_0

    .line 130
    .end local v0    # "bodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    :cond_0
    return-void
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 1
    .param p1, "preamble"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 271
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    .line 272
    return-void
.end method

.method setPreambleRaw(Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 1
    .param p1, "preamble"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    .line 113
    return-void
.end method
