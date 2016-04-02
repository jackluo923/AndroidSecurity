.class Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;->this$1:Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;->this$1:Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    # invokes: Lcom/actionbarsherlock/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$800(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;->this$1:Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    # invokes: Lcom/actionbarsherlock/widget/ActivityChooserModel;->sortActivities()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$900(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V

    return-void
.end method
