.class public Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;
.super Lcom/alipay/mobile/common/misc/ImageLoaderListenerAdapter;
.source "IconSetter.java"


# instance fields
.field private a:Landroid/view/View;

.field final synthetic this$0:Lcom/alipay/mobile/wealth/common/component/IconSetter;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/wealth/common/component/IconSetter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->this$0:Lcom/alipay/mobile/wealth/common/component/IconSetter;

    .line 165
    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/ImageLoaderListenerAdapter;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->a:Landroid/view/View;

    .line 167
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;)Landroid/view/View;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;)Lcom/alipay/mobile/wealth/common/component/IconSetter;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->this$0:Lcom/alipay/mobile/wealth/common/component/IconSetter;

    return-object v0
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/wealth/common/component/IconSetter;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onFailed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->a:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    const-string/jumbo v3, ",path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->a:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->url_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->this$0:Lcom/alipay/mobile/wealth/common/component/IconSetter;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->a:Landroid/view/View;

    # invokes: Lcom/alipay/mobile/wealth/common/component/IconSetter;->a(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->access$2(Lcom/alipay/mobile/wealth/common/component/IconSetter;Landroid/view/View;)V

    .line 202
    :cond_0
    return-void
.end method

.method public onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->a:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->url_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 172
    if-nez v0, :cond_1

    .line 173
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/wealth/common/component/IconSetter;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Imageview tag is null: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/wealth/common/component/IconSetter;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPostLoad:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->a:Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    const-string/jumbo v4, ",path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->a:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->current_drawable_tag:I

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 180
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->a:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener$1;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener$1;-><init>(Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->this$0:Lcom/alipay/mobile/wealth/common/component/IconSetter;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;->a:Landroid/view/View;

    invoke-static {v0, v1, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->access$1(Lcom/alipay/mobile/wealth/common/component/IconSetter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
