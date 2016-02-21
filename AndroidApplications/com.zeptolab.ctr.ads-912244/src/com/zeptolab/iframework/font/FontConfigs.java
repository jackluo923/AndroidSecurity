package com.zeptolab.iframework.font;

import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Typeface;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class FontConfigs {
    protected static final int ctrblack = -16777216;
    protected static final int ctrwhite = -1;

    public enum FONT {
        BIG,
        SMALL
    }

    public static class FontConfig {
        protected Paint backgroundPaint;
        public boolean bold;
        public float charoff;
        protected Paint letterPaint;
        public float lineoff;
        public float o_bottom;
        public float o_top;
        public float o_xTotal;
        public float size;
        public float spacewidth;
        protected Paint strokePaint;

        public void generateBackgroundPaint() {
            this.backgroundPaint = new Paint();
            this.backgroundPaint.setColor(0);
            this.backgroundPaint.setStyle(Style.FILL);
            this.backgroundPaint.setXfermode(new PorterDuffXfermode(Mode.CLEAR));
        }

        public void generateLetterPaint(int i) {
            this.letterPaint = new Paint();
            this.letterPaint.setAntiAlias(true);
            this.letterPaint.setColor(i);
            this.letterPaint.setStyle(Style.FILL);
            this.letterPaint.setTextSize(this.size);
            this.letterPaint.setTypeface(Typeface.SANS_SERIF);
            this.letterPaint.setSubpixelText(true);
            this.letterPaint.setFakeBoldText(this.bold);
        }

        public void generateStrokePaint(int i, float f, float f2, float f3) {
            this.strokePaint = new Paint();
            this.strokePaint.setAntiAlias(true);
            this.strokePaint.setColor(i);
            this.strokePaint.setStyle(Style.FILL_AND_STROKE);
            this.strokePaint.setStrokeWidth(f);
            this.strokePaint.setTextSize(this.size);
            this.strokePaint.setTypeface(Typeface.SANS_SERIF);
            this.strokePaint.setStrokeCap(Cap.ROUND);
            this.strokePaint.setStrokeJoin(Join.ROUND);
            this.strokePaint.setSubpixelText(true);
            this.strokePaint.setShadowLayer(f2, BitmapDescriptorFactory.HUE_RED, f3, i);
            this.strokePaint.setFakeBoldText(this.bold);
        }
    }

    public static FontConfig getConfig(FONT font, int i) {
        FontConfig fontConfig = new FontConfig();
        fontConfig.generateBackgroundPaint();
        if (font.equals(FONT.BIG)) {
            switch (i) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    fontConfig.size = 23.0f;
                    fontConfig.o_top = 8.0f;
                    fontConfig.o_bottom = 10.0f;
                    fontConfig.o_xTotal = 2.0f;
                    fontConfig.bold = true;
                    fontConfig.charoff = -2.0f;
                    fontConfig.lineoff = -12.0f;
                    fontConfig.spacewidth = 10.0f;
                    fontConfig.generateStrokePaint(ctrblack, 1.6f, 0.4f, 0.9f);
                    fontConfig.generateLetterPaint(ctrwhite);
                    break;
                case GoogleScorer.CLIENT_GAMES:
                    fontConfig.size = 37.0f;
                    fontConfig.o_top = 10.0f;
                    fontConfig.o_bottom = 12.0f;
                    fontConfig.o_xTotal = 5.0f;
                    fontConfig.bold = true;
                    fontConfig.charoff = -2.0f;
                    fontConfig.lineoff = -12.0f;
                    fontConfig.spacewidth = 10.0f;
                    fontConfig.generateStrokePaint(ctrblack, 3.2f, 1.6f, 2.0f);
                    fontConfig.generateLetterPaint(ctrwhite);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    fontConfig.size = 63.0f;
                    fontConfig.o_top = 16.0f;
                    fontConfig.o_bottom = 15.0f;
                    fontConfig.o_xTotal = 7.0f;
                    fontConfig.bold = true;
                    fontConfig.charoff = -2.0f;
                    fontConfig.lineoff = -12.0f;
                    fontConfig.spacewidth = 10.0f;
                    fontConfig.generateStrokePaint(ctrblack, 4.8f, 2.4f, 2.5f);
                    fontConfig.generateLetterPaint(ctrwhite);
                    break;
                default:
                    throw new Exception("Invalid Resolution");
            }
        } else if (font.equals(FONT.SMALL)) {
            switch (i) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    fontConfig.size = 16.0f;
                    fontConfig.o_top = 16.0f;
                    fontConfig.o_bottom = 2.0f;
                    fontConfig.o_xTotal = 1.5f;
                    fontConfig.bold = false;
                    fontConfig.charoff = -1.5f;
                    fontConfig.lineoff = -12.0f;
                    fontConfig.spacewidth = 10.0f;
                    fontConfig.generateLetterPaint(ctrblack);
                    break;
                case GoogleScorer.CLIENT_GAMES:
                    fontConfig.size = 24.0f;
                    fontConfig.o_top = 24.0f;
                    fontConfig.o_bottom = 4.0f;
                    fontConfig.o_xTotal = 2.0f;
                    fontConfig.bold = false;
                    fontConfig.charoff = -1.0f;
                    fontConfig.lineoff = -12.0f;
                    fontConfig.spacewidth = 10.0f;
                    fontConfig.generateLetterPaint(ctrblack);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    fontConfig.size = 39.0f;
                    fontConfig.o_top = 40.0f;
                    fontConfig.o_bottom = 6.0f;
                    fontConfig.o_xTotal = 2.0f;
                    fontConfig.bold = false;
                    fontConfig.charoff = -1.0f;
                    fontConfig.lineoff = -12.0f;
                    fontConfig.spacewidth = 10.0f;
                    fontConfig.generateLetterPaint(ctrblack);
                    break;
                default:
                    throw new Exception("Invalid Resolution");
            }
        } else {
            throw new Exception("Invalid Font");
        }
        return fontConfig;
    }
}