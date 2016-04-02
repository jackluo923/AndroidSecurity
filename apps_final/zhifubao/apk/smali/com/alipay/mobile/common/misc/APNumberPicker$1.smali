.class Lcom/alipay/mobile/common/misc/APNumberPicker$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/misc/APNumberPicker$NumberDisplayRenderer;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/APNumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$1;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public render(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
