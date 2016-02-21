package com.tic_mobile.android.connectfour.widgets;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.tic_mobile.android.connectfour.GameParameters;
import com.tic_mobile.android.connectfour.GamesProvider.GameColumns;
import com.tic_mobile.android.connectfour.R;

public class StatisticsView extends View {
    private static final float GRAPH_ARROW_BROADTH = 0.01f;
    private static final float GRAPH_ARROW_LENGTH = 0.02f;
    private static final float GRAPH_ASPECT_RATIO = 1.3333334f;
    private static final int GRAPH_MAX_LEVELS = 6;
    private static final int GRAPH_MAX_NAMED_TICKS = 11;
    private static final int GRAPH_MAX_TICKS = 50;
    private static final float GRAPH_PADDING = 0.1f;
    private static final float GRAPH_PADDING_INVERTED = 0.9f;
    private static final float GRAPH_TEXTSIZE = 0.03f;
    private static final float GRAPH_TICK_LENGTH = 0.01f;
    private Cursor cursor;
    private Paint graphFillPaint;
    private Paint graphPaint;
    private Paint gridPaint;
    private Paint textPaint;
    private int usedHeight;
    private int usedWidth;
    private int viewHeight;
    private int viewWidth;

    public StatisticsView(Context context) {
        this(context, null, 0);
    }

    public StatisticsView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public StatisticsView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.graphPaint = new Paint();
        this.graphPaint.setAntiAlias(true);
        this.graphPaint.setColor(ConnectFourView.COLOR_ALERT_RED);
        this.graphPaint.setStrokeCap(Cap.ROUND);
        this.graphPaint.setStrokeWidth(1.2f);
        this.graphPaint.setStyle(Style.STROKE);
        this.graphFillPaint = new Paint();
        this.graphFillPaint.setAntiAlias(true);
        this.graphFillPaint.setColor(-2130771968);
        this.graphFillPaint.setStyle(Style.FILL);
        this.gridPaint = new Paint();
        this.gridPaint.setAntiAlias(true);
        this.gridPaint.setColor(-3355444);
        this.gridPaint.setStrokeCap(Cap.ROUND);
        this.gridPaint.setStrokeWidth(1.5f);
        this.gridPaint.setStyle(Style.STROKE);
        this.textPaint = new Paint();
        this.textPaint.setAntiAlias(true);
        this.textPaint.setColor(-1);
        this.textPaint.setStrokeWidth(0.8f);
        this.textPaint.setTextSize(((float) this.usedWidth) * 0.03f);
    }

    private void drawGraph(Canvas canvas) {
        float localX1 = ((float) this.usedWidth) * 0.1f;
        float localY1 = ((float) this.usedHeight) * 0.9f;
        float deltaX = ((float) this.usedWidth) * 0.9f - localX1;
        float deltaY = localY1 - ((float) this.usedHeight) * 0.1f;
        if (this.cursor != null && this.cursor.moveToFirst()) {
            int game = 0;
            int indexDepth = this.cursor.getColumnIndex(GameColumns.DEPTH);
            int indexError = this.cursor.getColumnIndex(GameColumns.ERROR);
            int indexResult = this.cursor.getColumnIndex(GameColumns.RESULT);
            float oldX = localX1;
            float oldY = localY1;
            float count = (float) ((this.cursor.getCount() > 50 ? GRAPH_MAX_TICKS : this.cursor.getCount()) - 1);
            deltaX = (deltaX * count) / (1.0f + count);
            double level = 0.0d;
            do {
                int depth = this.cursor.getInt(indexDepth);
                int error = this.cursor.getInt(indexError);
                int result = this.cursor.getInt(indexResult);
                if (result != 0) {
                    float weight;
                    weight = result > 0 ? 0.25f : 0.05f;
                    level = (0.99d - ((double) weight)) * level + (getLevel(depth, error) * ((double) result)) * ((double) weight);
                }
                if (level < 0.0d) {
                    level = 0.0d;
                }
                if (this.cursor.getCount() - game <= 50) {
                    float newX;
                    newX = this.cursor.getCount() > 50 ? localX1 + (((float) (game - (this.cursor.getCount() - 50))) / count) * deltaX : localX1 + (((float) game) / count) * deltaX;
                    float newY = (float) (((double) localY1) - (((double) deltaY) * level) / 7.0d);
                    if (game == 0) {
                        oldX = newX;
                        oldY = newY;
                    }
                    Path path = new Path();
                    path.moveTo(0.25f + oldX, localY1);
                    path.lineTo(0.25f + oldX, oldY);
                    path.lineTo(newX - 0.25f, newY);
                    path.lineTo(newX - 0.25f, localY1);
                    path.lineTo(0.25f + oldX, localY1);
                    canvas.drawPath(path, this.graphFillPaint);
                    canvas.drawLine(oldX, oldY, newX, newY, this.graphPaint);
                    oldX = newX;
                    oldY = newY;
                }
                game++;
            } while (this.cursor.moveToNext());
        }
    }

    private void drawGrid(Canvas canvas) {
        float localX1 = ((float) this.usedWidth) * 0.1f;
        float localX2 = ((float) this.usedWidth) * 0.9f;
        float localY1 = ((float) this.usedHeight) * 0.9f;
        float localY2 = ((float) this.usedHeight) * 0.1f;
        float deltaX = localX2 - localX1;
        float deltaY = localY1 - localY2;
        float arrowLength = ((float) this.usedWidth) * 0.02f;
        float arrowBroadth = ((float) this.usedWidth) * 0.01f;
        float tickLength = ((float) this.usedWidth) * 0.01f;
        Path path = new Path();
        path.moveTo(localX1, localY2);
        path.lineTo(localX1, localY1);
        path.lineTo(localX2, localY1);
        path.moveTo(localX1 - arrowBroadth / 2.0f, localY2 + arrowLength);
        path.lineTo(localX1, localY2);
        path.lineTo(arrowBroadth / 2.0f + localX1, localY2 + arrowLength);
        path.moveTo(localX2 - arrowLength, localY1 - arrowBroadth / 2.0f);
        path.lineTo(localX2, localY1);
        path.lineTo(localX2 - arrowLength, arrowBroadth / 2.0f + localY1);
        int tick = 0;
        while (tick < 7) {
            path.moveTo(localX1, localY1 - (((float) tick) * deltaY) / 7.0f);
            path.lineTo(localX1 - tickLength, localY1 - (((float) tick) * deltaY) / 7.0f);
            tick++;
        }
        Path labelPath = new Path();
        labelPath.moveTo(localX1 - 4.0f * tickLength, localY1 - (1.0f * deltaY) / 7.0f + this.textPaint.measureText(getContext().getString(R.string.statisticsSkillBeginner)) / 2.0f);
        labelPath.lineTo(localX1 - 4.0f * tickLength, localY2);
        canvas.drawTextOnPath(getContext().getString(R.string.statisticsSkillBeginner), labelPath, 0.0f, 0.0f, this.textPaint);
        labelPath = new Path();
        labelPath.moveTo(localX1 - 4.0f * tickLength, localY1 - (3.5f * deltaY) / 7.0f + this.textPaint.measureText(getContext().getString(R.string.statisticsSkillAdvanced)) / 2.0f);
        labelPath.lineTo(localX1 - 4.0f * tickLength, localY2);
        canvas.drawTextOnPath(getContext().getString(R.string.statisticsSkillAdvanced), labelPath, 0.0f, 0.0f, this.textPaint);
        labelPath = new Path();
        labelPath.moveTo(localX1 - 4.0f * tickLength, localY1 - (6.0f * deltaY) / 7.0f + this.textPaint.measureText(getContext().getString(R.string.statisticsSkillExpert)) / 2.0f);
        labelPath.lineTo(localX1 - 4.0f * tickLength, localY2);
        canvas.drawTextOnPath(getContext().getString(R.string.statisticsSkillExpert), labelPath, 0.0f, 0.0f, this.textPaint);
        int skipTick = 1;
        int skipNamedTick = 1;
        int drawTicks = GameParameters.DEFAULT_ERROR_MARGIN;
        if (this.cursor != null) {
            int count;
            count = this.cursor.getCount() > 50 ? 50 : this.cursor.getCount();
            drawTicks = count;
            while (count / skipTick > 50) {
                skipTick++;
            }
            while (count / skipNamedTick > 11) {
                skipNamedTick++;
            }
        }
        tick = 0;
        while (tick < drawTicks) {
            if (tick % skipTick == 0) {
                path.moveTo((((float) tick) * deltaX) / ((float) drawTicks) + localX1, localY1);
                path.lineTo((((float) tick) * deltaX) / ((float) drawTicks) + localX1, localY1 + tickLength);
            }
            if (tick % skipNamedTick == 0) {
                canvas.drawText("" + tick, (((float) tick) * deltaX) / ((float) drawTicks) + localX1 - this.textPaint.measureText("" + tick) / 2.0f, 5.0f * tickLength + localY1, this.textPaint);
            }
            tick++;
        }
        canvas.drawPath(path, this.gridPaint);
        Path axisXPath = new Path();
        axisXPath.moveTo(0.040000003f * ((float) this.usedWidth) + localX2, this.textPaint.measureText(getContext().getString(R.string.statisticsAxisGames)) / 2.0f + localY1);
        axisXPath.lineTo(0.040000003f * ((float) this.usedWidth) + localX2, localY2);
        canvas.drawTextOnPath(getContext().getString(R.string.statisticsAxisGames), axisXPath, 0.0f, 0.0f, this.textPaint);
        canvas.drawText(getContext().getString(R.string.statisticsAxisSkill), localX1 - this.textPaint.measureText(getContext().getString(R.string.statisticsAxisSkill)) / 2.0f, localY2 - 0.025f * ((float) this.usedHeight), this.textPaint);
    }

    private static double getLevel(int searchDepth, int errorMargin) {
        return ((double) searchDepth) * Math.pow(1.0d - (((double) errorMargin) / 100.0d), 3.0d);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawColor(-16777216);
        drawGrid(canvas);
        drawGraph(canvas);
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int widthSpecMode = MeasureSpec.getMode(widthMeasureSpec);
        int widthSpecSize = MeasureSpec.getSize(widthMeasureSpec);
        int heightSpecMode = MeasureSpec.getMode(heightMeasureSpec);
        int heightSpecSize = MeasureSpec.getSize(heightMeasureSpec);
        if (heightSpecSize == 0) {
            this.usedWidth = widthSpecSize;
            this.usedHeight = Math.round(((float) widthSpecSize) / 1.3333334f);
        } else if (((float) heightSpecSize) * 1.3333334f > ((float) widthSpecSize)) {
            this.usedWidth = widthSpecSize;
            this.usedHeight = Math.round(((float) widthSpecSize) / 1.3333334f);
        } else {
            this.usedWidth = Math.round(((float) heightSpecSize) * 1.3333334f);
            this.usedHeight = heightSpecSize;
        }
        if (widthSpecMode == 1073741824) {
            this.viewWidth = widthSpecSize;
        } else {
            this.viewWidth = this.usedWidth;
        }
        if (heightSpecMode == 1073741824) {
            this.viewHeight = heightSpecSize;
        } else {
            this.viewHeight = this.usedHeight;
        }
        setMeasuredDimension(this.viewWidth, this.viewHeight);
    }

    public void setCursor(Cursor cursor) {
        this.cursor = cursor;
    }
}