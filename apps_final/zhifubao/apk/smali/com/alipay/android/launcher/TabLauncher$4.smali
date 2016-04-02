.class Lcom/alipay/android/launcher/TabLauncher$4;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/keyboard/KeyboardBehavor;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$4;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditEnd(ZFJI)V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    const-string/jumbo v1, "MM_APKEYBOARD"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;-><init>(Ljava/lang/String;)V

    .line 305
    const-string/jumbo v1, "keyboard_behavor"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setSeedID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v1

    .line 306
    if-eqz p1, :cond_0

    const-string/jumbo v0, "YES"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setParam1(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    .line 307
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setParam2(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    .line 308
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setParam3(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    .line 309
    const-string/jumbo v1, "tl"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->submit()V

    .line 310
    return-void

    .line 306
    :cond_0
    const-string/jumbo v0, "NO"

    goto :goto_0
.end method
