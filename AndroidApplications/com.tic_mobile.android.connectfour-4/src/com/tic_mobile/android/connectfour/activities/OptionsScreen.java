package com.tic_mobile.android.connectfour.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.Spinner;
import android.widget.TextView;
import com.tic_mobile.android.connectfour.GameParameters;
import com.tic_mobile.android.connectfour.R;

public class OptionsScreen extends Activity implements OnSeekBarChangeListener {
    private Spinner colorScheme;
    private SeekBar errorMargin;
    private TextView errorMarginLabel;
    private GameParameters gameParams;
    private EditText playerName;
    private SeekBar searchDepth;
    private TextView searchDepthLabel;
    private Spinner startingPlayer;

    private void prepareResult() {
        readFields();
        Intent intent = new Intent();
        intent.putExtras(this.gameParams.toBundle());
        setResult(-1, intent);
    }

    private void readFields() {
        this.gameParams.setPlayerName(this.playerName.getText().toString());
        this.gameParams.setStartingPlayer(this.startingPlayer.getSelectedItemPosition());
        this.gameParams.setColorScheme(this.colorScheme.getSelectedItemPosition());
        this.gameParams.setSearchDepth(this.searchDepth.getProgress());
        this.gameParams.setErrorMargin(this.errorMargin.getProgress());
    }

    private void writeFields() {
        String str = ": ";
        this.playerName.setText(this.gameParams.getPlayerName());
        this.startingPlayer.setSelection(this.gameParams.getStartingPlayer());
        this.colorScheme.setSelection(this.gameParams.getColorScheme());
        this.searchDepth.setProgress(this.gameParams.getSearchDepth());
        String str2 = ": ";
        this.searchDepthLabel.setText(getString(R.string.optionsSearchDepth) + str + this.searchDepth.getProgress());
        this.errorMargin.setProgress(this.gameParams.getErrorMargin());
        str2 = ": ";
        this.errorMarginLabel.setText(getString(R.string.optionsErrorMargin) + str + this.errorMargin.getProgress() + " %");
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.options_screen);
        setTitle(getString(R.string.optionsActivityName));
        if (savedInstanceState == null) {
            this.gameParams = GameParameters.fromBundle(getIntent().getExtras());
        } else {
            this.gameParams = GameParameters.fromBundle(savedInstanceState);
        }
        this.playerName = (EditText) findViewById(R.id.optionsPlayerNameField);
        this.startingPlayer = (Spinner) findViewById(R.id.optionsStartingPlayerField);
        this.colorScheme = (Spinner) findViewById(R.id.optionsColorSchemeField);
        this.searchDepthLabel = (TextView) findViewById(R.id.optionsSearchDepthLabel);
        this.searchDepth = (SeekBar) findViewById(R.id.optionsSearchDepthField);
        this.errorMarginLabel = (TextView) findViewById(R.id.optionsErrorMarginLabel);
        this.errorMargin = (SeekBar) findViewById(R.id.optionsErrorMarginField);
        writeFields();
        this.searchDepth.setOnSeekBarChangeListener(this);
        this.errorMargin.setOnSeekBarChangeListener(this);
        prepareResult();
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            prepareResult();
        }
        return super.onKeyDown(keyCode, event);
    }

    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromTouch) {
        String str = ": ";
        String str2;
        if (seekBar == this.searchDepth) {
            str2 = ": ";
            this.searchDepthLabel.setText(getString(R.string.optionsSearchDepth) + str + progress);
        } else if (seekBar == this.errorMargin) {
            str2 = ": ";
            this.errorMarginLabel.setText(getString(R.string.optionsErrorMargin) + str + progress + " %");
        }
    }

    protected void onSaveInstanceState(Bundle outState) {
        readFields();
        this.gameParams.toBundle(outState);
        super.onSaveInstanceState(outState);
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}