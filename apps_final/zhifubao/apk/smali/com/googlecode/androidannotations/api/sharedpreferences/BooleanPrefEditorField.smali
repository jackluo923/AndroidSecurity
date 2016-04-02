.class public final Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefEditorField;
.super Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefEditorField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper",
        "<TT;>;>",
        "Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefEditorField",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefEditorField;-><init>(Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final put(Z)Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefEditorField;->editorHelper:Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;

    invoke-virtual {v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefEditorField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefEditorField;->editorHelper:Lcom/googlecode/androidannotations/api/sharedpreferences/EditorHelper;

    return-object v0
.end method
