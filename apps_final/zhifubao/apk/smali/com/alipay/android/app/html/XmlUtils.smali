.class public Lcom/alipay/android/app/html/XmlUtils;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/CharSequence;)I
    .locals 9

    const/16 v3, 0x10

    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v4, 0xa

    const/16 v7, 0x2d

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_6

    :goto_1
    const/16 v7, 0x30

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_4

    add-int/lit8 v4, v6, -0x1

    if-ne v0, v4, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x78

    if-eq v4, v1, :cond_2

    const/16 v4, 0x58

    if-ne v4, v1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x2

    move v1, v0

    move v0, v3

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/2addr v2, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, 0x1

    const/16 v0, 0x8

    goto :goto_2

    :cond_4
    const/16 v1, 0x23

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v1, v6, :cond_5

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move v0, v3

    goto :goto_2

    :cond_5
    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_6
    move v2, v0

    move v0, v1

    goto :goto_1
.end method
