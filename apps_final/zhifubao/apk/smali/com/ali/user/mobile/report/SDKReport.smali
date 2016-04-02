.class public Lcom/ali/user/mobile/report/SDKReport;
.super Ljava/lang/Object;
.source "SDKReport.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/content/Context;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/ali/user/mobile/report/SDKReport;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static reportInfo(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/report/SDKReport;->a:Landroid/content/Context;

    .line 16
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/report/SDKReport$1;

    invoke-direct {v1}, Lcom/ali/user/mobile/report/SDKReport$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    return-void
.end method
