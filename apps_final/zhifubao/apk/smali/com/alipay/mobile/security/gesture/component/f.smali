.class final Lcom/alipay/mobile/security/gesture/component/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/f;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/f;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/f;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/n;

    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->FORGETPASSWORD:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/security/gesture/component/n;->a(Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;)V

    :cond_0
    return-void
.end method
