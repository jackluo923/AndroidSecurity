.class Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;
.super Ljava/lang/Object;
.source "AutoReadSmsCheckCode.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:[Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    iput p2, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->a:I

    iput-object p3, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->c:Ljava/lang/String;

    iput p5, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->d:I

    iput-object p6, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->e:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 59
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 61
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    .line 63
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    # getter for: Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->h:Landroid/content/Context;
    invoke-static {v2}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$3(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->a(Landroid/content/Context;)J
    invoke-static {v1, v2}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$4(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$5(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;J)V

    .line 64
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->c:Ljava/lang/String;

    iget v3, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->d:I

    iget-object v4, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->e:Ljava/lang/String;

    .line 65
    iget-object v5, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    # getter for: Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->h:Landroid/content/Context;
    invoke-static {v5}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$3(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;)Landroid/content/Context;

    move-result-object v5

    .line 64
    invoke-static/range {v0 .. v9}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$6(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-static {v0, v10}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$0(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;Z)V

    .line 69
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-static {v0, v11}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$1(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;Z)V

    .line 70
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-static {v0, v12, v13}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$2(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;J)V

    .line 73
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 68
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-static {v0, v10}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$0(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;Z)V

    .line 69
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-static {v0, v11}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$1(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;Z)V

    .line 70
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-static {v0, v12, v13}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$2(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;J)V

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-static {v1, v10}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$0(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;Z)V

    .line 69
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-static {v1, v11}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$1(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;Z)V

    .line 70
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode$1;->this$0:Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;

    invoke-static {v1, v12, v13}, Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;->access$2(Lcom/ali/user/mobile/ui/widget/AutoReadSmsCheckCode;J)V

    .line 71
    throw v0
.end method
