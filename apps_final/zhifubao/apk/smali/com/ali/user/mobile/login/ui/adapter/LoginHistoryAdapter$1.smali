.class Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$1;
.super Ljava/lang/Object;
.source "LoginHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$1;->this$0:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$HistoryViews;

    .line 136
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$1;->this$0:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    # getter for: Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->g:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->access$0(Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$HistoryViews;->nameView:Landroid/widget/TextView;

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 137
    return-void
.end method
