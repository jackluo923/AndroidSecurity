.class public abstract Lcom/alipay/mobile/common/clickspan/BaseClickableSpan;
.super Landroid/text/style/ClickableSpan;


# static fields
.field public static final CLICK_ENABLE_TIME:I = 0x15e


# instance fields
.field canClick:Z

.field protected lastClickTime:J

.field public linkTextColor:I

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/clickspan/BaseClickableSpan;->canClick:Z

    iput-object p1, p0, Lcom/alipay/mobile/common/clickspan/BaseClickableSpan;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/alipay/mobile/common/clickspan/BaseClickableSpan;->linkTextColor:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/clickspan/BaseClickableSpan;->lastClickTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x15e

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/clickspan/BaseClickableSpan;->canClick:Z

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/clickspan/BaseClickableSpan;->lastClickTime:J

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/clickspan/BaseClickableSpan;->canClick:Z

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/clickspan/BaseClickableSpan;->linkTextColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
