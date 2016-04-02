.class Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting$1;
.super Ljava/lang/Object;
.source "WidgetVisualStyleSetting.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field private final synthetic b:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting$1;->b:Landroid/view/View$OnFocusChangeListener;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting$1;->a:Landroid/view/View;

    if-eqz p2, :cond_1

    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->bg_input_focus:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    iget-object v0, p0, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting$1;->b:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting$1;->b:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 88
    :cond_0
    return-void

    .line 84
    :cond_1
    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->bg_input_unfocus:I

    goto :goto_0
.end method
