.class Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;

.field final synthetic val$this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;Lcom/actionbarsherlock/internal/widget/IcsSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;->this$1:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;

    iput-object p2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;->val$this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;->this$1:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setSelection(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;->this$1:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->dismiss()V

    return-void
.end method
