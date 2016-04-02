.class public Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;Ljava/io/Writer;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The Entities must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The Writer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    return v0

    :cond_2
    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/taobao/android/ssologinwrapper/utils/Entities;->getEntityName(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 v1, 0x26

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x3b

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;Ljava/io/Writer;)Z
    .locals 12

    const/16 v11, 0x26

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/16 v10, 0x23

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The Writer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_9

    const/16 v3, 0x3b

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v4, :cond_2

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v3, -0x1

    if-lt v5, v6, :cond_3

    :cond_2
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_7

    add-int/lit8 v6, v0, 0x2

    const/16 v5, 0xa

    add-int/lit8 v8, v3, -0x1

    if-lt v6, v8, :cond_4

    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p2, v10}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x78

    if-eq v8, v9, :cond_5

    const/16 v9, 0x58

    if-ne v8, v9, :cond_6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0x10

    add-int/lit8 v8, v3, -0x1

    if-lt v6, v8, :cond_6

    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p2, v10}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :try_start_0
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    :goto_3
    move v0, v3

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p2, v10}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz p0, :cond_b

    invoke-virtual {p0, v5}, Lcom/taobao/android/ssologinwrapper/utils/Entities;->getEntityValue(Ljava/lang/String;)I

    move-result v0

    :goto_4
    if-ne v0, v4, :cond_8

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    move v1, v2

    goto :goto_3

    :cond_9
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v4

    goto :goto_4
.end method

.method public static escapeEntities(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    invoke-static {p0, p1, v0}, Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;->a(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;Ljava/io/Writer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static escapeEntities(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;->a(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;Ljava/io/Writer;)Z

    return-void
.end method

.method public static escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->HTML40:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    invoke-static {v0, p0}, Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;->escapeEntities(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeHtml(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1

    sget-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->HTML40:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    invoke-static {v0, p0, p1}, Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;->escapeEntities(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->XML:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    invoke-static {v0, p0}, Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;->escapeEntities(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeXml(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1

    sget-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->XML:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    invoke-static {v0, p0, p1}, Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;->escapeEntities(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method

.method public static unescapeEntities(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    invoke-static {p0, p1, v0}, Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;->b(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;Ljava/io/Writer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static unescapeEntities(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;->b(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;Ljava/io/Writer;)Z

    return-void
.end method

.method public static unescapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->HTML40:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    invoke-static {v0, p0}, Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;->unescapeEntities(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeHtml(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1

    sget-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->HTML40:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    invoke-static {v0, p0, p1}, Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;->unescapeEntities(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method

.method public static unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->XML:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    invoke-static {v0, p0}, Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;->unescapeEntities(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeXml(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1

    sget-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->XML:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    invoke-static {v0, p0, p1}, Lcom/taobao/android/ssologinwrapper/utils/StringEscapeUtil;->unescapeEntities(Lcom/taobao/android/ssologinwrapper/utils/Entities;Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method
