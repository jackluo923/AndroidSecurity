.class public Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;
.super Lcom/alipay/mobile/commonui/widget/APDialog;


# static fields
.field public static final INIT_BY_BIZ:I = 0x2

.field public static final INIT_BY_LIST:I = 0x1

.field public static final INIT_BY_SHARETYPE:I = 0x0

.field public static final ITEM_PAGE_SIZE:F = 8.0f

.field public static final TAG:Ljava/lang/String; = "APShareSelectDialog"

.field private static g:Lcom/alipay/mobile/common/share/ShareFilter;

.field private static h:Lcom/alipay/mobile/common/share/ShareAlert;


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;

.field private c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

.field private d:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;

.field private e:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnTouchBackgroundListener;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;)V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/alipay/mobile/ui/R$style;->share_select_dialog:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APDialog;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->b:Ljava/util/ArrayList;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->f:I

    iput-object p3, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->d:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->a:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;)V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/alipay/mobile/ui/R$style;->share_select_dialog:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APDialog;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->b:Ljava/util/ArrayList;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->f:I

    iput-object p3, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->a:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;)V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/alipay/mobile/ui/R$style;->share_select_dialog:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APDialog;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->b:Ljava/util/ArrayList;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->f:I

    iput-object p3, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->d:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;)V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/alipay/mobile/ui/R$style;->share_select_dialog:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APDialog;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->b:Ljava/util/ArrayList;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->f:I

    iput-object p3, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->f:I

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    return-object v0
.end method

.method static synthetic access$200()Lcom/alipay/mobile/common/share/ShareAlert;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->h:Lcom/alipay/mobile/common/share/ShareAlert;

    return-object v0
.end method

.method static synthetic access$300()Lcom/alipay/mobile/common/share/ShareFilter;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->g:Lcom/alipay/mobile/common/share/ShareFilter;

    return-object v0
.end method

.method public static getShareAlert()Lcom/alipay/mobile/common/share/ShareAlert;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->h:Lcom/alipay/mobile/common/share/ShareAlert;

    return-object v0
.end method

.method public static getShareFilter()Lcom/alipay/mobile/common/share/ShareFilter;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->g:Lcom/alipay/mobile/common/share/ShareFilter;

    return-object v0
.end method

.method public static setShareAlert(Lcom/alipay/mobile/common/share/ShareAlert;)V
    .locals 0

    sput-object p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->h:Lcom/alipay/mobile/common/share/ShareAlert;

    return-void
.end method

.method public static setShareFilter(Lcom/alipay/mobile/common/share/ShareFilter;)V
    .locals 0

    sput-object p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->g:Lcom/alipay/mobile/common/share/ShareFilter;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, -0x2

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$1;-><init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->e:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnTouchBackgroundListener;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->f:I

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->a:I

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->b:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->e:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnTouchBackgroundListener;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;-><init>(Landroid/content/Context;IILjava/util/ArrayList;Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnTouchBackgroundListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->d:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->setOnAlertShareSelectListener(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;)V

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$2;-><init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->setOnShareSelectListener(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;)V

    sget v1, Lcom/alipay/mobile/ui/R$id;->btn_cancel:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$3;-><init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
