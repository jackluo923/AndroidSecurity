.class public Lcom/alipay/mobile/common/emoji/APEmojiRender;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static renderEmoji(Landroid/content/Context;Landroid/text/Spannable;I)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/alipay/mobile/common/emoji/APEmojiRender;->renderEmoji(Landroid/content/Context;Landroid/text/Spannable;III)V

    goto :goto_0
.end method

.method public static renderEmoji(Landroid/content/Context;Landroid/text/Spannable;III)V
    .locals 8

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    sub-int v1, v0, p3

    if-ltz p4, :cond_2

    if-lt p4, v1, :cond_5

    :cond_2
    :goto_0
    if-ge p3, v0, :cond_0

    invoke-interface {p1, p3}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->isSoftBankEmoji(C)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v1}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getsbcodePos(I)I

    move-result v3

    if-lez v3, :cond_6

    const/4 v1, 0x1

    :goto_1
    move v7, v3

    move v3, v1

    move v1, v7

    :goto_2
    if-nez v1, :cond_3

    invoke-static {p1, p3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    invoke-static {v4}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getUnicode1Pos(I)I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {v4}, Lcom/alipay/mobile/common/emoji/EmojiMap;->getFollowUnicode(I)I

    move-result v4

    if-lez v4, :cond_3

    add-int v5, p3, v3

    if-ge v5, v0, :cond_7

    add-int v5, p3, v3

    invoke-static {p1, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    if-ne v5, v4, :cond_7

    add-int/2addr v3, v6

    :cond_3
    :goto_3
    if-lez v1, :cond_4

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/apps/emoji/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "emoji_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, p2, p2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int v4, p3, v3

    const/16 v5, 0x21

    invoke-interface {p1, v1, p3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_4
    add-int/2addr p3, v3

    goto/16 :goto_0

    :cond_5
    add-int v0, p3, p4

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto/16 :goto_1

    :cond_7
    move v1, v2

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_8
    move v1, v2

    move v3, v2

    goto/16 :goto_2
.end method
