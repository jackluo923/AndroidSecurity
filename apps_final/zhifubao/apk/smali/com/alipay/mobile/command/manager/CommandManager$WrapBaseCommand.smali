.class public Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;
.super Ljava/lang/Object;


# instance fields
.field private a:Ldalvik/system/DexClassLoader;

.field private b:Lcom/alipay/mobile/command/facade/BaseCommand;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldalvik/system/DexClassLoader;Lcom/alipay/mobile/command/facade/BaseCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->a:Ldalvik/system/DexClassLoader;

    iput-object p2, p0, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->b:Lcom/alipay/mobile/command/facade/BaseCommand;

    iput-object p3, p0, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->a:Ldalvik/system/DexClassLoader;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/alipay/mobile/command/facade/BaseCommand;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/CommandManager$WrapBaseCommand;->b:Lcom/alipay/mobile/command/facade/BaseCommand;

    return-object v0
.end method
