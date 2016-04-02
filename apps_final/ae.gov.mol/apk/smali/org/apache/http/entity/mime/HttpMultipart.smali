.class public Lorg/apache/http/entity/mime/HttpMultipart;
.super Lorg/apache/james/mime4j/message/Multipart;
.source "HttpMultipart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/entity/mime/HttpMultipart$1;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private static final TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;


# instance fields
.field private mode:Lorg/apache/http/entity/mime/HttpMultipartMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 86
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/Multipart;-><init>(Ljava/lang/String;)V

    .line 92
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 93
    return-void
.end method

.method private doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V
    .locals 19
    .param p1, "mode"    # Lorg/apache/http/entity/mime/HttpMultipartMode;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "writeContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v4

    .line 137
    .local v4, "bodyParts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/message/BodyPart;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    .line 139
    .local v7, "charset":Ljava/nio/charset/Charset;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getBoundary()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v5

    .line 141
    .local v5, "boundary":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart$1;->$SwitchMap$org$apache$http$entity$mime$HttpMultipartMode:[I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getPreamble()Ljava/lang/String;

    move-result-object v15

    .line 144
    .local v15, "preamble":Ljava/lang/String;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_1

    .line 145
    invoke-static {v7, v15}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v3

    .line 146
    .local v3, "b":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 147
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 150
    .end local v3    # "b":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    :cond_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_4

    .line 151
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 152
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 153
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 155
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/james/mime4j/message/BodyPart;

    .line 156
    .local v14, "part":Lorg/apache/james/mime4j/message/BodyPart;
    invoke-virtual {v14}, Lorg/apache/james/mime4j/message/BodyPart;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v11

    .line 158
    .local v11, "header":Lorg/apache/james/mime4j/message/Header;
    invoke-virtual {v11}, Lorg/apache/james/mime4j/message/Header;->getFields()Ljava/util/List;

    move-result-object v10

    .line 159
    .local v10, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/parser/Field;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/james/mime4j/parser/Field;

    .line 160
    .local v9, "field":Lorg/apache/james/mime4j/parser/Field;
    invoke-interface {v9}, Lorg/apache/james/mime4j/parser/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 161
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_2

    .line 163
    .end local v9    # "field":Lorg/apache/james/mime4j/parser/Field;
    :cond_2
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 164
    if-eqz p3, :cond_3

    .line 165
    sget-object v17, Lorg/apache/james/mime4j/message/MessageWriter;->DEFAULT:Lorg/apache/james/mime4j/message/MessageWriter;

    invoke-virtual {v14}, Lorg/apache/james/mime4j/message/BodyPart;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBody(Lorg/apache/james/mime4j/message/Body;Ljava/io/OutputStream;)V

    .line 167
    :cond_3
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 150
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 169
    .end local v10    # "fields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/parser/Field;>;"
    .end local v11    # "header":Lorg/apache/james/mime4j/message/Header;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "part":Lorg/apache/james/mime4j/message/BodyPart;
    :cond_4
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 170
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 171
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 172
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getEpilogue()Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, "epilogue":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_0

    .line 175
    invoke-static {v7, v8}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v3

    .line 176
    .restart local v3    # "b":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 177
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 186
    .end local v3    # "b":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .end local v8    # "epilogue":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v15    # "preamble":Ljava/lang/String;
    :pswitch_1
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_6

    .line 187
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 188
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 189
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 190
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/james/mime4j/message/BodyPart;

    .line 192
    .restart local v14    # "part":Lorg/apache/james/mime4j/message/BodyPart;
    invoke-virtual {v14}, Lorg/apache/james/mime4j/message/BodyPart;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v17

    const-string v18, "Content-Disposition"

    invoke-virtual/range {v17 .. v18}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v6

    .line 194
    .local v6, "cd":Lorg/apache/james/mime4j/parser/Field;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v16, "s":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Lorg/apache/james/mime4j/parser/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-interface {v6}, Lorg/apache/james/mime4j/parser/Field;->getBody()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 199
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 200
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 201
    if-eqz p3, :cond_5

    .line 202
    sget-object v17, Lorg/apache/james/mime4j/message/MessageWriter;->DEFAULT:Lorg/apache/james/mime4j/message/MessageWriter;

    invoke-virtual {v14}, Lorg/apache/james/mime4j/message/BodyPart;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBody(Lorg/apache/james/mime4j/message/Body;Ljava/io/OutputStream;)V

    .line 204
    :cond_5
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 186
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 207
    .end local v6    # "cd":Lorg/apache/james/mime4j/parser/Field;
    .end local v14    # "part":Lorg/apache/james/mime4j/message/BodyPart;
    .end local v16    # "s":Ljava/lang/StringBuilder;
    :cond_6
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 208
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 209
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 210
    sget-object v17, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    .local v1, "encoded":Ljava/nio/ByteBuffer;
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 69
    .local v0, "bab":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    .line 70
    return-object v0
.end method

.method private static writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "b"    # Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 75
    return-void
.end method

.method private static writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "b"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    instance-of v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    if-eqz v0, :cond_0

    .line 79
    check-cast p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .end local p0    # "b":Lorg/apache/james/mime4j/util/ByteSequence;
    invoke-static {p0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 83
    :goto_0
    return-void

    .line 81
    .restart local p0    # "b":Lorg/apache/james/mime4j/util/ByteSequence;
    :cond_0
    invoke-interface {p0}, Lorg/apache/james/mime4j/util/ByteSequence;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method protected getBoundary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v1

    .line 126
    .local v1, "e":Lorg/apache/james/mime4j/message/Entity;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 128
    .local v0, "cField":Lorg/apache/james/mime4j/field/ContentTypeField;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getCharset()Ljava/nio/charset/Charset;
    .locals 5

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    .line 105
    .local v2, "e":Lorg/apache/james/mime4j/message/Entity;
    invoke-virtual {v2}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v3

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 107
    .local v0, "cField":Lorg/apache/james/mime4j/field/ContentTypeField;
    const/4 v1, 0x0

    .line 109
    .local v1, "charset":Ljava/nio/charset/Charset;
    sget-object v3, Lorg/apache/http/entity/mime/HttpMultipart$1;->$SwitchMap$org$apache$http$entity$mime$HttpMultipartMode:[I

    iget-object v4, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-virtual {v4}, Lorg/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 121
    :goto_0
    return-object v1

    .line 111
    :pswitch_0
    sget-object v1, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 112
    goto :goto_0

    .line 114
    :pswitch_1
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    .line 117
    :cond_0
    const-string v3, "ISO-8859-1"

    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMode()Lorg/apache/http/entity/mime/HttpMultipartMode;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    return-object v0
.end method

.method public getTotalLength()J
    .locals 15

    .prologue
    const-wide/16 v11, -0x1

    .line 240
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v1

    .line 242
    .local v1, "bodyParts":Ljava/util/List;, "Ljava/util/List<*>;"
    const-wide/16 v2, 0x0

    .line 243
    .local v2, "contentLen":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_0

    .line 244
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/james/mime4j/message/BodyPart;

    .line 245
    .local v10, "part":Lorg/apache/james/mime4j/message/BodyPart;
    invoke-virtual {v10}, Lorg/apache/james/mime4j/message/BodyPart;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    .line 246
    .local v0, "body":Lorg/apache/james/mime4j/message/Body;
    instance-of v13, v0, Lorg/apache/http/entity/mime/content/ContentBody;

    if-eqz v13, :cond_1

    .line 247
    check-cast v0, Lorg/apache/http/entity/mime/content/ContentBody;

    .end local v0    # "body":Lorg/apache/james/mime4j/message/Body;
    invoke-interface {v0}, Lorg/apache/http/entity/mime/content/ContentBody;->getContentLength()J

    move-result-wide v7

    .line 248
    .local v7, "len":J
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-ltz v13, :cond_1

    .line 249
    add-long/2addr v2, v7

    .line 243
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 258
    .end local v7    # "len":J
    .end local v10    # "part":Lorg/apache/james/mime4j/message/BodyPart;
    :cond_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 260
    .local v9, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v13, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v14, 0x0

    invoke-direct {p0, v13, v9, v14}, Lorg/apache/http/entity/mime/HttpMultipart;->doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 261
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 262
    .local v5, "extra":[B
    array-length v11, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v11, v11

    add-long/2addr v11, v2

    .line 265
    .end local v5    # "extra":[B
    .end local v9    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_1
    return-wide v11

    .line 263
    .restart local v9    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 265
    .local v4, "ex":Ljava/io/IOException;
    goto :goto_1
.end method

.method public setMode(Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .locals 0
    .param p1, "mode"    # Lorg/apache/http/entity/mime/HttpMultipartMode;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 101
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 224
    return-void
.end method
