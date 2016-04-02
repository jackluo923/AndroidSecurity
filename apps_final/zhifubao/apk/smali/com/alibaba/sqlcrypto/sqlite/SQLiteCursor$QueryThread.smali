.class final Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mThreadState:I

.field final synthetic this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;


# direct methods
.method constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;I)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->mThreadState:I

    return-void
.end method

.method private sendMessage()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mNotificationHandler:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mNotificationHandler:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    invoke-virtual {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    const/4 v1, 0x0

    # setter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPendingData:Z
    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$002(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # setter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPendingData:Z
    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$002(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;
    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$100(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Lcom/alibaba/sqlcrypto/CursorWindow;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    :goto_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$200(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I
    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$300(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I

    move-result v1

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->mThreadState:I

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$200(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;
    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$600(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mMaxRead:I
    invoke-static {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$400(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I
    invoke-static {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$500(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->fillWindow(Lcom/alibaba/sqlcrypto/CursorWindow;II)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mMaxRead:I
    invoke-static {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$400(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I

    move-result v2

    # += operator for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I
    invoke-static {v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$512(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;I)I

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$200(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # setter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I
    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$502(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;I)I

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$200(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$200(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$200(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$200(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
