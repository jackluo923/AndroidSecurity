package com.jirbo.adcolony;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.Display;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

class ADCDialog extends View {
    static String amount_line_1;
    static String amount_line_2;
    static boolean one_line;
    static double scale;
    static Paint text_paint;
    static float[] widths;
    AdColonyVideoAd ad;
    String amount;
    int button_x1;
    int button_x2;
    int button_y;
    int center_x;
    int center_y;
    double constant_1;
    double constant_2;
    double constant_3;
    double constant_4;
    double constant_5;
    int dialog_type;
    ADCImage img_bg;
    ADCImage img_cancel_down;
    ADCImage img_cancel_normal;
    ADCImage img_confirm_down;
    ADCImage img_confirm_normal;
    ADCImage img_done_down;
    ADCImage img_done_normal;
    ADCImage img_logo;
    int left_x;
    AdColonyV4VCAd listener;
    long start_ms;
    boolean tiny_phone;
    int top_y;

    static {
        amount_line_1 = AdTrackerConstants.BLANK;
        amount_line_2 = AdTrackerConstants.BLANK;
        one_line = true;
        text_paint = new Paint(1);
        widths = new float[80];
    }

    ADCDialog() {
        super(ADC.activity());
        this.constant_1 = 2.8d;
        this.constant_2 = 2.05d;
        this.constant_3 = 1.3d;
        this.constant_4 = 2.5d;
        this.constant_5 = 1.5d;
        this.start_ms = System.currentTimeMillis();
    }

    public ADCDialog(String str, int i, AdColonyVideoAd adColonyVideoAd) {
        super(AdColony.activity());
        this.constant_1 = 2.8d;
        this.constant_2 = 2.05d;
        this.constant_3 = 1.3d;
        this.constant_4 = 2.5d;
        this.constant_5 = 1.5d;
        this.start_ms = System.currentTimeMillis();
        this.amount = str;
        this.dialog_type = i;
        this.ad = adColonyVideoAd;
        if (isReady()) {
            AdColony.activity().addContentView(this, new LayoutParams(-1, -1, 17));
        }
    }

    boolean buttonContains(int i, int i2, int i3, int i4) {
        return i >= i3 && i2 >= i4 && i < this.img_confirm_normal.width + i3 && i2 < this.img_confirm_normal.height + i4;
    }

    void calculatePosition() {
        double d;
        d = this.tiny_phone ? 12.0d : 16.0d;
        Display defaultDisplay = ADC.activity().getWindowManager().getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        this.left_x = (width - this.img_bg.width) / 2;
        this.top_y = (height - this.img_bg.height) / 2 - 80;
        this.center_x = this.left_x + this.img_bg.width / 2;
        this.center_y = this.top_y + this.img_bg.height / 2;
        this.button_y = this.top_y + ((int) (((double) this.img_bg.height) - ((double) this.img_confirm_normal.height) + scale * d));
        this.button_x1 = this.left_x + ((int) (scale * d));
        this.button_x2 = ((int) (((double) this.img_bg.width) - d * scale + ((double) this.img_confirm_normal.width))) + this.left_x;
    }

    void drawButtonText(String str, int i, int i2, Canvas canvas) {
        drawShadowText(str, this.img_confirm_normal.width / 2 + i, this.img_confirm_normal.height / 2 + i2 + (fontHeight() * 4) / 10, canvas);
    }

    void drawEmbossedText(String str, int i, int i2, Canvas canvas) {
        int textWidthOf = i - textWidthOf(str) / 2;
        text_paint.setColor(-986896);
        canvas.drawText(str, (float) (textWidthOf + 1), (float) (i2 + 1), text_paint);
        text_paint.setColor(-8355712);
        canvas.drawText(str, (float) textWidthOf, (float) i2, text_paint);
    }

    void drawShadowText(String str, int i, int i2, Canvas canvas) {
        int textWidthOf = i - textWidthOf(str) / 2;
        text_paint.setColor(-8355712);
        canvas.drawText(str, (float) (textWidthOf + 2), (float) (i2 + 2), text_paint);
        text_paint.setColor(-1);
        canvas.drawText(str, (float) textWidthOf, (float) i2, text_paint);
    }

    int fontHeight() {
        return (int) text_paint.getTextSize();
    }

    public boolean isReady() {
        double d = 2.5d;
        double d2 = 0.8d;
        if (this.img_bg == null) {
            double d3;
            this.img_bg = new ADCImage(ADC.get_String("pre_popup_bg"));
            this.img_logo = new ADCImage(ADC.get_String("v4vc_logo"));
            this.img_confirm_normal = new ADCImage(ADC.get_String("yes_button_normal"));
            this.img_confirm_down = new ADCImage(ADC.get_String("yes_button_down"));
            this.img_cancel_normal = new ADCImage(ADC.get_String("no_button_normal"));
            this.img_cancel_down = new ADCImage(ADC.get_String("no_button_down"));
            this.img_done_normal = new ADCImage(ADC.get_String("done_button_normal"));
            this.img_done_down = new ADCImage(ADC.get_String("done_button_down"));
            Display defaultDisplay = ADC.activity().getWindowManager().getDefaultDisplay();
            int width = defaultDisplay.getWidth();
            int height = defaultDisplay.getHeight();
            d3 = height > width ? ((double) (height - width)) / 360.0d : ((double) (width - height)) / 360.0d;
            if (d3 < 0.8d && !is_tablet) {
                this.tiny_phone = true;
            }
            if (d3 <= 2.5d) {
                d = d3;
            }
            if (d >= 0.8d) {
                d2 = d;
            } else if (!is_tablet) {
                d2 = 1.7d;
            }
            scale = d2;
            if (this.tiny_phone) {
                this.constant_1 = 2.6d;
                this.constant_2 = 1.8d;
                this.constant_3 = 1.0d;
                this.constant_4 = 2.2d;
                this.constant_5 = 1.2d;
            }
            this.img_bg.resize(d2 / 1.8d);
            this.img_logo.resize(d2 / 1.8d);
            this.img_confirm_down.resize(d2 / 1.8d);
            this.img_cancel_down.resize(d2 / 1.8d);
            this.img_confirm_normal.resize(d2 / 1.8d);
            this.img_cancel_normal.resize(d2 / 1.8d);
            this.img_done_down.resize(d2 / 1.8d);
            this.img_done_normal.resize(d2 / 1.8d);
            text_paint.setTextSize((float) (18.0d * d2));
            if (this.tiny_phone) {
                text_paint.setTextSize((float) (d2 * 9.0d));
            }
            text_paint.setFakeBoldText(true);
        }
        return true;
    }

    void splitLine(String str, String str2) {
        int textWidthOf = textWidthOf(str);
        amount_line_1 = AdTrackerConstants.BLANK;
        amount_line_2 = AdTrackerConstants.BLANK;
        String str3 = AdTrackerConstants.BLANK;
        if (textWidthOf > this.img_bg.width - textWidthOf("WW") - textWidthOf(str2)) {
            one_line = false;
            textWidthOf = 0;
            String str4 = str3;
            int i = 0;
            while (i < this.img_bg.width - textWidthOf("WW") - textWidthOf(str2)) {
                str4 = str4 + str.charAt(textWidthOf);
                textWidthOf++;
                i = textWidthOf(str4);
            }
            int i2 = 0;
            int i3 = 0;
            while (i2 < textWidthOf) {
                if (str4.charAt(i2) != ' ' || i2 < 5) {
                    amount_line_1 = i3 < 5 ? str.substring(0, textWidthOf) : amount_line_1;
                    i = i3;
                } else {
                    amount_line_1 = str.substring(0, i2);
                    i = i2;
                }
                i2++;
                i3 = i;
            }
            amount_line_2 = i3 < 5 ? str.substring(textWidthOf) : str.substring(i3);
        } else {
            one_line = true;
            amount_line_1 = str;
            amount_line_2 = AdTrackerConstants.BLANK;
        }
    }

    int textWidthOf(String str) {
        text_paint.getTextWidths(str, widths);
        float f = BitmapDescriptorFactory.HUE_RED;
        int i = 0;
        while (i < str.length()) {
            f += widths[i];
            i++;
        }
        return (int) f;
    }
}