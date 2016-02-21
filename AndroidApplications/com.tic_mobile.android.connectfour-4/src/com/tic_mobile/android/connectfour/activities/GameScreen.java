package com.tic_mobile.android.connectfour.activities;

import android.app.Activity;
import android.content.ContentValues;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.TextView;
import com.admob.android.ads.AdView;
import com.tic_mobile.android.connectfour.Config;
import com.tic_mobile.android.connectfour.GameParameters;
import com.tic_mobile.android.connectfour.GamesProvider.GameColumns;
import com.tic_mobile.android.connectfour.R;
import com.tic_mobile.android.connectfour.game.GameState;
import com.tic_mobile.android.connectfour.widgets.ConnectFourListener;
import com.tic_mobile.android.connectfour.widgets.ConnectFourView;

public class GameScreen extends Activity implements ConnectFourListener {
    private AdView ad;
    private TextView aiStatus;
    private ImageView aiStatusImage;
    private GameParameters gameParams;
    private TextView gameStatus;
    private ConnectFourView gameView;
    private MenuItem newGameMenuItem;
    private TextView opponent000;
    private TextView opponent002;
    private MenuItem pauseMenuItem;
    private MenuItem resignMenuItem;
    private MenuItem resumeMenuItem;
    private TextView winCount000;
    private TextView winCount002;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] $SwitchMap$com$tic_mobile$android$connectfour$game$GameState;

        static {
            $SwitchMap$com$tic_mobile$android$connectfour$game$GameState = new int[GameState.values().length];
            try {
                $SwitchMap$com$tic_mobile$android$connectfour$game$GameState[GameState.DRAW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$tic_mobile$android$connectfour$game$GameState[GameState.PLAYER0_WON.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$tic_mobile$android$connectfour$game$GameState[GameState.PLAYER1_WON.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$tic_mobile$android$connectfour$game$GameState[GameState.PLAYER0_TO_MOVE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $SwitchMap$com$tic_mobile$android$connectfour$game$GameState[GameState.PLAYER1_TO_MOVE.ordinal()] = 5;
        }
    }

    public GameScreen() {
        this.aiStatus = null;
        this.aiStatusImage = null;
        this.gameStatus = null;
        this.gameView = null;
        this.newGameMenuItem = null;
        this.opponent000 = null;
        this.opponent002 = null;
        this.pauseMenuItem = null;
        this.resignMenuItem = null;
        this.resumeMenuItem = null;
        this.winCount000 = null;
        this.winCount002 = null;
    }

    private void setColorScheme() {
        switch (this.gameParams.getColorScheme()) {
            case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                this.opponent000.setTextColor(ConnectFourView.COLOR_YELLOW);
                this.opponent002.setTextColor(ConnectFourView.COLOR_RED);
                this.winCount000.setTextColor(ConnectFourView.COLOR_YELLOW);
                this.winCount002.setTextColor(ConnectFourView.COLOR_RED);
            case R.styleable.com_admob_android_ads_AdView_secondaryTextColor:
                this.opponent000.setTextColor(ConnectFourView.COLOR_BLUE);
                this.opponent002.setTextColor(ConnectFourView.COLOR_GREEN);
                this.winCount000.setTextColor(ConnectFourView.COLOR_BLUE);
                this.winCount002.setTextColor(ConnectFourView.COLOR_GREEN);
            case R.styleable.com_admob_android_ads_AdView_keywords:
                this.opponent000.setTextColor(ConnectFourView.COLOR_GREEN);
                this.opponent002.setTextColor(ConnectFourView.COLOR_BLUE);
                this.winCount000.setTextColor(ConnectFourView.COLOR_GREEN);
                this.winCount002.setTextColor(ConnectFourView.COLOR_BLUE);
            default:
                this.opponent000.setTextColor(ConnectFourView.COLOR_RED);
                this.opponent002.setTextColor(ConnectFourView.COLOR_YELLOW);
                this.winCount000.setTextColor(ConnectFourView.COLOR_RED);
                this.winCount002.setTextColor(ConnectFourView.COLOR_YELLOW);
        }
    }

    private void setGameStatus() {
        String str = " ";
        String str2;
        switch (AnonymousClass_1.$SwitchMap$com$tic_mobile$android$connectfour$game$GameState[this.gameView.getGameStatus().ordinal()]) {
            case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                str2 = " ";
                this.gameStatus.setText(getString(R.string.gameGameStatus) + str + getString(R.string.gameGameStatusDraw));
                this.opponent000.setTypeface(Typeface.DEFAULT);
                this.opponent002.setTypeface(Typeface.DEFAULT);
                this.winCount000.setTypeface(Typeface.DEFAULT);
                this.winCount002.setTypeface(Typeface.DEFAULT);
            case R.styleable.com_admob_android_ads_AdView_secondaryTextColor:
                str2 = " ";
                str2 = " ";
                this.gameStatus.setText(getString(R.string.gameGameStatus) + str + this.gameView.getPlayer0Name() + str + getString(R.string.gameGameStatusWon));
                this.opponent000.setTypeface(Typeface.DEFAULT);
                this.opponent002.setTypeface(Typeface.DEFAULT);
                this.winCount000.setTypeface(Typeface.DEFAULT);
                this.winCount002.setTypeface(Typeface.DEFAULT);
            case R.styleable.com_admob_android_ads_AdView_keywords:
                str2 = " ";
                str2 = " ";
                this.gameStatus.setText(getString(R.string.gameGameStatus) + str + this.gameView.getPlayer1Name() + str + getString(R.string.gameGameStatusWon));
                this.opponent000.setTypeface(Typeface.DEFAULT);
                this.opponent002.setTypeface(Typeface.DEFAULT);
                this.winCount000.setTypeface(Typeface.DEFAULT);
                this.winCount002.setTypeface(Typeface.DEFAULT);
            case R.styleable.com_admob_android_ads_AdView_refreshInterval:
                str2 = " ";
                str2 = " ";
                this.gameStatus.setText(getString(R.string.gameGameStatus) + str + this.gameView.getPlayer0Name() + str + getString(R.string.gameGameStatusMove));
                this.opponent000.setTypeface(Typeface.DEFAULT_BOLD);
                this.opponent002.setTypeface(Typeface.DEFAULT);
                this.winCount000.setTypeface(Typeface.DEFAULT_BOLD);
                this.winCount002.setTypeface(Typeface.DEFAULT);
            case Config.ACTIVITY_ID_SPLASH:
                str2 = " ";
                str2 = " ";
                this.gameStatus.setText(getString(R.string.gameGameStatus) + str + this.gameView.getPlayer1Name() + str + getString(R.string.gameGameStatusMove));
                this.opponent000.setTypeface(Typeface.DEFAULT);
                this.opponent002.setTypeface(Typeface.DEFAULT_BOLD);
                this.winCount000.setTypeface(Typeface.DEFAULT);
                this.winCount002.setTypeface(Typeface.DEFAULT_BOLD);
            default:
                break;
        }
    }

    public void finish() {
        super.finish();
        if (!this.gameView.isFinished() && this.gameView.isBegun()) {
            ContentValues values = new ContentValues();
            values.put(GameColumns.DEPTH, new Integer(this.gameParams.getSearchDepth()));
            values.put(GameColumns.ERROR, new Integer(this.gameParams.getErrorMargin()));
            values.put(GameColumns.RESULT, new Integer(-1));
            values.put(GameColumns.PLAYED, new Integer(((int) System.currentTimeMillis()) / 1000));
            getContentResolver().insert(GameColumns.CONTENT_URI, values);
        }
    }

    public void handleAiProgress(int percentage, int evaluation) {
        this.aiStatus.setText(getString(R.string.gameAiStatusThinking) + " " + percentage + "%");
    }

    public void handleAiRunStatus(boolean running) {
        if (running) {
            this.aiStatusImage.setImageResource(R.drawable.ai_running);
        } else {
            this.aiStatusImage.setImageResource(R.drawable.ai_stopped);
        }
        this.opponent000.setText(this.gameView.getPlayer0Name());
        this.opponent002.setText(this.gameView.getPlayer1Name());
        this.winCount000.setText(Integer.toString(this.gameView.getWinCount0()));
        this.winCount002.setText(Integer.toString(this.gameView.getWinCount1()));
        if (this.gameView.isPaused()) {
            this.gameStatus.setText(getString(R.string.gameGameStatus) + " " + getString(R.string.gameGameStatusPaused));
        } else {
            setGameStatus();
        }
    }

    public void handleGameFinished(GameState status) {
        String str = GameColumns.RESULT;
        ContentValues values = new ContentValues();
        values.put(GameColumns.DEPTH, new Integer(this.gameParams.getSearchDepth()));
        values.put(GameColumns.ERROR, new Integer(this.gameParams.getErrorMargin()));
        String str2;
        switch (AnonymousClass_1.$SwitchMap$com$tic_mobile$android$connectfour$game$GameState[status.ordinal()]) {
            case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                str2 = GameColumns.RESULT;
                values.put(str, new Integer(0));
                break;
            case R.styleable.com_admob_android_ads_AdView_secondaryTextColor:
                if (this.gameParams.getStartingPlayer() == 0) {
                    str2 = GameColumns.RESULT;
                    values.put(str, new Integer(1));
                } else {
                    str2 = GameColumns.RESULT;
                    values.put(str, new Integer(-1));
                }
                break;
            case R.styleable.com_admob_android_ads_AdView_keywords:
                if (this.gameParams.getStartingPlayer() == 1) {
                    str2 = GameColumns.RESULT;
                    values.put(str, new Integer(1));
                } else {
                    str2 = GameColumns.RESULT;
                    values.put(str, new Integer(-1));
                }
                break;
            default:
                return;
        }
        values.put(GameColumns.PLAYED, new Integer(((int) System.currentTimeMillis()) / 1000));
        getContentResolver().insert(GameColumns.CONTENT_URI, values);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.game_screen);
        setTitle(getString(R.string.gameActivityName));
        this.gameParams = GameParameters.fromBundle(getIntent().getExtras());
        this.opponent000 = (TextView) findViewById(R.id.gameOpponent000Label);
        this.opponent002 = (TextView) findViewById(R.id.gameOpponent002Label);
        this.winCount000 = (TextView) findViewById(R.id.gameWinCount000Label);
        this.winCount002 = (TextView) findViewById(R.id.gameWinCount002Label);
        this.gameView = (ConnectFourView) findViewById(R.id.gameGameView);
        this.gameStatus = (TextView) findViewById(R.id.gameGameStatusLabel);
        this.aiStatus = (TextView) findViewById(R.id.gameAiStatusLabel);
        this.aiStatusImage = (ImageView) findViewById(R.id.gameAiStatusImage);
        if (this.gameParams.getStartingPlayer() == 0) {
            this.gameView.setPlayer0Ai(false);
            this.gameView.setPlayer1Ai(true);
            this.gameView.setPlayer0Name(this.gameParams.getPlayerName());
            this.gameView.setPlayer1Name(getString(R.string.gameOpponent002));
        } else {
            this.gameView.setPlayer0Ai(true);
            this.gameView.setPlayer1Ai(false);
            this.gameView.setPlayer0Name(getString(R.string.gameOpponent002));
            this.gameView.setPlayer1Name(this.gameParams.getPlayerName());
        }
        this.gameView.setColorScheme(this.gameParams.getColorScheme());
        this.gameView.setSearchDepth(this.gameParams.getSearchDepth());
        this.gameView.setErrorMargin(this.gameParams.getErrorMargin());
        this.gameView.setGameListener(this);
        setColorScheme();
        handleAiRunStatus(false);
        handleAiProgress(0, 0);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        this.newGameMenuItem = null;
        this.resignMenuItem = menu.add(getString(R.string.gameResignMenuItem));
        this.resignMenuItem.setIcon(R.drawable.menu_resign);
        this.pauseMenuItem = menu.add(getString(R.string.gamePauseMenuItem));
        this.pauseMenuItem.setIcon(R.drawable.menu_pause);
        this.resumeMenuItem = null;
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        if (item == this.newGameMenuItem) {
            this.gameView.newGame((byte) this.gameParams.getStartingPlayer());
        } else if (item == this.resignMenuItem) {
            this.gameView.newGame((byte) this.gameParams.getStartingPlayer());
        } else if (item == this.pauseMenuItem) {
            this.gameView.pause();
        } else if (item == this.resumeMenuItem) {
            this.gameView.resume();
        }
        handleAiRunStatus(false);
        return false;
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        if (this.newGameMenuItem != null) {
            menu.removeItem(this.newGameMenuItem.getItemId());
        }
        if (this.resignMenuItem != null) {
            menu.removeItem(this.resignMenuItem.getItemId());
        }
        if (this.pauseMenuItem != null) {
            menu.removeItem(this.pauseMenuItem.getItemId());
        }
        if (this.resumeMenuItem != null) {
            menu.removeItem(this.resumeMenuItem.getItemId());
        }
        if (this.gameView.isFinished()) {
            this.newGameMenuItem = menu.add(getString(R.string.gameNewGameMenuItem));
            this.newGameMenuItem.setIcon(R.drawable.menu_new);
            this.resignMenuItem = null;
        } else {
            this.newGameMenuItem = null;
            this.resignMenuItem = menu.add(getString(R.string.gameResignMenuItem));
            this.resignMenuItem.setIcon(R.drawable.menu_resign);
        }
        if (this.gameView.isPaused()) {
            this.pauseMenuItem = null;
            this.resumeMenuItem = menu.add(getString(R.string.gameResumeMenuItem));
            this.resumeMenuItem.setIcon(R.drawable.menu_resume);
        } else {
            this.pauseMenuItem = menu.add(getString(R.string.gamePauseMenuItem));
            this.pauseMenuItem.setIcon(R.drawable.menu_pause);
            this.resumeMenuItem = null;
        }
        return true;
    }
}