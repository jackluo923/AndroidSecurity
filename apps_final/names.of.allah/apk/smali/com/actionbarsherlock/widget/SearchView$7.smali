.class Lcom/actionbarsherlock/widget/SearchView$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # getter for: Lcom/actionbarsherlock/widget/SearchView;->mSearchButton:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$500(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # invokes: Lcom/actionbarsherlock/widget/SearchView;->onSearchClicked()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$600(Lcom/actionbarsherlock/widget/SearchView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # getter for: Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$700(Lcom/actionbarsherlock/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # invokes: Lcom/actionbarsherlock/widget/SearchView;->onCloseClicked()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$800(Lcom/actionbarsherlock/widget/SearchView;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # getter for: Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$900(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # invokes: Lcom/actionbarsherlock/widget/SearchView;->onSubmitQuery()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$1000(Lcom/actionbarsherlock/widget/SearchView;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # getter for: Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$1100(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # invokes: Lcom/actionbarsherlock/widget/SearchView;->onVoiceClicked()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$1200(Lcom/actionbarsherlock/widget/SearchView;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # getter for: Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$1300(Lcom/actionbarsherlock/widget/SearchView;)Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$7;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # invokes: Lcom/actionbarsherlock/widget/SearchView;->forceSuggestionQuery()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$1400(Lcom/actionbarsherlock/widget/SearchView;)V

    goto :goto_0
.end method
