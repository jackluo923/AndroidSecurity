.class Lcom/alipay/mobile/common/misc/ExtViewUtil$3;
.super Ljava/util/TimerTask;
.source "ExtViewUtil.java"


# instance fields
.field private final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ExtViewUtil$3;->a:Landroid/view/View;

    .line 363
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 366
    sget-object v0, Lcom/alipay/mobile/common/misc/ExtViewUtil;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExtViewUtil$3;->a:Landroid/view/View;

    .line 367
    const/4 v2, 0x1

    .line 366
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 368
    return-void
.end method
