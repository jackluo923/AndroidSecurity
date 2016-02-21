package com.mixpanel.android.surveys;

import android.content.Context;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;

class AlwaysSubmittableEditText extends EditText {
    public AlwaysSubmittableEditText(Context context) {
        super(context);
    }

    public AlwaysSubmittableEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AlwaysSubmittableEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        editorInfo.imeOptions &= -1073741825;
        return onCreateInputConnection;
    }
}