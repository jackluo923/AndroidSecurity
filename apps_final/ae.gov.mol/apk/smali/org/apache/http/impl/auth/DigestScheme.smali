.class public Lorg/apache/http/impl/auth/DigestScheme;
.super Lorg/apache/http/impl/auth/RFC2617Scheme;
.source "DigestScheme.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final HEXADECIMAL:[C

.field private static final NC:Ljava/lang/String; = "00000001"

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I


# instance fields
.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private qopVariant:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>()V

    .line 97
    iput v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    .line 105
    iput-boolean v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    .line 106
    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 4

    .prologue
    .line 472
    const-string v2, "MD5"

    invoke-static {v2}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 474
    .local v1, "md5Helper":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "cnonce":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 477
    return-object v0
.end method

.method private createDigest(Lorg/apache/http/auth/Credentials;)Ljava/lang/String;
    .locals 25
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 255
    const-string v23, "uri"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 256
    .local v22, "uri":Ljava/lang/String;
    const-string v23, "realm"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 257
    .local v15, "realm":Ljava/lang/String;
    const-string v23, "nonce"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 258
    .local v12, "nonce":Ljava/lang/String;
    const-string v23, "methodname"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 259
    .local v11, "method":Ljava/lang/String;
    const-string v23, "algorithm"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "algorithm":Ljava/lang/String;
    if-nez v22, :cond_0

    .line 261
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "URI may not be null"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 263
    :cond_0
    if-nez v15, :cond_1

    .line 264
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Realm may not be null"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 266
    :cond_1
    if-nez v12, :cond_2

    .line 267
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Nonce may not be null"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 270
    :cond_2
    if-nez v4, :cond_3

    .line 271
    const-string v4, "MD5"

    .line 274
    :cond_3
    const-string v23, "charset"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "charset":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 276
    const-string v5, "ISO-8859-1"

    .line 279
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 280
    new-instance v23, Lorg/apache/http/auth/AuthenticationException;

    const-string v24, "Unsupported qop in HTTP Digest authentication"

    invoke-direct/range {v23 .. v24}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 284
    :cond_5
    move-object v7, v4

    .line 285
    .local v7, "digAlg":Ljava/lang/String;
    const-string v23, "MD5-sess"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 286
    const-string v7, "MD5"

    .line 288
    :cond_6
    invoke-static {v7}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 290
    .local v8, "digester":Ljava/security/MessageDigest;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v21

    .line 291
    .local v21, "uname":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v13

    .line 294
    .local v13, "pwd":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    add-int/lit8 v23, v23, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 295
    .local v18, "tmp":Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const/16 v23, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const/16 v23, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "a1":Ljava/lang/String;
    const-string v23, "MD5-sess"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 309
    const-string v4, "MD5"

    .line 310
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, "cnonce":Ljava/lang/String;
    invoke-static {v2, v5}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v19

    .line 313
    .local v19, "tmp2":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    add-int/lit8 v23, v23, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 315
    .local v20, "tmp3":Ljava/lang/StringBuilder;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const/16 v23, 0x3a

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const/16 v23, 0x3a

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .end local v6    # "cnonce":Ljava/lang/String;
    .end local v19    # "tmp2":Ljava/lang/String;
    .end local v20    # "tmp3":Ljava/lang/StringBuilder;
    :cond_7
    invoke-static {v2, v5}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, "hasha1":Ljava/lang/String;
    const/4 v3, 0x0

    .line 325
    .local v3, "a2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 332
    :goto_0
    invoke-static {v3}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v10

    .line 336
    .local v10, "hasha2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    move/from16 v23, v0

    if-nez v23, :cond_9

    .line 337
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 339
    .local v19, "tmp2":Ljava/lang/StringBuilder;
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const/16 v23, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const/16 v23, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 365
    .local v17, "serverDigestValue":Ljava/lang/String;
    :goto_1
    invoke-static/range {v17 .. v17}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v16

    .line 368
    .local v16, "serverDigest":Ljava/lang/String;
    return-object v16

    .line 330
    .end local v10    # "hasha2":Ljava/lang/String;
    .end local v16    # "serverDigest":Ljava/lang/String;
    .end local v17    # "serverDigestValue":Ljava/lang/String;
    .end local v19    # "tmp2":Ljava/lang/StringBuilder;
    :cond_8
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x3a

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 346
    .restart local v10    # "hasha2":Ljava/lang/String;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    move-result-object v14

    .line 347
    .local v14, "qopOption":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    move-result-object v6

    .line 349
    .restart local v6    # "cnonce":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    const-string v24, "00000001"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    add-int/lit8 v23, v23, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 351
    .restart local v19    # "tmp2":Ljava/lang/StringBuilder;
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const/16 v23, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const/16 v23, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    const-string v23, "00000001"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const/16 v23, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const/16 v23, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const/16 v23, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "serverDigestValue":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private createDigestHeader(Lorg/apache/http/auth/Credentials;Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 15
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "digest"    # Ljava/lang/String;

    .prologue
    .line 383
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v12, 0x80

    invoke-direct {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 384
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->isProxy()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 385
    const-string v12, "Proxy-Authorization"

    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 389
    :goto_0
    const-string v12, ": Digest "

    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 391
    const-string v12, "uri"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 392
    .local v11, "uri":Ljava/lang/String;
    const-string v12, "realm"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, "realm":Ljava/lang/String;
    const-string v12, "nonce"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "nonce":Ljava/lang/String;
    const-string v12, "opaque"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "opaque":Ljava/lang/String;
    move-object/from16 v9, p2

    .line 396
    .local v9, "response":Ljava/lang/String;
    const-string v12, "algorithm"

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "algorithm":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v10

    .line 400
    .local v10, "uname":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    const/16 v12, 0x14

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 401
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "username"

    invoke-direct {v12, v13, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "realm"

    invoke-direct {v12, v13, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "nonce"

    invoke-direct {v12, v13, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "uri"

    invoke-direct {v12, v13, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "response"

    invoke-direct {v12, v13, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget v12, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    if-eqz v12, :cond_0

    .line 408
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "qop"

    invoke-direct {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "nc"

    const-string v14, "00000001"

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "cnonce"

    invoke-direct {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    if-eqz v0, :cond_1

    .line 413
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "algorithm"

    invoke-direct {v12, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_1
    if-eqz v5, :cond_2

    .line 416
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "opaque"

    invoke-direct {v12, v13, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_8

    .line 420
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/message/BasicNameValuePair;

    .line 421
    .local v6, "param":Lorg/apache/http/message/BasicNameValuePair;
    if-lez v2, :cond_3

    .line 422
    const-string v12, ", "

    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 424
    :cond_3
    const-string v12, "nc"

    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "qop"

    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_4
    const/4 v3, 0x1

    .line 426
    .local v3, "noQuotes":Z
    :goto_2
    sget-object v13, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    if-nez v3, :cond_7

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v1, v6, v12}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 387
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "noQuotes":Z
    .end local v4    # "nonce":Ljava/lang/String;
    .end local v5    # "opaque":Ljava/lang/String;
    .end local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    .end local v7    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v8    # "realm":Ljava/lang/String;
    .end local v9    # "response":Ljava/lang/String;
    .end local v10    # "uname":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    :cond_5
    const-string v12, "Authorization"

    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "nonce":Ljava/lang/String;
    .restart local v5    # "opaque":Ljava/lang/String;
    .restart local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    .restart local v7    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v8    # "realm":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    .restart local v10    # "uname":Ljava/lang/String;
    .restart local v11    # "uri":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 426
    .restart local v3    # "noQuotes":Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 429
    .end local v3    # "noQuotes":Z
    .end local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    :cond_8
    new-instance v12, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v12, v1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v12
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "digAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "binaryData"    # [B

    .prologue
    .line 450
    array-length v4, p0

    .line 451
    .local v4, "n":I
    mul-int/lit8 v5, v4, 0x2

    new-array v0, v5, [C

    .line 452
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 453
    aget-byte v5, p0, v2

    and-int/lit8 v3, v5, 0xf

    .line 454
    .local v3, "low":I
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v1, v5, 0x4

    .line 455
    .local v1, "high":I
    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v6, v6, v1

    aput-char v6, v0, v5

    .line 456
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v6, v6, v3

    aput-char v6, v0, v5

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    .end local v1    # "high":I
    .end local v3    # "low":I
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method private getCnonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lorg/apache/http/impl/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method private getQopVariantString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 434
    iget v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 435
    const-string v0, "auth-int"

    .line 439
    .local v0, "qopOption":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 437
    .end local v0    # "qopOption":Ljava/lang/String;
    :cond_0
    const-string v0, "auth"

    .restart local v0    # "qopOption":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 5
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Credentials may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_0
    if-nez p2, :cond_1

    .line 220
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP request may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "methodname"

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "uri"

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v2, "charset"

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 228
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/auth/params/AuthParams;->getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "charset"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/DigestScheme;->createDigest(Lorg/apache/http/auth/Credentials;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "digest":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lorg/apache/http/impl/auth/DigestScheme;->createDigestHeader(Lorg/apache/http/auth/Credentials;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    return-object v2
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 161
    const-string v1, "stale"

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "s":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 6
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 119
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 121
    const-string v4, "realm"

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 122
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v5, "missing realm in challange"

    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_0
    const-string v4, "nonce"

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 125
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v5, "missing nonce in challange"

    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    :cond_1
    const/4 v2, 0x0

    .line 130
    .local v2, "unsupportedQop":Z
    const-string v4, "qop"

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "qop":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 132
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v1, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "variant":Ljava/lang/String;
    const-string v4, "auth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    const/4 v4, 0x2

    iput v4, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    .line 146
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_5

    iget v4, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    if-nez v4, :cond_5

    .line 147
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v5, "None of the qop methods is supported"

    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    .restart local v1    # "tok":Ljava/util/StringTokenizer;
    .restart local v3    # "variant":Ljava/lang/String;
    :cond_3
    const-string v4, "auth-int"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 139
    iput v5, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    goto :goto_0

    .line 141
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 151
    iput-boolean v5, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    .line 152
    return-void
.end method
