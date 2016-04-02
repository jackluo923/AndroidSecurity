.class final Lcom/alipay/mobile/security/gesture/component/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/gesture/component/v;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

.field private final synthetic b:Lcom/alipay/mobile/security/gesture/component/LockIndicator;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/security/gesture/component/LockIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/k;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/component/k;->b:Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/k;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$15(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/alipay/mobile/security/gesture/component/LockView;->MINSELECTED:I

    if-ge v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/k;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$16(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/k;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/security/gesture/component/LockView;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$0(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/security/gesture/component/LockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/k;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/k;->b:Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$17(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/security/gesture/component/LockIndicator;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/k;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$15(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/k;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/k;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/m;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/security/gesture/component/m;->a(ZLjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/k;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$18(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    goto :goto_1
.end method
