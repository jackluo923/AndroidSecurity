.class Lcom/ali/user/mobile/info/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/info/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/info/DeviceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/info/DeviceInfo$1;->this$0:Lcom/ali/user/mobile/info/DeviceInfo;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo$1;->this$0:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-static {}, Lcom/ali/user/mobile/info/ClientIDGenerator;->getInstance()Lcom/ali/user/mobile/info/ClientIDGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/info/DeviceInfo$1;->this$0:Lcom/ali/user/mobile/info/DeviceInfo;

    # getter for: Lcom/ali/user/mobile/info/DeviceInfo;->i:Landroid/content/Context;
    invoke-static {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->access$0(Lcom/ali/user/mobile/info/DeviceInfo;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/info/ClientIDGenerator;->init(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/info/DeviceInfo;->access$1(Lcom/ali/user/mobile/info/DeviceInfo;Ljava/lang/String;)V

    .line 52
    return-void
.end method
