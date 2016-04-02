.class public Lmobi/monaca/framework/nativeui/UIUtil;
.super Ljava/lang/Object;
.source "UIUtil.java"


# static fields
.field protected static colorPattern:Ljava/util/regex/Pattern;

.field protected static computedFontSizeCache:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget v0, Lmobi/monaca/framework/psedo/R$string;->nc_color_pattern:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/nativeui/UIUtil;->colorPattern:Ljava/util/regex/Pattern;

    .line 41
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lmobi/monaca/framework/nativeui/UIUtil;->computedFontSizeCache:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildColor(Ljava/lang/String;)I
    .locals 2
    .param p0, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 66
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, v0, v1}, Lmobi/monaca/framework/nativeui/UIUtil;->buildColor(Ljava/lang/String;D)I

    move-result v0

    return v0
.end method

.method public static buildColor(Ljava/lang/String;D)I
    .locals 7
    .param p0, "colorString"    # Ljava/lang/String;
    .param p1, "opacity"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "baseColor":I
    cmpl-double v3, p1, v5

    if-lez v3, :cond_0

    .line 48
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 51
    :cond_0
    sget-object v3, Lmobi/monaca/framework/nativeui/UIUtil;->colorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 60
    div-double v3, p1, v5

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v5, 0x18

    shl-long v1, v3, v5

    .line 62
    .local v1, "opacityLong":J
    int-to-long v3, v0

    add-long/2addr v3, v1

    long-to-int v3, v3

    return v3

    .line 54
    .end local v1    # "opacityLong":J
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->exception_buildcolor_forward:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->exception_buildcolor_backward:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static buildOpacity(D)I
    .locals 4
    .param p0, "opacity"    # D

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 81
    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 82
    :goto_0
    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double v0, p0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    move-wide p0, v0

    .line 81
    goto :goto_0
.end method

.method protected static computeFontSizeFromFontHeightDip(Landroid/content/Context;I)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # I

    .prologue
    .line 268
    invoke-static {p0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    .line 269
    .local v6, "targetHeight":I
    const/4 v5, 0x0

    .line 270
    .local v5, "resultTextSize":F
    const/4 v3, 0x0

    .line 272
    .local v3, "oldHeight":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v7, 0x64

    if-ge v1, v7, :cond_1

    .line 273
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 274
    .local v4, "paint":Landroid/graphics/Paint;
    int-to-float v7, v1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 275
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 277
    .local v2, "metrics":Landroid/graphics/Paint$FontMetrics;
    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v8, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v7, v8

    .line 279
    .local v0, "height":F
    int-to-float v7, v6

    sub-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v8, v6

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 281
    int-to-float v5, v1

    .line 283
    :cond_0
    move v3, v0

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "height":F
    .end local v2    # "metrics":Landroid/graphics/Paint$FontMetrics;
    .end local v4    # "paint":Landroid/graphics/Paint;
    :cond_1
    float-to-int v7, v5

    return v7
.end method

.method public static createBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 161
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 163
    .local v1, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    return-object v0
.end method

.method public static createBitmapWithColorFilter(Landroid/graphics/Bitmap;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 185
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 188
    .local v1, "height":I
    invoke-static {p0, v5, v5, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 190
    .local v3, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 192
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 193
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p0, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 195
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 196
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 197
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 199
    return-object v3
.end method

.method public static createBitmapWithColorFilter(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 176
    invoke-static {p0}, Lmobi/monaca/framework/nativeui/UIUtil;->createBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->createBitmapWithColorFilter(Landroid/graphics/Bitmap;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static dip2px(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # I

    .prologue
    .line 86
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getFontSizeFromDip(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # I

    .prologue
    const/4 v2, -0x1

    .line 258
    sget-object v1, Lmobi/monaca/framework/nativeui/UIUtil;->computedFontSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 259
    sget-object v1, Lmobi/monaca/framework/nativeui/UIUtil;->computedFontSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 263
    :goto_0
    return v1

    .line 261
    :cond_0
    invoke-static {p0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->computeFontSizeFromFontHeightDip(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 263
    .local v0, "result":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static multiplyColor(II)I
    .locals 4
    .param p0, "base"    # I
    .param p1, "filter"    # I

    .prologue
    .line 140
    and-int/lit16 v0, p0, 0xff

    .line 141
    .local v0, "left":I
    and-int/lit16 v2, p1, 0xff

    .line 143
    .local v2, "right":I
    mul-int v3, v0, v2

    div-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 145
    .local v1, "result":I
    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v0, v3, 0xff

    .line 146
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v2, v3, 0xff

    .line 148
    mul-int v3, v0, v2

    div-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    .line 150
    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v0, v3, 0xff

    .line 151
    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v2, v3, 0xff

    .line 153
    mul-int v3, v0, v2

    div-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v1, v3

    .line 155
    const/high16 v3, -0x1000000

    add-int/2addr v3, v1

    return v3
.end method

.method public static reportIgnoredStyleProperty(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Lmobi/monaca/utils/log/LogItem;

    invoke-static {}, Lmobi/monaca/utils/TimeStamp;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v3, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_report_ignoredstyleproperty:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmobi/monaca/utils/log/LogItem;-><init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    .local v0, "logItem":Lmobi/monaca/utils/log/LogItem;
    invoke-static {p0, v0}, Lmobi/monaca/framework/util/MyLog;->sendBroadcastDebugLog(Landroid/content/Context;Lmobi/monaca/utils/log/LogItem;)V

    .line 135
    return-void
.end method

.method public static reportInvalidComponent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Lmobi/monaca/utils/log/LogItem;

    invoke-static {}, Lmobi/monaca/utils/TimeStamp;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v3, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_report_invalidcomponent:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmobi/monaca/utils/log/LogItem;-><init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    .local v0, "logItem":Lmobi/monaca/utils/log/LogItem;
    invoke-static {p0, v0}, Lmobi/monaca/framework/util/MyLog;->sendBroadcastDebugLog(Landroid/content/Context;Lmobi/monaca/utils/log/LogItem;)V

    .line 108
    return-void
.end method

.method public static reportInvalidContainer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lmobi/monaca/utils/log/LogItem;

    invoke-static {}, Lmobi/monaca/utils/TimeStamp;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v3, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_report_invalidcontainer:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmobi/monaca/utils/log/LogItem;-><init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    .local v0, "logItem":Lmobi/monaca/utils/log/LogItem;
    invoke-static {p0, v0}, Lmobi/monaca/framework/util/MyLog;->sendBroadcastDebugLog(Landroid/content/Context;Lmobi/monaca/utils/log/LogItem;)V

    .line 115
    return-void
.end method

.method public static reportInvalidJSONStructure(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Lmobi/monaca/utils/log/LogItem;

    invoke-static {}, Lmobi/monaca/utils/TimeStamp;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v3, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_report_invalidjsonstructure:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmobi/monaca/utils/log/LogItem;-><init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    .local v0, "logItem":Lmobi/monaca/utils/log/LogItem;
    invoke-static {p0, v0}, Lmobi/monaca/framework/util/MyLog;->sendBroadcastDebugLog(Landroid/content/Context;Lmobi/monaca/utils/log/LogItem;)V

    .line 101
    return-void
.end method

.method public static reportInvalidStyleProperty(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Lmobi/monaca/utils/log/LogItem;

    invoke-static {}, Lmobi/monaca/utils/TimeStamp;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v3, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_report_invalidstyleproperty:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmobi/monaca/utils/log/LogItem;-><init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    .local v0, "logItem":Lmobi/monaca/utils/log/LogItem;
    invoke-static {p0, v0}, Lmobi/monaca/framework/util/MyLog;->sendBroadcastDebugLog(Landroid/content/Context;Lmobi/monaca/utils/log/LogItem;)V

    .line 128
    return-void
.end method

.method public static reportJSONParseError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Lmobi/monaca/utils/log/LogItem;

    invoke-static {}, Lmobi/monaca/utils/TimeStamp;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v3, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_report_jsonparsererror:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmobi/monaca/utils/log/LogItem;-><init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    .local v0, "logItem":Lmobi/monaca/utils/log/LogItem;
    invoke-static {p0, v0}, Lmobi/monaca/framework/util/MyLog;->sendBroadcastDebugLog(Landroid/content/Context;Lmobi/monaca/utils/log/LogItem;)V

    .line 95
    return-void
.end method

.method public static reportUndefinedProperty(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Lmobi/monaca/utils/log/LogItem;

    invoke-static {}, Lmobi/monaca/utils/TimeStamp;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v3, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_report_undefinedproperty:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmobi/monaca/utils/log/LogItem;-><init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    .local v0, "logItem":Lmobi/monaca/utils/log/LogItem;
    invoke-static {p0, v0}, Lmobi/monaca/framework/util/MyLog;->sendBroadcastDebugLog(Landroid/content/Context;Lmobi/monaca/utils/log/LogItem;)V

    .line 121
    return-void
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "resizeHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 221
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 222
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v0, v2

    .line 223
    .local v8, "resizeScaleHeight":F
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 225
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 228
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "resizeWidth"    # I
    .param p2, "resizeHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 207
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 208
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v0, v2

    .line 209
    .local v9, "resizeScaleWidth":F
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v0, v2

    .line 210
    .local v8, "resizeScaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 215
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public static resizeButtonImageBitmap(Landroid/util/DisplayMetrics;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "metrics"    # Landroid/util/DisplayMetrics;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v3, 0x3fd8000000000000L    # 0.375

    .line 237
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_1

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {p1, v0, v1}, Lmobi/monaca/framework/nativeui/UIUtil;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 254
    :cond_0
    :goto_0
    return-object p1

    .line 242
    :cond_1
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_2

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {p1, v0, v1}, Lmobi/monaca/framework/nativeui/UIUtil;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 247
    :cond_2
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {p1, v0, v1}, Lmobi/monaca/framework/nativeui/UIUtil;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public static updateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "target"    # Lorg/json/JSONObject;
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    .line 70
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    goto :goto_0

    .line 78
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method
