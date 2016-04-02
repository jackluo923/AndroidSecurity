.class public final Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;
.super Ljava/lang/Object;
.source "ConnectionConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->d:Z

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->a:Ljava/lang/String;

    iput p2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->b:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->c:I

    iput-object p3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->e:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

    invoke-virtual {p3}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->d()V

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->d:Z

    .line 137
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->b:I

    return v0
.end method

.method public final c()Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->e:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->d:Z

    return v0
.end method
