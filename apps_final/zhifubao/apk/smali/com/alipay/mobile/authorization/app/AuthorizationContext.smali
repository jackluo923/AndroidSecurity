.class public Lcom/alipay/mobile/authorization/app/AuthorizationContext;
.super Ljava/lang/Object;
.source "AuthorizationContext.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->c:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->a:Z

    .line 20
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->a:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->b:Z

    .line 28
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->b:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/AuthorizationContext;->c:Ljava/lang/String;

    return-object v0
.end method
