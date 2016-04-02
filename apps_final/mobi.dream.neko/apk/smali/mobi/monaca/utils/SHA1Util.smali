.class public Lmobi/monaca/utils/SHA1Util;
.super Ljava/lang/Object;
.source "SHA1Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toHashedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 11
    :try_start_0
    const-string v9, "SHA-1"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 12
    .local v7, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 14
    .local v2, "digest":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .local v8, "sb":Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v1, v0, v5

    .line 16
    .local v1, "b":B
    const-string v9, "%02x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 17
    .local v4, "hex":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 19
    .end local v1    # "b":B
    .end local v4    # "hex":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 24
    .end local v0    # "arr$":[B
    .end local v2    # "digest":[B
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v9

    .line 21
    :catch_0
    move-exception v3

    .line 22
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 24
    const/4 v9, 0x0

    goto :goto_1
.end method
