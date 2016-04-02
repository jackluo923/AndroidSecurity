.class Lcom/actionbarsherlock/widget/SearchView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$6;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$6;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # invokes: Lcom/actionbarsherlock/widget/SearchView;->adjustDropDownSizeAndPosition()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$400(Lcom/actionbarsherlock/widget/SearchView;)V

    return-void
.end method
