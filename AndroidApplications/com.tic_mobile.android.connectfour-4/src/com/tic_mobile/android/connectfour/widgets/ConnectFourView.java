package com.tic_mobile.android.connectfour.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import com.tic_mobile.android.connectfour.Config;
import com.tic_mobile.android.connectfour.GameParameters;
import com.tic_mobile.android.connectfour.R;
import com.tic_mobile.android.connectfour.game.ConnectFourFunctions;
import com.tic_mobile.android.connectfour.game.GameState;
import java.lang.reflect.Array;
import java.util.List;

public class ConnectFourView extends View {
    public static final int COLOR_ALERT_BLUE = -16776961;
    public static final int COLOR_ALERT_RED = -65536;
    public static final int COLOR_BLUE = -13128195;
    public static final int COLOR_GREEN = -9511854;
    public static final int COLOR_RED = -35770;
    public static final int COLOR_WHITE = -4666164;
    public static final int COLOR_YELLOW = -207571;
    public static final int EVALUATION_MAX = 100;
    public static final byte GRID_HEIGHT = (byte) 6;
    public static final byte GRID_MARKER_NEUTRAL = (byte) 0;
    public static final byte GRID_MARKER_PLAYER0 = (byte) 1;
    public static final byte GRID_MARKER_PLAYER1 = (byte) 5;
    public static final byte GRID_WIDTH = (byte) 7;
    boolean activeAi;
    final Object activeAiMonitor;
    int aiEvaluation;
    byte aiMove;
    int aiPercentage;
    Thread aiThread;
    byte currentColumn;
    int currentMove;
    byte currentPlayer;
    int errorMargin;
    ConnectFourListener gameListener;
    final Runnable gameListenerAiUpdater;
    final Runnable gameListenerUiUpdater;
    GameState gameStatus;
    int gamesPlayed;
    byte[][] grid;
    int gridCellsize;
    Paint gridSelectedPaint;
    int gridThickness;
    Paint gridUnselectedPaint;
    Paint gridWinPaint;
    final Runnable moveUpdater;
    boolean paused;
    boolean player0Ai;
    int player0DiscResource;
    String player0Name;
    boolean player1Ai;
    int player1DiscResource;
    String player1Name;
    int searchDepth;
    int winCount0;
    int winCount1;

    static /* synthetic */ class AnonymousClass_5 {
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
            $SwitchMap$com$tic_mobile$android$connectfour$game$GameState[GameState.PLAYER1_WON.ordinal()] = 3;
        }
    }

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        byte currentColumn;
        byte currentPlayer;
        int errorMargin;
        GameState gameStatus;
        int gamesPlayed;
        byte[][] grid;
        boolean player0Ai;
        String player0Name;
        boolean player1Ai;
        String player1Name;
        int searchDepth;
        int timeUsed0;
        int timeUsed1;
        int winCount0;
        int winCount1;

        static {
            CREATOR = new Creator<SavedState>() {
                public SavedState createFromParcel(Parcel in) {
                    return new SavedState(in);
                }

                public SavedState[] newArray(int size) {
                    return new SavedState[size];
                }
            };
        }

        public SavedState(Parcel source) {
            super(source);
            this.currentColumn = source.readByte();
            this.currentPlayer = source.readByte();
            this.errorMargin = source.readInt();
            this.gamesPlayed = source.readInt();
            this.gameStatus = GameState.getGameStateFromStateValue(source.readInt());
            this.grid = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{true, true});
            int index = 0;
            while (index < 6) {
                byte[] tmp = new byte[7];
                source.readByteArray(tmp);
                this.grid[index] = tmp;
                index++;
            }
            boolean[] temp = new boolean[1];
            source.readBooleanArray(temp);
            this.player0Ai = temp[0];
            source.readBooleanArray(temp);
            this.player1Ai = temp[0];
            this.player0Name = source.readString();
            this.player1Name = source.readString();
            this.searchDepth = source.readInt();
            this.timeUsed0 = source.readInt();
            this.timeUsed1 = source.readInt();
            this.winCount0 = source.readInt();
            this.winCount1 = source.readInt();
        }

        public SavedState(Parcelable superState) {
            super(superState);
        }

        public void writeToParcel(Parcel dest, int flags) {
            super.writeToParcel(dest, flags);
            dest.writeByte(this.currentColumn);
            dest.writeByte(this.currentPlayer);
            dest.writeInt(this.errorMargin);
            dest.writeInt(this.gamesPlayed);
            dest.writeInt(this.gameStatus.getStateValue());
            int index = 0;
            while (index < 6) {
                dest.writeByteArray(this.grid[index]);
                index++;
            }
            dest.writeBooleanArray(new boolean[]{this.player0Ai});
            dest.writeBooleanArray(new boolean[]{this.player1Ai});
            dest.writeString(this.player0Name);
            dest.writeString(this.player1Name);
            dest.writeInt(this.searchDepth);
            dest.writeInt(this.timeUsed0);
            dest.writeInt(this.timeUsed1);
            dest.writeInt(this.winCount0);
            dest.writeInt(this.winCount1);
        }
    }

    public ConnectFourView(Context context) {
        this(context, null, 0);
    }

    public ConnectFourView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ConnectFourView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.activeAiMonitor = new Object();
        this.currentColumn = (byte) 3;
        this.gameListener = null;
        this.gameListenerAiUpdater = new Runnable() {
            public void run() {
                synchronized (ConnectFourView.this.activeAiMonitor) {
                    if (ConnectFourView.this.gameListener != null) {
                        ConnectFourView.this.gameListener.handleAiProgress(ConnectFourView.this.aiPercentage, ConnectFourView.this.aiEvaluation);
                    }
                }
            }
        };
        this.gameListenerUiUpdater = new Runnable() {
            public void run() {
                synchronized (ConnectFourView.this.activeAiMonitor) {
                    if (ConnectFourView.this.gameListener != null) {
                        ConnectFourView.this.gameListener.handleAiRunStatus(ConnectFourView.this.activeAi);
                    }
                }
            }
        };
        this.gridCellsize = 10;
        this.gridSelectedPaint = null;
        this.gridThickness = 2;
        this.gridUnselectedPaint = null;
        this.gridWinPaint = null;
        this.moveUpdater = new Runnable() {
            public void run() {
                synchronized (ConnectFourView.this.activeAiMonitor) {
                    ConnectFourView.this.move(ConnectFourView.this.aiMove);
                    ConnectFourView.this.currentColumn = ConnectFourView.this.aiMove;
                    ConnectFourView.this.invalidate();
                }
                try {
                    ConnectFourView.this.aiThread.join();
                } catch (InterruptedException e) {
                }
            }
        };
        initUI();
        initGame();
    }

    private int bestEvalRecursive(byte[][] grid, byte value, int currentDepth, int maximumDepth) {
        synchronized (this.activeAiMonitor) {
            if (this.activeAi) {
                switch (AnonymousClass_5.$SwitchMap$com$tic_mobile$android$connectfour$game$GameState[ConnectFourFunctions.status(grid).ordinal()]) {
                    case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                        return 0;
                    case R.styleable.com_admob_android_ads_AdView_secondaryTextColor:
                        return value == (byte) 1 ? EVALUATION_MAX : -100;
                    case R.styleable.com_admob_android_ads_AdView_keywords:
                        return value == (byte) 5 ? EVALUATION_MAX : -100;
                    default:
                        if (currentDepth > maximumDepth) {
                            return ConnectFourFunctions.evaluate(grid, value);
                        }
                        int bestEval = -101;
                        byte column = GRID_MARKER_NEUTRAL;
                        while (column < (byte) 7) {
                            if (ConnectFourFunctions.isValidMove(grid, column)) {
                                byte[][] evalGrid = ConnectFourFunctions.copyGrid(grid);
                                ConnectFourFunctions.moveToGrid(evalGrid, column, value);
                                int eval = -bestEvalRecursive(evalGrid, value == (byte) 1 ? GRID_MARKER_PLAYER1 : GRID_MARKER_PLAYER0, currentDepth + 1, maximumDepth);
                                if (eval > bestEval) {
                                    bestEval = eval;
                                }
                            }
                            column = (byte) (column + 1);
                        }
                        return bestEval;
                }
            } else {
                return 0;
            }
        }
    }

    private void drawColumn(Canvas canvas, int index) {
        int gC = this.gridCellsize;
        int gT = this.gridThickness;
        int maxHeight = gC * 6 + gT * 7;
        canvas.drawLine((float) ((gC + gT) * index), 0.0f, (float) ((gC + gT) * index), (float) maxHeight, this.gridSelectedPaint);
        canvas.drawLine((float) ((index + 1) * (gC + gT)), 0.0f, (float) ((index + 1) * (gC + gT)), (float) maxHeight, this.gridSelectedPaint);
        int i = 0;
        while (i <= 6) {
            canvas.drawLine((float) ((gC + gT) * index), (float) ((gC + gT) * i), (float) ((index + 1) * (gC + gT)), (float) ((gC + gT) * i), this.gridSelectedPaint);
            i++;
        }
    }

    private void drawConnects(Canvas canvas) {
        if (this.gameStatus != GameState.DRAW) {
            List<Rect> connects;
            int gC = this.gridCellsize;
            int gT = this.gridThickness;
            connects = this.gameStatus == GameState.PLAYER0_WON ? ConnectFourFunctions.getConnects(this.grid, (byte) 4, GRID_MARKER_PLAYER0) : ConnectFourFunctions.getConnects(this.grid, (byte) 4, GRID_MARKER_PLAYER1);
            int index = 0;
            while (index < connects.size()) {
                Rect rect = (Rect) connects.get(index);
                canvas.drawLine((float) (rect.left * (gC + gT) + (gC + gT) / 2), (float) (((6 - rect.top) - 1) * (gC + gT) + (gC + gT) / 2), (float) (rect.right * (gC + gT) + (gC + gT) / 2), (float) (((6 - rect.bottom) - 1) * (gC + gT) + (gC + gT) / 2), this.gridWinPaint);
                index++;
            }
        }
    }

    private void initGame() {
        this.activeAi = false;
        this.currentPlayer = (byte) 1;
        this.currentMove = 1;
        this.currentColumn = (byte) 3;
        this.grid = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{true, true});
        byte row = GRID_MARKER_NEUTRAL;
        while (row < (byte) 6) {
            byte column = GRID_MARKER_NEUTRAL;
            while (column < (byte) 7) {
                this.grid[row][column] = (byte) 0;
                column = (byte) (column + 1);
            }
            row = (byte) (row + 1);
        }
        this.paused = true;
        this.gameStatus = GameState.PLAYER0_TO_MOVE;
        this.gamesPlayed = 0;
        this.winCount0 = 0;
        this.winCount1 = 0;
        invalidate();
    }

    private void initUI() {
        setEnabled(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setColorScheme(0);
    }

    private void setGridSelectedPaintColor(int argb) {
        this.gridSelectedPaint = new Paint();
        this.gridSelectedPaint.setColor(argb);
        this.gridSelectedPaint.setStrokeWidth((float) this.gridThickness);
        this.gridSelectedPaint.setStrokeCap(Cap.SQUARE);
    }

    private void setGridUnselectedPaintColor(int argb) {
        this.gridUnselectedPaint = new Paint();
        this.gridUnselectedPaint.setColor(argb);
        this.gridUnselectedPaint.setStrokeWidth((float) this.gridThickness);
        this.gridUnselectedPaint.setStrokeCap(Cap.SQUARE);
    }

    private void setGridWinPaintColor(int argb) {
        this.gridWinPaint = new Paint();
        this.gridWinPaint.setColor(argb);
        this.gridWinPaint.setStrokeWidth((float) (this.gridThickness * 2));
        this.gridWinPaint.setStrokeCap(Cap.ROUND);
    }

    private void setPlayer0DiscResource(int resource) {
        this.player0DiscResource = resource;
    }

    private void setPlayer1DiscResource(int resource) {
        this.player1DiscResource = resource;
    }

    private void triggerAi() {
        this.aiThread = new Thread() {
            private byte player;

            public void run() {
                synchronized (ConnectFourView.this.activeAiMonitor) {
                    ConnectFourView.this.activeAi = true;
                    ConnectFourView.this.post(ConnectFourView.this.gameListenerUiUpdater);
                }
                this.player = ConnectFourView.this.currentPlayer;
                byte[][] startGrid = (byte[][]) ConnectFourView.this.grid.clone();
                byte bestColumn;
                do {
                    bestColumn = (byte) ((int) Math.round(Math.random() * 7.0d - 0.499999d));
                } while (!ConnectFourFunctions.isValidMove(startGrid, bestColumn));
                if (Math.round(Math.random() * 100.0d) >= ((long) ConnectFourView.this.errorMargin)) {
                    bestColumn = ConnectFourView.this.bestMoveRecursive(startGrid, this.player, ConnectFourView.this.searchDepth);
                }
                synchronized (ConnectFourView.this.activeAiMonitor) {
                    if (ConnectFourView.this.activeAi) {
                        ConnectFourView.this.aiMove = bestColumn;
                        ConnectFourView.this.post(ConnectFourView.this.moveUpdater);
                        ConnectFourView.this.activeAi = false;
                        ConnectFourView.this.post(ConnectFourView.this.gameListenerUiUpdater);
                    }
                }
            }
        };
        this.aiThread.start();
    }

    byte bestMoveRecursive(byte[][] grid, byte value, int maximumDepth) {
        int bestEval = -101;
        int[] evals = new int[7];
        int index = 0;
        while (index < 7) {
            evals[index] = -101;
            index++;
        }
        synchronized (this.activeAiMonitor) {
            this.aiPercentage = 0;
            this.aiEvaluation = -101;
            post(this.gameListenerAiUpdater);
        }
        byte column = GRID_MARKER_NEUTRAL;
        while (column < (byte) 7) {
            if (ConnectFourFunctions.isValidMove(grid, column)) {
                byte[][] evalGrid = ConnectFourFunctions.copyGrid(grid);
                ConnectFourFunctions.moveToGrid(evalGrid, column, value);
                if (maximumDepth > 1) {
                    evals[column] = -bestEvalRecursive(evalGrid, value == (byte) 1 ? GRID_MARKER_PLAYER1 : GRID_MARKER_PLAYER0, R.styleable.com_admob_android_ads_AdView_secondaryTextColor, maximumDepth);
                } else {
                    evals[column] = ConnectFourFunctions.evaluate(evalGrid, value);
                }
                if (evals[column] > bestEval) {
                    bestEval = evals[column];
                }
            }
            synchronized (this.activeAiMonitor) {
                this.aiPercentage = ((column + 1) * 100) / 7;
                this.aiEvaluation = bestEval;
                post(this.gameListenerAiUpdater);
            }
            column = (byte) (column + 1);
        }
        if (evals[3] == bestEval) {
            return (byte) 3;
        }
        byte bestColumn;
        do {
            bestColumn = (byte) ((int) Math.round(Math.random() * 7.0d - 0.499999d));
        } while (evals[bestColumn] != bestEval);
        return bestColumn;
    }

    public int getCurrentMove() {
        return this.currentMove;
    }

    public byte getCurrentPlayer() {
        return this.currentPlayer;
    }

    public boolean getCurrentPlayerAi() {
        switch (this.currentPlayer) {
            case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                return this.player0Ai;
            case Config.ACTIVITY_ID_SPLASH:
                return this.player1Ai;
            default:
                return false;
        }
    }

    public int getErrorMargin() {
        return this.errorMargin;
    }

    public GameState getGameStatus() {
        return this.gameStatus;
    }

    public int getGamesPlayed() {
        return this.gamesPlayed;
    }

    public boolean getPlayer0Ai() {
        return this.player0Ai;
    }

    public String getPlayer0Name() {
        return this.player0Name;
    }

    public boolean getPlayer1Ai() {
        return this.player1Ai;
    }

    public String getPlayer1Name() {
        return this.player1Name;
    }

    public int getSearchDepth() {
        return this.searchDepth;
    }

    public int getWinCount0() {
        return this.winCount0;
    }

    public int getWinCount1() {
        return this.winCount1;
    }

    public boolean isBegun() {
        return ConnectFourFunctions.isBegun(this.grid);
    }

    public boolean isFinished() {
        return this.gameStatus == GameState.PLAYER0_WON || this.gameStatus == GameState.PLAYER1_WON || this.gameStatus == GameState.DRAW;
    }

    public boolean isPaused() {
        return this.paused;
    }

    void move(byte column) {
        if (!isFinished() && ConnectFourFunctions.isValidMove(this.grid, column)) {
            ConnectFourFunctions.moveToGrid(this.grid, column, this.currentPlayer);
            this.currentMove++;
            this.gameStatus = ConnectFourFunctions.status(this.grid);
            if (isFinished()) {
                this.gamesPlayed++;
                switch (AnonymousClass_5.$SwitchMap$com$tic_mobile$android$connectfour$game$GameState[this.gameStatus.ordinal()]) {
                    case R.styleable.com_admob_android_ads_AdView_secondaryTextColor:
                        this.winCount0++;
                        break;
                    case R.styleable.com_admob_android_ads_AdView_keywords:
                        this.winCount1++;
                        break;
                }
                if (this.gameListener != null) {
                    this.gameListener.handleGameFinished(this.gameStatus);
                }
            } else {
                switch (this.currentPlayer) {
                    case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                        this.currentPlayer = (byte) 5;
                        break;
                    case Config.ACTIVITY_ID_SPLASH:
                        this.currentPlayer = (byte) 1;
                        break;
                }
            }
            invalidate();
            synchronized (this.activeAiMonitor) {
                if (this.gameListener != null) {
                    this.gameListener.handleAiRunStatus(this.activeAi);
                }
            }
            if (!isFinished() && getCurrentPlayerAi()) {
                triggerAi();
            }
        }
    }

    public void newGame(byte loser) {
        if (!isFinished()) {
            this.gamesPlayed++;
            if (loser == 0) {
                this.winCount1++;
            } else {
                this.winCount0++;
            }
        }
        this.currentPlayer = (byte) 1;
        this.currentColumn = (byte) 3;
        byte row = GRID_MARKER_NEUTRAL;
        while (row < (byte) 6) {
            byte column = GRID_MARKER_NEUTRAL;
            while (column < (byte) 7) {
                this.grid[row][column] = (byte) 0;
                column = (byte) (column + 1);
            }
            row = (byte) (row + 1);
        }
        this.paused = true;
        this.gameStatus = GameState.PLAYER0_TO_MOVE;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        synchronized (this.activeAiMonitor) {
            this.activeAi = false;
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int gT = this.gridThickness;
        int gC = this.gridCellsize;
        canvas.translate((float) (gT / 2), (float) (gT / 2));
        int maxWidth = gC * 7 + gT * 8;
        int maxHeight = gC * 6 + gT * 7;
        int index = 0;
        while (index <= 7) {
            canvas.drawLine((float) ((gC + gT) * index), 0.0f, (float) ((gC + gT) * index), (float) maxHeight, this.gridUnselectedPaint);
            index++;
        }
        index = 0;
        while (index <= 6) {
            canvas.drawLine(0.0f, (float) ((gC + gT) * index), (float) maxWidth, (float) ((gC + gT) * index), this.gridUnselectedPaint);
            index++;
        }
        if (!this.paused) {
            int row = 0;
            while (row < 6) {
                int column = 0;
                while (column < 7) {
                    byte player = this.grid[6 - row - 1][column];
                    if (player != (byte) 2) {
                        int x = (gC + gT) * column + 1;
                        int y = (gC + gT) * row + 1;
                        switch (player) {
                            case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                                BitmapDrawable d0 = (BitmapDrawable) getResources().getDrawable(this.player0DiscResource);
                                canvas.drawBitmap(d0.getBitmap(), new Rect(0, 0, d0.getMinimumWidth(), d0.getMinimumHeight()), new Rect(x + 3, y + 3, x + gC - 3, y + gC - 
                                /* Method generation error in method: com.tic_mobile.android.connectfour.widgets.ConnectFourView.onDraw(android.graphics.Canvas):void
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00e2: INVOKE  (r25_0 'canvas' android.graphics.Canvas), (wrap: android.graphics.Bitmap
  0x00b7: INVOKE  (r5_27 android.graphics.Bitmap) = (r12_1 'd0' android.graphics.drawable.BitmapDrawable) android.graphics.drawable.BitmapDrawable.getBitmap():android.graphics.Bitmap type: VIRTUAL), (wrap: android.graphics.Rect
  0x00c7: CONSTRUCTOR  (r6_10 android.graphics.Rect) = (0 int), (0 int), (wrap: int
  0x00bf: INVOKE  (r9_2 int) = (r12_1 'd0' android.graphics.drawable.BitmapDrawable) android.graphics.drawable.BitmapDrawable.getMinimumWidth():int type: VIRTUAL), (wrap: int
  0x00c3: INVOKE  (r10_2 int) = (r12_1 'd0' android.graphics.drawable.BitmapDrawable) android.graphics.drawable.BitmapDrawable.getMinimumHeight():int type: VIRTUAL) android.graphics.Rect.<init>(int, int, int, int):void CONSTRUCTOR), (wrap: android.graphics.Rect
  0x00d8: CONSTRUCTOR  (r7_4 android.graphics.Rect) = (wrap: int
  0x00cc: ARITH  (r8_3 int) = (r22_0 'x' int) + (3 int)), (wrap: int
  0x00ce: ARITH  (r9_3 int) = (r23_0 'y' int) + (3 int)), (wrap: int
  0x00d2: ARITH  (r10_4 int) = (wrap: int
  0x00d0: ARITH  (r10_3 int) = (r22_0 'x' int) + (r14_0 'gC' int)) - (3 int)), (wrap: android.graphics.drawable.BitmapDrawable
  0x00d6: ARITH  (r12_3 'd0' android.graphics.drawable.BitmapDrawable) = (wrap: android.graphics.drawable.BitmapDrawable
  0x00d4: ARITH  (r12_2 'd0' android.graphics.drawable.BitmapDrawable) = (r23_0 'y' int) + (r14_0 'gC' int)) - (3 android.graphics.drawable.BitmapDrawable)) android.graphics.Rect.<init>(int, int, int, int):void CONSTRUCTOR), (null android.graphics.Paint) android.graphics.Canvas.drawBitmap(android.graphics.Bitmap, android.graphics.Rect, android.graphics.Rect, android.graphics.Paint):void type: VIRTUAL in method: com.tic_mobile.android.connectfour.widgets.ConnectFourView.onDraw(android.graphics.Canvas):void
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:211)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:186)
	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:95)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:43)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:82)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:46)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:89)
	at jadx.core.codegen.RegionGen.makeCaseBlock(RegionGen.java:233)
	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:219)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:52)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:82)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:46)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:89)
	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:115)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:50)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:82)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:46)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:89)
	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:184)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:54)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:82)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:46)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:89)
	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:184)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:54)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:82)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:46)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:89)
	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:115)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:50)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:82)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:46)
	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:176)
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:285)
	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:237)
	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:201)
	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:98)
	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:63)
	at jadx.core.codegen.CodeGen.visit(CodeGen.java:19)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:11)
	at jadx.core.ProcessClass.process(ProcessClass.java:22)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:209)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:133)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00d8: CONSTRUCTOR  (r7_4 android.graphics.Rect) = (wrap: int
  0x00cc: ARITH  (r8_3 int) = (r22_0 'x' int) + (3 int)), (wrap: int
  0x00ce: ARITH  (r9_3 int) = (r23_0 'y' int) + (3 int)), (wrap: int
  0x00d2: ARITH  (r10_4 int) = (wrap: int
  0x00d0: ARITH  (r10_3 int) = (r22_0 'x' int) + (r14_0 'gC' int)) - (3 int)), (wrap: android.graphics.drawable.BitmapDrawable
  0x00d6: ARITH  (r12_3 'd0' android.graphics.drawable.BitmapDrawable) = (wrap: android.graphics.drawable.BitmapDrawable
  0x00d4: ARITH  (r12_2 'd0' android.graphics.drawable.BitmapDrawable) = (r23_0 'y' int) + (r14_0 'gC' int)) - (3 android.graphics.drawable.BitmapDrawable)) android.graphics.Rect.<init>(int, int, int, int):void CONSTRUCTOR in method: com.tic_mobile.android.connectfour.widgets.ConnectFourView.onDraw(android.graphics.Canvas):void
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:211)
	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:96)
	at jadx.core.codegen.InsnGen.generateArguments(InsnGen.java:688)
	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:652)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:328)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:207)
	... 46 more
Caused by: jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00d6: ARITH  (r12_3 'd0' android.graphics.drawable.BitmapDrawable) = (wrap: android.graphics.drawable.BitmapDrawable
  0x00d4: ARITH  (r12_2 'd0' android.graphics.drawable.BitmapDrawable) = (r23_0 'y' int) + (r14_0 'gC' int)) - (3 android.graphics.drawable.BitmapDrawable) in method: com.tic_mobile.android.connectfour.widgets.ConnectFourView.onDraw(android.graphics.Canvas):void
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:211)
	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:96)
	at jadx.core.codegen.InsnGen.generateArguments(InsnGen.java:688)
	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:607)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:324)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:197)
	... 51 more
Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Wrong object literal: android.graphics.drawable.BitmapDrawable = 3
	at jadx.core.codegen.TypeGen.literalToString(TypeGen.java:59)
	at jadx.core.codegen.InsnGen.lit(InsnGen.java:127)
	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:93)
	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:86)
	at jadx.core.codegen.InsnGen.makeArith(InsnGen.java:771)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:255)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:197)
	... 56 more
 */

                                public boolean onKeyDown(int keyCode, KeyEvent event) {
                                    switch (keyCode) {
                                        case 8:
                                        case 9:
                                        case GameParameters.DEFAULT_ERROR_MARGIN:
                                        case 11:
                                        case 12:
                                        case 13:
                                        case 14:
                                            this.currentColumn = (byte) (keyCode - 8);
                                            invalidate();
                                            return true;
                                        case 21:
                                            if (this.currentColumn > 0) {
                                                this.currentColumn = (byte) (this.currentColumn - 1);
                                                invalidate();
                                            }
                                            return true;
                                        case 22:
                                            if (this.currentColumn < (byte) 6) {
                                                this.currentColumn = (byte) (this.currentColumn + 1);
                                                invalidate();
                                            }
                                            return true;
                                        case 23:
                                        case 66:
                                            if (this.paused) {
                                                resume();
                                                synchronized (this.activeAiMonitor) {
                                                    if (this.gameListener != null) {
                                                        this.gameListener.handleAiRunStatus(this.activeAi);
                                                    }
                                                }
                                                return true;
                                            } else {
                                                if (!getCurrentPlayerAi()) {
                                                    move(this.currentColumn);
                                                }
                                                return true;
                                            }
                                        default:
                                            return false;
                                    }
                                }

                                protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
                                    int widthSpecMode = MeasureSpec.getMode(widthMeasureSpec);
                                    int widthSpecSize = MeasureSpec.getSize(widthMeasureSpec);
                                    int heightSpecMode = MeasureSpec.getMode(heightMeasureSpec);
                                    int heightSpecSize = MeasureSpec.getSize(heightMeasureSpec);
                                    int maxCellsizeFromWidth = widthSpecMode == 1073741824 ? (widthSpecSize - (this.gridThickness * 8)) / 7 : 41;
                                    int maxCellsizeFromHeight = heightSpecMode == 1073741824 ? (heightSpecSize - (this.gridThickness * 8)) / 6 : 41;
                                    if (maxCellsizeFromWidth > maxCellsizeFromHeight) {
                                        this.gridCellsize = maxCellsizeFromHeight;
                                    } else {
                                        this.gridCellsize = maxCellsizeFromWidth;
                                    }
                                    setMeasuredDimension(this.gridCellsize * 7 + this.gridThickness * 8, this.gridCellsize * 6 + this.gridThickness * 7);
                                }

                                protected void onRestoreInstanceState(Parcelable savedState) {
                                    if (savedState.getClass().equals(SavedState.class)) {
                                        SavedState state = (SavedState) savedState;
                                        super.onRestoreInstanceState(state.getSuperState());
                                        this.currentColumn = state.currentColumn;
                                        this.currentPlayer = state.currentPlayer;
                                        this.errorMargin = state.errorMargin;
                                        this.gamesPlayed = state.gamesPlayed;
                                        this.gameStatus = state.gameStatus;
                                        this.grid = state.grid;
                                        this.player0Ai = state.player0Ai;
                                        this.player1Ai = state.player1Ai;
                                        this.player0Name = state.player0Name;
                                        this.player1Name = state.player1Name;
                                        this.searchDepth = state.searchDepth;
                                        this.winCount0 = state.winCount0;
                                        this.winCount1 = state.winCount1;
                                        this.paused = true;
                                        synchronized (this.activeAiMonitor) {
                                            if (this.gameListener != null) {
                                                this.gameListener.handleAiRunStatus(this.activeAi);
                                            }
                                        }
                                    } else {
                                        super.onRestoreInstanceState(savedState);
                                    }
                                }

                                protected Parcelable onSaveInstanceState() {
                                    SavedState state = new SavedState(super.onSaveInstanceState());
                                    state.currentColumn = this.currentColumn;
                                    state.currentPlayer = this.currentPlayer;
                                    state.errorMargin = this.errorMargin;
                                    state.gamesPlayed = this.gamesPlayed;
                                    state.gameStatus = this.gameStatus;
                                    state.grid = this.grid;
                                    state.player0Ai = this.player0Ai;
                                    state.player1Ai = this.player1Ai;
                                    state.player0Name = this.player0Name;
                                    state.player1Name = this.player1Name;
                                    state.searchDepth = this.searchDepth;
                                    state.winCount0 = this.winCount0;
                                    state.winCount1 = this.winCount1;
                                    return state;
                                }

                                public boolean onTouchEvent(MotionEvent event) {
                                    if (event.getAction() == 0 && this.paused) {
                                        resume();
                                        synchronized (this.activeAiMonitor) {
                                            if (this.gameListener != null) {
                                                this.gameListener.handleAiRunStatus(this.activeAi);
                                            }
                                        }
                                        return true;
                                    } else {
                                        byte column = GRID_MARKER_NEUTRAL;
                                        while (column < (byte) 7) {
                                            int xEnd = this.gridCellsize * (column + 1) + this.gridThickness * (column + 1);
                                            if (event.getX() < ((float) (this.gridCellsize * column + this.gridThickness * (column + 1))) || event.getX() > ((float) xEnd)) {
                                                column = (byte) (column + 1);
                                            } else {
                                                this.currentColumn = column;
                                                if (!getCurrentPlayerAi()) {
                                                    move(column);
                                                }
                                                return true;
                                            }
                                        }
                                    }
                                    return false;
                                }

                                public void pause() {
                                    boolean wasActive = false;
                                    this.paused = true;
                                    synchronized (this.activeAiMonitor) {
                                        if (this.activeAi) {
                                            this.activeAi = false;
                                            wasActive = true;
                                        }
                                    }
                                    if (wasActive) {
                                        try {
                                            this.aiThread.join();
                                        } catch (InterruptedException e) {
                                        }
                                    }
                                    invalidate();
                                }

                                public void resume() {
                                    this.paused = false;
                                    if (!isFinished() && getCurrentPlayerAi()) {
                                        triggerAi();
                                    }
                                    invalidate();
                                }

                                public void setColorScheme(int colorScheme) {
                                    switch (colorScheme) {
                                        case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                                            setPlayer0DiscResource(R.drawable.disc_glass_yellow);
                                            setPlayer1DiscResource(R.drawable.disc_glass_red);
                                            setGridWinPaintColor(COLOR_ALERT_BLUE);
                                            setGridSelectedPaintColor(COLOR_ALERT_BLUE);
                                            break;
                                        case R.styleable.com_admob_android_ads_AdView_secondaryTextColor:
                                            setPlayer0DiscResource(R.drawable.disc_glass_blue);
                                            setPlayer1DiscResource(R.drawable.disc_glass_green);
                                            setGridWinPaintColor(COLOR_ALERT_RED);
                                            setGridSelectedPaintColor(COLOR_ALERT_RED);
                                            break;
                                        case R.styleable.com_admob_android_ads_AdView_keywords:
                                            setPlayer0DiscResource(R.drawable.disc_glass_green);
                                            setPlayer1DiscResource(R.drawable.disc_glass_blue);
                                            setGridWinPaintColor(COLOR_ALERT_RED);
                                            setGridSelectedPaintColor(COLOR_ALERT_RED);
                                            break;
                                        default:
                                            setPlayer0DiscResource(R.drawable.disc_glass_red);
                                            setPlayer1DiscResource(R.drawable.disc_glass_yellow);
                                            setGridWinPaintColor(COLOR_ALERT_BLUE);
                                            setGridSelectedPaintColor(COLOR_ALERT_BLUE);
                                            break;
                                    }
                                    setGridUnselectedPaintColor(COLOR_WHITE);
                                }

                                public void setErrorMargin(int errorMargin) {
                                    this.errorMargin = errorMargin;
                                }

                                public void setGameListener(ConnectFourListener gameListener) {
                                    synchronized (this.activeAiMonitor) {
                                        this.gameListener = gameListener;
                                    }
                                }

                                public void setPlayer0Ai(boolean ai) {
                                    this.player0Ai = ai;
                                }

                                public void setPlayer0Name(String player0Name) {
                                    this.player0Name = player0Name;
                                }

                                public void setPlayer1Ai(boolean ai) {
                                    this.player1Ai = ai;
                                }

                                public void setPlayer1Name(String player1Name) {
                                    this.player1Name = player1Name;
                                }

                                public void setSearchDepth(int searchDepth) {
                                    this.searchDepth = searchDepth;
                                }
                            }