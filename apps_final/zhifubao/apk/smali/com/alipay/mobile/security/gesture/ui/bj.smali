.class final Lcom/alipay/mobile/security/gesture/ui/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/bj;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/bj;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bj;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bj;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/e;->n:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x102000b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/bj;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
