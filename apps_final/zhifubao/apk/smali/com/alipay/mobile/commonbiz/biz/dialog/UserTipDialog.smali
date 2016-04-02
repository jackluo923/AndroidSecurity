.class public Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;
.super Landroid/app/Dialog;
.source "UserTipDialog.java"


# instance fields
.field private btn_no:Landroid/widget/Button;

.field private btn_ok:Landroid/widget/Button;

.field private checkBox:Landroid/widget/CheckBox;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private height:I

.field private mContext:Landroid/content/Context;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private userLink:Landroid/widget/TextView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/alipay/mobile/ui/R$style;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->initPopupWindow()V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->userLink:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static dip2px(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 39
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initPopupWindow()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 76
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/tablauncher/R$layout;->user_tip_popupwindow:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->width:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->userLink:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 87
    sget v1, Lcom/alipay/android/tablauncher/R$id;->user_pop_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 88
    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$2;-><init>(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$3;-><init>(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 103
    return-void
.end method


# virtual methods
.method public getCheckBoxState()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lcom/alipay/android/tablauncher/R$layout;->user_tip_alertdialog:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->setContentView(I)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->setCancelable(Z)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->setCanceledOnTouchOutside(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 52
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->width:I

    .line 53
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->height:I

    .line 55
    sget v0, Lcom/alipay/android/tablauncher/R$id;->btn_user_tip_ok:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->btn_ok:Landroid/widget/Button;

    .line 56
    sget v0, Lcom/alipay/android/tablauncher/R$id;->btn_user_tip_no:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->btn_no:Landroid/widget/Button;

    .line 58
    sget v0, Lcom/alipay/android/tablauncher/R$id;->user_tip_checkbox:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->checkBox:Landroid/widget/CheckBox;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->btn_ok:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->btn_no:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcom/alipay/android/tablauncher/R$id;->user_txt:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->userLink:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->userLink:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$1;-><init>(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 109
    return-void
.end method
