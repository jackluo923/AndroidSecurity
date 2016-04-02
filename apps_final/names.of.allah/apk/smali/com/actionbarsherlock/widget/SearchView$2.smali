.class Lcom/actionbarsherlock/widget/SearchView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$2;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$2;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # invokes: Lcom/actionbarsherlock/widget/SearchView;->updateFocusedState()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$100(Lcom/actionbarsherlock/widget/SearchView;)V

    return-void
.end method
