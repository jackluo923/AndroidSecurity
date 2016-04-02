.class final Lcom/alipay/mobile/security/gesture/ui/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/au;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    iput-boolean p2, p0, Lcom/alipay/mobile/security/gesture/ui/au;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/au;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/au;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
