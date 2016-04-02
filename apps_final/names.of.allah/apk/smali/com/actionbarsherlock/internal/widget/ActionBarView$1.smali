.class Lcom/actionbarsherlock/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCallback:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$000(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    # getter for: Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCallback:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->access$000(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    :cond_0
    return-void
.end method

.method public onNothingSelected(Lcom/actionbarsherlock/internal/widget/IcsAdapterView;)V
    .locals 0

    return-void
.end method
