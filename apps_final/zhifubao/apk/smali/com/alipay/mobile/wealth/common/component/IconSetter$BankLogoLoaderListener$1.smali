.class Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener$1;
.super Ljava/lang/Object;
.source "IconSetter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic this$1:Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener$1;->this$1:Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;

    iput-object p2, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener$1;->a:Landroid/graphics/Bitmap;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener$1;->this$1:Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;

    # getter for: Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->this$0:Lcom/alipay/mobile/wealth/common/component/IconSetter;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->access$1(Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;)Lcom/alipay/mobile/wealth/common/component/IconSetter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener$1;->this$1:Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;

    # getter for: Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->a:Landroid/view/View;
    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->access$0(Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener$1;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->access$1(Lcom/alipay/mobile/wealth/common/component/IconSetter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 186
    return-void
.end method
