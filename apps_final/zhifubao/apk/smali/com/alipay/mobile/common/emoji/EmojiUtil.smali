.class public Lcom/alipay/mobile/common/emoji/EmojiUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\\[emoji\\]([\\s\\S]*?)\\[/emoji\\]"

    sput-object v0, Lcom/alipay/mobile/common/emoji/EmojiUtil;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string/jumbo v0, "\\u"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    if-ltz v0, :cond_2

    const-string/jumbo v1, "\\u"

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    if-nez p0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\\u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getEmojiLength(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v1

    move v2, v1

    :goto_1
    if-ge v4, v5, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->isSoftBankEmoji(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getsbcodePos(I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v3, 0x1

    move v8, v0

    move v0, v3

    move v3, v8

    :goto_2
    if-nez v3, :cond_1

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    invoke-static {v3}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getUnicode1Pos(I)I

    move-result v6

    if-lez v6, :cond_1

    invoke-static {v3}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getFollowUnicode(I)I

    move-result v3

    if-lez v3, :cond_1

    add-int v6, v4, v0

    if-ge v6, v5, :cond_1

    add-int v6, v4, v0

    invoke-static {p1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    if-ne v6, v3, :cond_1

    add-int/2addr v0, v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    :cond_2
    move v3, v0

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v3, v1

    move v0, v1

    goto :goto_2
.end method

.method public static isNoResEmojiCharactor(Ljava/lang/CharSequence;II)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getNoResUnicode(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSoftBankEmoji(C)Z
    .locals 2

    shr-int/lit8 v0, p0, 0xc

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static skipUnKnowEmoji(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 9

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->isSoftBankEmoji(C)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getsbcodePos(I)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-nez v1, :cond_6

    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    invoke-static {v5}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getUnicode1Pos(I)I

    move-result v1

    if-lez v1, :cond_6

    invoke-static {v5}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getFollowUnicode(I)I

    move-result v5

    if-lez v5, :cond_6

    add-int v6, v4, v2

    if-ge v6, v0, :cond_4

    add-int v6, v4, v2

    invoke-static {p0, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    if-ne v6, v5, :cond_4

    add-int/2addr v2, v7

    move v8, v1

    move v1, v2

    move v2, v8

    :goto_2
    if-nez v2, :cond_5

    invoke-static {p0, v4, v1}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->isNoResEmojiCharactor(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int v2, v4, v1

    if-ge v2, v0, :cond_2

    add-int v0, v4, v1

    :cond_2
    const-string/jumbo v1, " .."

    invoke-virtual {p0, v4, v0, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x3

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    :goto_3
    add-int/2addr v0, v4

    move v4, v0

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    move v1, v2

    move v2, v3

    goto :goto_2

    :cond_5
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_3

    :cond_6
    move v8, v1

    move v1, v2

    move v2, v8

    goto :goto_2

    :cond_7
    move v1, v3

    move v2, v3

    goto :goto_1
.end method

.method public static ubb2utf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/emoji/EmojiUtil;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->utfScan(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static utf2ubb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->utfScan(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static utfScan(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_c

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->isSoftBankEmoji(C)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v0}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getsbcodePos(I)I

    move-result v0

    if-lez v0, :cond_2

    move v3, v4

    :goto_2
    if-nez v0, :cond_1

    invoke-static {p0, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    invoke-static {v7}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getUnicode1Pos(I)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {v7}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getFollowUnicode(I)I

    move-result v7

    if-lez v7, :cond_1

    add-int v8, v5, v3

    if-ge v8, v1, :cond_3

    add-int v8, v5, v3

    invoke-static {p0, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    if-ne v8, v7, :cond_3

    add-int/2addr v3, v9

    :cond_1
    :goto_3
    if-lez v0, :cond_7

    if-eqz p1, :cond_5

    const-string/jumbo v0, "[emoji]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v0, v5, v3

    if-ge v0, v1, :cond_4

    add-int v0, v5, v3

    :goto_4
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "[/emoji]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int v0, v5, v3

    move v5, v0

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    add-int v0, v5, v3

    if-ge v0, v1, :cond_6

    add-int v0, v5, v3

    :goto_6
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    move v0, v1

    goto :goto_6

    :cond_7
    invoke-static {p0, v5, v3}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->isNoResEmojiCharactor(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-ne v0, v4, :cond_a

    if-eqz p1, :cond_9

    const-string/jumbo v0, "[emoji]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v0, v5, v3

    if-ge v0, v1, :cond_8

    add-int v0, v5, v3

    :goto_7
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "[/emoji]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    const-string/jumbo v0, " .."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    add-int v0, v5, v3

    if-ge v0, v1, :cond_b

    add-int v0, v5, v3

    :goto_8
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    move v0, v1

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "utf2ubb "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_d
    move v0, v2

    move v3, v2

    goto/16 :goto_2
.end method
