.class final Lcom/alipay/mobile/security/gesture/ui/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/y;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/y;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/ui/ae;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/ae;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/y;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->notifyDataSetChanged()V

    return-void
.end method
