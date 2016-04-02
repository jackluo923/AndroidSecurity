.class public Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;


# direct methods
.method protected constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # invokes: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->notifyDataSetChange()V
    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$700(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)V

    return-void
.end method
