package com.jirbo.adcolony;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.Display;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import com.brightcove.player.event.Event;
import com.brightcove.player.media.PlaylistFields;
import com.google.android.gms.cast.Cast;

class ADCV4VCResultsDialog extends ADCDialog {
    boolean done_down;

    public ADCV4VCResultsDialog(String str, AdColonyV4VCAd adColonyV4VCAd) {
        this.amount = str;
        this.listener = adColonyV4VCAd;
        if (isReady()) {
            AdColony.activity().addContentView(this, new LayoutParams(-1, -1, 17));
        }
    }

    void calculatePosition() {
        double d;
        Display defaultDisplay = ADC.activity().getWindowManager().getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        d = this.tiny_phone ? 12.0d : 16.0d;
        this.left_x = (width - this.img_bg.width) / 2;
        this.top_y = (height - this.img_bg.height) / 2 - 80;
        this.center_x = this.left_x + this.img_bg.width / 2;
        this.center_y = this.top_y + this.img_bg.height / 2;
        this.button_y = ((int) (((double) this.img_bg.height) - d * scale + ((double) this.img_done_normal.height))) + this.top_y;
        this.button_x1 = this.center_x - this.img_done_normal.width / 2;
    }

    public void onDraw(Canvas canvas) {
        calculatePosition();
        int currentTimeMillis = (((int) (System.currentTimeMillis() - this.start_ms)) * 255) / 1000;
        if (currentTimeMillis > 128) {
            currentTimeMillis = Cast.MAX_NAMESPACE_LENGTH;
        }
        canvas.drawARGB(currentTimeMillis, 0, 0, 0);
        this.img_bg.draw(canvas, this.left_x, this.top_y);
        int fontHeight = (fontHeight() * 3) / 2;
        int remainingViewsUntilReward = this.listener.getRemainingViewsUntilReward();
        if (remainingViewsUntilReward == this.listener.getViewsPerReward() || remainingViewsUntilReward == 0) {
            splitLine(this.amount, "video. You earned");
            if (one_line) {
                drawEmbossedText("Thanks for watching the sponsored", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * 2.5d), canvas);
                drawEmbossedText("video. You earned " + amount_line_1 + ".", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * 1.5d), canvas);
            } else {
                drawEmbossedText("Thanks for watching the sponsored", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * 2.8d), canvas);
                drawEmbossedText("video. You earned " + amount_line_1, this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * 2.05d), canvas);
                drawEmbossedText(amount_line_2 + ".", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * 1.3d), canvas);
            }
        } else {
            String str;
            splitLine(this.amount, "to earn ");
            str = remainingViewsUntilReward == 1 ? Event.VIDEO : PlaylistFields.VIDEOS;
            if (one_line) {
                drawEmbossedText("Thank you. Watch " + remainingViewsUntilReward + " more " + str, this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * 2.5d), canvas);
                drawEmbossedText("to earn " + amount_line_1 + ".", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * 1.5d), canvas);
            } else {
                drawEmbossedText("Thank you. Watch " + remainingViewsUntilReward + " more " + str, this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * 2.8d), canvas);
                drawEmbossedText("to earn " + amount_line_1, this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * 2.05d), canvas);
                drawEmbossedText(amount_line_2 + ".", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * 1.3d), canvas);
            }
        }
        this.img_logo.draw(canvas, this.center_x - this.img_logo.width / 2, this.center_y - this.img_logo.height / 2);
        if (this.done_down) {
            this.img_done_down.draw(canvas, this.button_x1, this.button_y);
        } else {
            this.img_done_normal.draw(canvas, this.button_x1, this.button_y);
        }
        drawButtonText("Ok", this.button_x1, this.button_y, canvas);
        if (currentTimeMillis != 128) {
            invalidate();
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (motionEvent.getAction() == 1) {
            if (buttonContains(x, y, this.button_x1, this.button_y) && this.done_down) {
                current_dialog = null;
                ((ViewGroup) getParent()).removeView(this);
                int i = 0;
                while (i < bitmaps.size()) {
                    ((Bitmap) bitmaps.get(i)).recycle();
                    i++;
                }
                bitmaps.clear();
                show = true;
            }
            this.done_down = false;
            invalidate();
        }
        if (motionEvent.getAction() == 0 && buttonContains(x, y, this.button_x1, this.button_y)) {
            this.done_down = true;
            invalidate();
        }
        return true;
    }
}