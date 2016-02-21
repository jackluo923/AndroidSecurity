package com.tic_mobile.android.connectfour.activities;

import android.app.Activity;
import android.database.Cursor;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import com.tic_mobile.android.connectfour.GamesProvider.GameColumns;
import com.tic_mobile.android.connectfour.R;
import com.tic_mobile.android.connectfour.widgets.StatisticsView;

public class StatisticsScreen extends Activity {
    private TextView averageLevelField;
    private TextView currentSkillField;
    private TextView gamesDrawnField;
    private TextView gamesLostField;
    private TextView gamesPlayedField;
    private TextView gamesWonField;
    private MenuItem resetMenuItem;
    private StatisticsView statsView;

    private Cursor getCursor() {
        return managedQuery(GameColumns.CONTENT_URI, new String[]{"_id", GameColumns.DEPTH, GameColumns.ERROR, GameColumns.RESULT, GameColumns.PLAYED}, null, null, null);
    }

    private static double getLevel(int searchDepth, int errorMargin) {
        return ((double) searchDepth) * Math.pow(1.0d - (((double) errorMargin) / 100.0d), 3.0d);
    }

    private void renderStats(Cursor cursor) {
        int gamesPlayed = 0;
        int gamesWon = 0;
        int gamesDrawn = 0;
        int gamesLost = 0;
        float averageLevel = 0.0f;
        double currentSkill = 0.0d;
        if (cursor != null && cursor.moveToFirst()) {
            int indexDepth = cursor.getColumnIndex(GameColumns.DEPTH);
            int indexError = cursor.getColumnIndex(GameColumns.ERROR);
            int indexResult = cursor.getColumnIndex(GameColumns.RESULT);
            do {
                int depth = cursor.getInt(indexDepth);
                int error = cursor.getInt(indexError);
                int result = cursor.getInt(indexResult);
                if (result != 0) {
                    float weight;
                    weight = result > 0 ? 0.25f : 0.05f;
                    currentSkill = (0.99d - ((double) weight)) * currentSkill + (getLevel(depth, error) * ((double) result)) * ((double) weight);
                }
                if (currentSkill < 0.0d) {
                    currentSkill = 0.0d;
                }
                gamesPlayed++;
                switch (result) {
                    case -1:
                        gamesLost++;
                        break;
                    case R.styleable.com_admob_android_ads_AdView_backgroundColor:
                        gamesDrawn++;
                        break;
                    case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                        gamesWon++;
                        break;
                }
                averageLevel = (float) (((double) averageLevel) + getLevel(depth, error));
            } while (cursor.moveToNext());
            if (gamesPlayed != 0) {
                averageLevel /= (float) gamesPlayed;
            }
        }
        TextView textView = this.gamesPlayedField;
        String str = "%3d";
        Object[] objArr = new Object[1];
        Integer num = num;
        int i = gamesPlayed;
        objArr[0] = num;
        textView.setText(String.format(str, objArr));
        if (gamesPlayed == 0) {
            gamesPlayed = 1;
        }
        textView = this.gamesWonField;
        str = "%3d (%.1f %%)";
        objArr = new Object[2];
        num = num;
        i = gamesWon;
        objArr[0] = num;
        objArr[1] = new Float((((float) gamesWon) / ((float) gamesPlayed)) * 100.0f);
        textView.setText(String.format(str, objArr));
        textView = this.gamesDrawnField;
        str = "%3d (%.1f %%)";
        objArr = new Object[2];
        num = num;
        i = gamesDrawn;
        objArr[0] = num;
        objArr[1] = new Float((((float) gamesDrawn) / ((float) gamesPlayed)) * 100.0f);
        textView.setText(String.format(str, objArr));
        textView = this.gamesLostField;
        str = "%3d (%.1f %%)";
        objArr = new Object[2];
        num = num;
        i = gamesLost;
        objArr[0] = num;
        objArr[1] = new Float((((float) gamesLost) / ((float) gamesPlayed)) * 100.0f);
        textView.setText(String.format(str, objArr));
        textView = this.averageLevelField;
        str = "%.3f";
        objArr = new Object[1];
        Float f = f;
        float f2 = averageLevel;
        objArr[0] = f;
        textView.setText(String.format(str, objArr));
        textView = this.currentSkillField;
        str = "%.3f";
        objArr = new Object[1];
        Double d = d;
        double d2 = currentSkill;
        objArr[0] = d;
        textView.setText(String.format(str, objArr));
    }

    private void resetStats() {
        getContentResolver().delete(GameColumns.CONTENT_URI, null, null);
        Cursor stats = getCursor();
        renderStats(stats);
        this.statsView.setCursor(stats);
        this.statsView.invalidate();
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.statistics_screen);
        setTitle(getString(R.string.statisticsActivityName));
        this.statsView = (StatisticsView) findViewById(R.id.statisticsStatisticsView);
        this.gamesPlayedField = (TextView) findViewById(R.id.statisticsGamesPlayedField);
        this.gamesWonField = (TextView) findViewById(R.id.statisticsGamesWonField);
        this.gamesDrawnField = (TextView) findViewById(R.id.statisticsGamesDrawnField);
        this.gamesLostField = (TextView) findViewById(R.id.statisticsGamesLostField);
        this.averageLevelField = (TextView) findViewById(R.id.statisticsAverageLevelField);
        this.currentSkillField = (TextView) findViewById(R.id.statisticsCurrentSkillField);
        Cursor stats = getCursor();
        renderStats(stats);
        this.statsView.setCursor(stats);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        this.resetMenuItem = menu.add(getString(R.string.statisticsResetMenuItem));
        this.resetMenuItem.setIcon(R.drawable.menu_reset);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        if (item == this.resetMenuItem) {
            resetStats();
        }
        return false;
    }
}