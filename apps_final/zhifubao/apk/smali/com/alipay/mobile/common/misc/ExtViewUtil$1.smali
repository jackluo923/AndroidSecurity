.class Lcom/alipay/mobile/common/misc/ExtViewUtil$1;
.super Ljava/lang/Object;
.source "ExtViewUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/alipay/mobile/common/misc/ExtViewUtil$1;->a:Z

    iput-object p2, p0, Lcom/alipay/mobile/common/misc/ExtViewUtil$1;->b:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 113
    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/ExtViewUtil$1;->a:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExtViewUtil$1;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExtViewUtil$1;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 118
    :cond_0
    return-void
.end method
