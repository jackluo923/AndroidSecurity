.class final Lcom/alipay/asset/common/view/b;
.super Ljava/lang/Object;
.source "BaseWealthWidgetView.java"

# interfaces
.implements Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;


# instance fields
.field final synthetic a:Lcom/alipay/asset/common/view/BaseWealthWidgetView;

.field private final synthetic b:Landroid/widget/ImageView;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/asset/common/view/BaseWealthWidgetView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/view/b;->a:Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    iput-object p2, p0, Lcom/alipay/asset/common/view/b;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/alipay/asset/common/view/b;->c:Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public final onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/asset/common/view/b;->a:Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    iget-object v1, p0, Lcom/alipay/asset/common/view/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/asset/common/view/b;->b:Landroid/widget/ImageView;

    # invokes: Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a(Ljava/lang/String;Landroid/widget/ImageView;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->access$0(Lcom/alipay/asset/common/view/BaseWealthWidgetView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 169
    return-void
.end method

.method public final onProgress(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/asset/common/view/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    return-void
.end method
