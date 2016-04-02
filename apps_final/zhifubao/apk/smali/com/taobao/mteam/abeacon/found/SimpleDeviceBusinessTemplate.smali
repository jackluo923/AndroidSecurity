.class public Lcom/taobao/mteam/abeacon/found/SimpleDeviceBusinessTemplate;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/mteam/abeacon/found/DeviceBusinessTemplate;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/SimpleDeviceBusinessTemplate;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/SimpleDeviceBusinessTemplate;->a:Ljava/lang/String;

    return-object v0
.end method
