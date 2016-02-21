package com.pocketools.currency;

import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class GraphDuration extends ListActivity {
    Intent mIntent;
    private String[] mStrings;

    public GraphDuration() {
        this.mStrings = new String[]{"1 day", "5 day", "3 month", "1 year", "2 year", "5 year"};
    }

    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        requestWindowFeature(1);
        setContentView(R.layout.chart_timeframe);
        this.mIntent = getIntent();
        setListAdapter(new ArrayAdapter(this, 17367043, this.mStrings));
        getListView().setDivider(getResources().getDrawable(17301523));
    }

    protected void onListItemClick(ListView l, View v, int position, long id) {
        this.mIntent.putExtra("TIMEFRAME", this.mStrings[position]);
        setResult(PocketCurrency.CHOOSE_TIMEFRAME_SUCCESS, this.mIntent);
        finish();
    }
}