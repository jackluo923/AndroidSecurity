.class final Lcom/alipay/android/app/display/uielement/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UILink;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UILink;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/bl;->b:Lcom/alipay/android/app/display/uielement/UILink;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/bl;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bl;->b:Lcom/alipay/android/app/display/uielement/UILink;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UILink;->a(Lcom/alipay/android/app/display/uielement/UILink;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/bl;->a:Landroid/content/res/Resources;

    const-string/jumbo v2, "msp_dialog_tiltle_blue"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bl;->b:Lcom/alipay/android/app/display/uielement/UILink;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UILink;->a(Lcom/alipay/android/app/display/uielement/UILink;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/bl;->a:Landroid/content/res/Resources;

    const-string/jumbo v2, "msp_link_click_color"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
