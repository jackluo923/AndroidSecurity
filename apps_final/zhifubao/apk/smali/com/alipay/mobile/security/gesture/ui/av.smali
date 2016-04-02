.class final Lcom/alipay/mobile/security/gesture/ui/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/av;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    iput-boolean p2, p0, Lcom/alipay/mobile/security/gesture/ui/av;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/av;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/av;->b:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->b(Z)V

    return-void
.end method
