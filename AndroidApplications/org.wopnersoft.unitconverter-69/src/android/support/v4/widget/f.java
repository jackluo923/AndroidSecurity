package android.support.v4.widget;

import android.database.Cursor;

// compiled from: ProGuard
interface f {
    void changeCursor(Cursor cursor);

    CharSequence convertToString(Cursor cursor);

    Cursor getCursor();

    Cursor runQueryOnBackgroundThread(CharSequence charSequence);
}