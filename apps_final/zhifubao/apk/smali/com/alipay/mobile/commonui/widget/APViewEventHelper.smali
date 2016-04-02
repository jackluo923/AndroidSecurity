.class public Lcom/alipay/mobile/commonui/widget/APViewEventHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/commonui/widget/APViewEventHelper$ClickListenerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setWrapper(Lcom/alipay/mobile/commonui/widget/APViewEventHelper$ClickListenerWrapper;)V
    .locals 0

    sput-object p0, Lcom/alipay/mobile/commonui/widget/APViewEventHelper;->a:Lcom/alipay/mobile/commonui/widget/APViewEventHelper$ClickListenerWrapper;

    return-void
.end method

.method public static wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/APViewEventHelper;->a:Lcom/alipay/mobile/commonui/widget/APViewEventHelper$ClickListenerWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/commonui/widget/APViewEventHelper;->a:Lcom/alipay/mobile/commonui/widget/APViewEventHelper$ClickListenerWrapper;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/commonui/widget/APViewEventHelper$ClickListenerWrapper;->wrap(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p0

    goto :goto_0
.end method

.method public static wrapItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/APViewEventHelper;->a:Lcom/alipay/mobile/commonui/widget/APViewEventHelper$ClickListenerWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/commonui/widget/APViewEventHelper;->a:Lcom/alipay/mobile/commonui/widget/APViewEventHelper$ClickListenerWrapper;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/commonui/widget/APViewEventHelper$ClickListenerWrapper;->wrap(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p0

    goto :goto_0
.end method
