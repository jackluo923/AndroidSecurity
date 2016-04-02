.class final Lcom/alipay/mobile/command/engine/g;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/engine/TaskExeService;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/command/engine/TaskExeService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/engine/g;->a:Lcom/alipay/mobile/command/engine/TaskExeService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/command/engine/TaskExeService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/command/engine/g;-><init>(Lcom/alipay/mobile/command/engine/TaskExeService;)V

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
