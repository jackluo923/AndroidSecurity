.class public Lcom/alipay/mobile/common/clickspan/EmailClickableSpan;
.super Lcom/alipay/mobile/common/clickspan/BaseClickableSpan;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/common/clickspan/ClickableSpanListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/mobile/common/clickspan/ClickableSpanListener;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/alipay/mobile/common/clickspan/BaseClickableSpan;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/alipay/mobile/common/clickspan/EmailClickableSpan;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/common/clickspan/EmailClickableSpan;->b:Lcom/alipay/mobile/common/clickspan/ClickableSpanListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/common/clickspan/BaseClickableSpan;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/clickspan/EmailClickableSpan;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/clickspan/EmailClickableSpan;->canClick:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/clickspan/EmailClickableSpan;->b:Lcom/alipay/mobile/common/clickspan/ClickableSpanListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/clickspan/EmailClickableSpan;->b:Lcom/alipay/mobile/common/clickspan/ClickableSpanListener;

    iget-object v1, p0, Lcom/alipay/mobile/common/clickspan/EmailClickableSpan;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/common/clickspan/EmailClickableSpan;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/clickspan/ClickableSpanListener;->onClick(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
