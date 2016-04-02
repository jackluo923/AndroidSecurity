.class Lcom/alipay/android/app/template/util/UiUtil$2;
.super Ljava/lang/Object;
.source "UiUtil.java"

# interfaces
.implements Lcom/alipay/android/app/template/TemplateKeyboardService;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/util/UiUtil$2;->a:Z

    .line 1
    return-void
.end method


# virtual methods
.method public destroyKeyboard(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1125
    return-void
.end method

.method public hideKeyboard(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1116
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->hideKeybroad(Landroid/os/IBinder;Landroid/content/Context;)V

    .line 1117
    iget-boolean v0, p0, Lcom/alipay/android/app/template/util/UiUtil$2;->a:Z

    .line 1118
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/app/template/util/UiUtil$2;->a:Z

    .line 1119
    return v0
.end method

.method public showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1109
    invoke-static {p1, p6}, Lcom/alipay/android/app/template/util/UiUtil;->showKeybroad(Landroid/widget/EditText;I)V

    .line 1110
    iput-boolean v0, p0, Lcom/alipay/android/app/template/util/UiUtil$2;->a:Z

    .line 1111
    return v0
.end method
