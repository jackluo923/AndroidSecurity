.class final Lcom/alipay/mobile/security/gesture/ui/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/ar;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ar;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->SETMODE:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ar;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    const-string/jumbo v1, "MM-1225-1"

    const-string/jumbo v2, "20000169"

    const-string/jumbo v3, "ENTERC"

    iget-object v4, p0, Lcom/alipay/mobile/security/gesture/ui/ar;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    invoke-static {v4}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ar;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->f()V

    return-void
.end method
