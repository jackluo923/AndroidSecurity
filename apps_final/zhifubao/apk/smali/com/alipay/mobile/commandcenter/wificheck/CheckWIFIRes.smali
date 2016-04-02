.class public Lcom/alipay/mobile/commandcenter/wificheck/CheckWIFIRes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x458cdbb4b3fb3ac5L


# instance fields
.field private isWIFI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsWIFI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commandcenter/wificheck/CheckWIFIRes;->isWIFI:Ljava/lang/String;

    return-object v0
.end method

.method public setIsWIFI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commandcenter/wificheck/CheckWIFIRes;->isWIFI:Ljava/lang/String;

    return-void
.end method
