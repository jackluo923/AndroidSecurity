.class public abstract Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefEditorField;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final editorHelper:Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefEditorField;->editorHelper:Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;

    iput-object p2, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefEditorField;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final remove()Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefEditorField;->editorHelper:Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;

    invoke-virtual {v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefEditorField;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefEditorField;->editorHelper:Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;

    return-object v0
.end method
