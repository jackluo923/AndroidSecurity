.class public final Lorg/apache/james/mime4j/util/MimeUtil;
.super Ljava/lang/Object;
.source "MimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;
    }
.end annotation


# static fields
.field public static final ENC_7BIT:Ljava/lang/String; = "7bit"

.field public static final ENC_8BIT:Ljava/lang/String; = "8bit"

.field public static final ENC_BASE64:Ljava/lang/String; = "base64"

.field public static final ENC_BINARY:Ljava/lang/String; = "binary"

.field public static final ENC_QUOTED_PRINTABLE:Ljava/lang/String; = "quoted-printable"

.field public static final MIME_HEADER_CONTENT_DESCRIPTION:Ljava/lang/String; = "content-description"

.field public static final MIME_HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field public static final MIME_HEADER_CONTENT_ID:Ljava/lang/String; = "content-id"

.field public static final MIME_HEADER_LANGAUGE:Ljava/lang/String; = "content-language"

.field public static final MIME_HEADER_LOCATION:Ljava/lang/String; = "content-location"

.field public static final MIME_HEADER_MD5:Ljava/lang/String; = "content-md5"

.field public static final MIME_HEADER_MIME_VERSION:Ljava/lang/String; = "mime-version"

.field public static final PARAM_CREATION_DATE:Ljava/lang/String; = "creation-date"

.field public static final PARAM_FILENAME:Ljava/lang/String; = "filename"

.field public static final PARAM_MODIFICATION_DATE:Ljava/lang/String; = "modification-date"

.field public static final PARAM_READ_DATE:Ljava/lang/String; = "read-date"

.field public static final PARAM_SIZE:Ljava/lang/String; = "size"

.field private static final RFC822_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static counter:I

.field private static final log:Lorg/apache/commons/logging/Log;

.field private static final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/james/mime4j/util/MimeUtil;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->log:Lorg/apache/commons/logging/Log;

    .line 116
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    .line 119
    const/4 v0, 0x0

    sput v0, Lorg/apache/james/mime4j/util/MimeUtil;->counter:I

    .line 510
    new-instance v0, Lorg/apache/james/mime4j/util/MimeUtil$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/util/MimeUtil$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->RFC822_DATE_FORMAT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method public static createUniqueBoundary()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2e

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "-=Part."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->nextCounterValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v1, "=-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static createUniqueMessageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "hostName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2e

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<Mime4j."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->nextCounterValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    if-eqz p0, :cond_0

    .line 385
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_0
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "usedCharacters"    # I

    .prologue
    const/16 v8, 0x4c

    const/4 v7, 0x0

    .line 431
    const/16 v2, 0x4c

    .line 433
    .local v2, "maxCharacters":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 434
    .local v1, "length":I
    add-int v6, p1, v1

    if-gt v6, v8, :cond_0

    .line 444
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 437
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .local v4, "sb":Ljava/lang/StringBuilder;
    neg-int v0, p1

    .line 440
    .local v0, "lastLineBreak":I
    invoke-static {p0, v7}, Lorg/apache/james/mime4j/util/MimeUtil;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    .line 442
    .local v5, "wspIdx":I
    :goto_1
    if-ne v5, v1, :cond_1

    .line 443
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 447
    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v6}, Lorg/apache/james/mime4j/util/MimeUtil;->indexOfWsp(Ljava/lang/String;I)I

    move-result v3

    .line 449
    .local v3, "nextWspIdx":I
    sub-int v6, v3, v0

    if-le v6, v8, :cond_2

    .line 450
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    move v0, v5

    .line 455
    :cond_2
    move v5, v3

    .line 456
    goto :goto_1
.end method

.method public static formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 403
    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->RFC822_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 405
    .local v0, "df":Ljava/text/DateFormat;
    if-nez p1, :cond_0

    .line 406
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 411
    :goto_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 408
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public static getHeaderParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 25
    .param p0, "pValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-static/range {p0 .. p0}, Lorg/apache/james/mime4j/util/MimeUtil;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 181
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v21, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v23, ";"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 187
    move-object/from16 v17, p0

    .line 188
    .local v17, "main":Ljava/lang/String;
    const/16 v20, 0x0

    .line 194
    .local v20, "rest":Ljava/lang/String;
    :goto_0
    const-string v23, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    if-eqz v20, :cond_a

    .line 196
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 197
    .local v12, "chars":[C
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v23, 0x40

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v18, "paramName":Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v23, 0x40

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v19, "paramValue":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 201
    .local v7, "READY_FOR_NAME":B
    const/4 v4, 0x1

    .line 202
    .local v4, "IN_NAME":B
    const/4 v8, 0x2

    .line 203
    .local v8, "READY_FOR_VALUE":B
    const/4 v6, 0x3

    .line 204
    .local v6, "IN_VALUE":B
    const/4 v5, 0x4

    .line 205
    .local v5, "IN_QUOTED_VALUE":B
    const/4 v9, 0x5

    .line 206
    .local v9, "VALUE_DONE":B
    const/16 v3, 0x63

    .line 208
    .local v3, "ERROR":B
    const/16 v22, 0x0

    .line 209
    .local v22, "state":B
    const/4 v13, 0x0

    .line 210
    .local v13, "escaped":Z
    move-object v10, v12

    .local v10, "arr$":[C
    array-length v0, v10

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    aget-char v11, v10, v15

    .line 211
    .local v11, "c":C
    sparse-switch v22, :sswitch_data_0

    .line 210
    :cond_0
    :goto_2
    :sswitch_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 190
    .end local v3    # "ERROR":B
    .end local v4    # "IN_NAME":B
    .end local v5    # "IN_QUOTED_VALUE":B
    .end local v6    # "IN_VALUE":B
    .end local v7    # "READY_FOR_NAME":B
    .end local v8    # "READY_FOR_VALUE":B
    .end local v9    # "VALUE_DONE":B
    .end local v10    # "arr$":[C
    .end local v11    # "c":C
    .end local v12    # "chars":[C
    .end local v13    # "escaped":Z
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "main":Ljava/lang/String;
    .end local v18    # "paramName":Ljava/lang/StringBuilder;
    .end local v19    # "paramValue":Ljava/lang/StringBuilder;
    .end local v20    # "rest":Ljava/lang/String;
    .end local v22    # "state":B
    :cond_1
    const/16 v23, 0x0

    const-string v24, ";"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 191
    .restart local v17    # "main":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "rest":Ljava/lang/String;
    goto :goto_0

    .line 213
    .restart local v3    # "ERROR":B
    .restart local v4    # "IN_NAME":B
    .restart local v5    # "IN_QUOTED_VALUE":B
    .restart local v6    # "IN_VALUE":B
    .restart local v7    # "READY_FOR_NAME":B
    .restart local v8    # "READY_FOR_VALUE":B
    .restart local v9    # "VALUE_DONE":B
    .restart local v10    # "arr$":[C
    .restart local v11    # "c":C
    .restart local v12    # "chars":[C
    .restart local v13    # "escaped":Z
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    .restart local v18    # "paramName":Ljava/lang/StringBuilder;
    .restart local v19    # "paramValue":Ljava/lang/StringBuilder;
    .restart local v22    # "state":B
    :sswitch_1
    const/16 v23, 0x3b

    move/from16 v0, v23

    if-ne v11, v0, :cond_0

    .line 214
    const/16 v22, 0x0

    goto :goto_2

    .line 218
    :sswitch_2
    const/16 v23, 0x3d

    move/from16 v0, v23

    if-ne v11, v0, :cond_2

    .line 219
    sget-object v23, Lorg/apache/james/mime4j/util/MimeUtil;->log:Lorg/apache/commons/logging/Log;

    const-string v24, "Expected header param name, got \'=\'"

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 220
    const/16 v22, 0x63

    .line 221
    goto :goto_2

    .line 224
    :cond_2
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 225
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 227
    const/16 v22, 0x1

    .line 231
    :sswitch_3
    const/16 v23, 0x3d

    move/from16 v0, v23

    if-ne v11, v0, :cond_4

    .line 232
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-nez v23, :cond_3

    .line 233
    const/16 v22, 0x63

    goto :goto_2

    .line 235
    :cond_3
    const/16 v22, 0x2

    .line 236
    goto :goto_2

    .line 240
    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 244
    :sswitch_4
    const/4 v14, 0x0

    .line 245
    .local v14, "fallThrough":Z
    sparse-switch v11, :sswitch_data_1

    .line 255
    const/16 v22, 0x3

    .line 256
    const/4 v14, 0x1

    .line 259
    :goto_3
    :sswitch_5
    if-eqz v14, :cond_0

    .line 265
    .end local v14    # "fallThrough":Z
    :sswitch_6
    const/4 v14, 0x0

    .line 266
    .restart local v14    # "fallThrough":Z
    sparse-switch v11, :sswitch_data_2

    .line 277
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    :goto_4
    if-eqz v14, :cond_0

    .line 284
    .end local v14    # "fallThrough":Z
    :sswitch_7
    sparse-switch v11, :sswitch_data_3

    .line 294
    const/16 v22, 0x63

    .line 295
    goto/16 :goto_2

    .line 251
    .restart local v14    # "fallThrough":Z
    :sswitch_8
    const/16 v22, 0x4

    .line 252
    goto :goto_3

    .line 270
    :sswitch_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const/16 v22, 0x5

    .line 274
    const/4 v14, 0x1

    .line 275
    goto :goto_4

    .line 286
    .end local v14    # "fallThrough":Z
    :sswitch_a
    const/16 v22, 0x0

    .line 287
    goto/16 :goto_2

    .line 300
    :sswitch_b
    sparse-switch v11, :sswitch_data_4

    .line 322
    if-eqz v13, :cond_5

    .line 323
    const/16 v23, 0x5c

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    :cond_5
    const/4 v13, 0x0

    .line 326
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 302
    :sswitch_c
    if-nez v13, :cond_6

    .line 304
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const/16 v22, 0x5

    goto/16 :goto_2

    .line 309
    :cond_6
    const/4 v13, 0x0

    .line 310
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 315
    :sswitch_d
    if-eqz v13, :cond_7

    .line 316
    const/16 v23, 0x5c

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    :cond_7
    if-nez v13, :cond_8

    const/4 v13, 0x1

    .line 319
    :goto_5
    goto/16 :goto_2

    .line 318
    :cond_8
    const/4 v13, 0x0

    goto :goto_5

    .line 335
    .end local v11    # "c":C
    :cond_9
    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 336
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .end local v3    # "ERROR":B
    .end local v4    # "IN_NAME":B
    .end local v5    # "IN_QUOTED_VALUE":B
    .end local v6    # "IN_VALUE":B
    .end local v7    # "READY_FOR_NAME":B
    .end local v8    # "READY_FOR_VALUE":B
    .end local v9    # "VALUE_DONE":B
    .end local v10    # "arr$":[C
    .end local v12    # "chars":[C
    .end local v13    # "escaped":Z
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v18    # "paramName":Ljava/lang/StringBuilder;
    .end local v19    # "paramValue":Ljava/lang/StringBuilder;
    .end local v22    # "state":B
    :cond_a
    return-object v21

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_6
        0x4 -> :sswitch_b
        0x5 -> :sswitch_7
        0x63 -> :sswitch_1
    .end sparse-switch

    .line 245
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_8
    .end sparse-switch

    .line 266
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_9
        0x20 -> :sswitch_9
        0x3b -> :sswitch_9
    .end sparse-switch

    .line 284
    :sswitch_data_3
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x3b -> :sswitch_a
    .end sparse-switch

    .line 300
    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_c
        0x5c -> :sswitch_d
    .end sparse-switch
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "fromIndex"    # I

    .prologue
    .line 497
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 498
    .local v2, "len":I
    move v1, p1

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 499
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 500
    .local v0, "c":C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    .line 503
    .end local v0    # "c":C
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return v1

    .line 498
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "c":C
    :cond_2
    move v1, v2

    .line 503
    goto :goto_1
.end method

.method public static isBase64Encoding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pTransferEncoding"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "base64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMessage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pMimeType"    # Ljava/lang/String;

    .prologue
    .line 137
    if-eqz p0, :cond_0

    const-string v0, "message/rfc822"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultipart(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pMimeType"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQuotedPrintableEncoded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pTransferEncoding"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "quoted-printable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pType1"    # Ljava/lang/String;
    .param p1, "pType2"    # Ljava/lang/String;

    .prologue
    .line 130
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized nextCounterValue()I
    .locals 3

    .prologue
    .line 507
    const-class v1, Lorg/apache/james/mime4j/util/MimeUtil;

    monitor-enter v1

    :try_start_0
    sget v0, Lorg/apache/james/mime4j/util/MimeUtil;->counter:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lorg/apache/james/mime4j/util/MimeUtil;->counter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 468
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 469
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 470
    .local v0, "c":C
    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 471
    :cond_0
    invoke-static {p0, v1}, Lorg/apache/james/mime4j/util/MimeUtil;->unfold0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 475
    .end local v0    # "c":C
    .end local p0    # "s":Ljava/lang/String;
    :cond_1
    return-object p0

    .line 468
    .restart local v0    # "c":C
    .restart local p0    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static unfold0(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "crlfIdx"    # I

    .prologue
    .line 479
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 480
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 482
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez p1, :cond_0

    .line 483
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .local v1, "idx":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 487
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 488
    .local v0, "c":C
    const/16 v4, 0xd

    if-eq v0, v4, :cond_1

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    .line 489
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
