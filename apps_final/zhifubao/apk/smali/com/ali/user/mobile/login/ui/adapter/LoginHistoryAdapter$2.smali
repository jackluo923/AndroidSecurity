.class Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$2;
.super Ljava/lang/Object;
.source "LoginHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$2;->this$0:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$HistoryViews;

    .line 147
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$2;->this$0:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    # getter for: Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->f:Landroid/view/View$OnLongClickListener;
    invoke-static {v1}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->access$1(Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$HistoryViews;->nameView:Landroid/widget/TextView;

    invoke-interface {v1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
