package com.jirbo.adcolony;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import com.brightcove.player.event.Event;
import com.brightcove.player.media.PlaylistFields;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

class ADCV4VCConfirmationDialog extends ADCDialog {
    boolean cancel_down;
    boolean confirm_down;

    public ADCV4VCConfirmationDialog(String str, AdColonyV4VCAd adColonyV4VCAd) {
        this.amount = str;
        this.listener = adColonyV4VCAd;
        if (isReady()) {
            AdColony.activity().addContentView(this, new LayoutParams(-1, -1, 17));
            if (this.tiny_phone) {
                this.button_y += 20;
            }
        }
    }

    public void onDraw(Canvas canvas) {
        calculatePosition();
        int currentTimeMillis = (((int) (System.currentTimeMillis() - this.start_ms)) * 255) / 1000;
        if (currentTimeMillis > 128) {
            currentTimeMillis = 128;
        }
        canvas.drawARGB(currentTimeMillis, 0, 0, 0);
        this.img_bg.draw(canvas, this.left_x, this.top_y);
        int fontHeight = (fontHeight() * 3) / 2;
        int remainingViewsUntilReward = this.listener.getRemainingViewsUntilReward();
        if (this.listener.getViewsPerReward() == 1) {
            splitLine(this.amount, AdTrackerConstants.BLANK);
            if (one_line) {
                drawEmbossedText("Watch a video to earn", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * this.constant_4), canvas);
                drawEmbossedText(amount_line_1 + ".", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * this.constant_5), canvas);
            } else {
                drawEmbossedText("Watch a video to earn", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * this.constant_1), canvas);
                drawEmbossedText(amount_line_1, this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * this.constant_2), canvas);
                drawEmbossedText(amount_line_2 + ".", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * this.constant_3), canvas);
            }
        } else {
            String str;
            str = remainingViewsUntilReward == 1 ? Event.VIDEO : PlaylistFields.VIDEOS;
            splitLine(this.amount, AdTrackerConstants.BLANK + remainingViewsUntilReward + " more " + str + " to earn )?");
            if (one_line) {
                drawEmbossedText("Watch a sponsored video now (Only", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * this.constant_4), canvas);
                drawEmbossedText(AdTrackerConstants.BLANK + remainingViewsUntilReward + " more " + str + " to earn " + amount_line_1 + ")?", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * this.constant_5), canvas);
            } else {
                drawEmbossedText("Watch a sponsored video now (Only", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * this.constant_1), canvas);
                drawEmbossedText(AdTrackerConstants.BLANK + remainingViewsUntilReward + " more " + str + " to earn " + amount_line_1, this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * this.constant_2), canvas);
                drawEmbossedText(amount_line_2 + ")?", this.center_x, (int) (((double) this.center_y) - ((double) fontHeight) * this.constant_3), canvas);
            }
        }
        this.img_logo.draw(canvas, this.center_x - this.img_logo.width / 2, this.center_y - this.img_logo.height / 2);
        if (this.confirm_down) {
            this.img_confirm_down.draw(canvas, this.button_x1, this.button_y);
        } else {
            this.img_confirm_normal.draw(canvas, this.button_x1, this.button_y);
        }
        if (this.cancel_down) {
            this.img_cancel_down.draw(canvas, this.button_x2, this.button_y);
        } else {
            this.img_cancel_normal.draw(canvas, this.button_x2, this.button_y);
        }
        drawButtonText("Yes", this.button_x1, this.button_y, canvas);
        drawButtonText("No", this.button_x2, this.button_y, canvas);
        if (currentTimeMillis != 128) {
            invalidate();
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (motionEvent.getAction() == 1) {
            if (buttonContains(x, y, this.button_x1, this.button_y) && this.confirm_down) {
                current_dialog = null;
                ((ViewGroup) getParent()).removeView(this);
                this.listener.on_dialog_finished(true);
            } else if (buttonContains(x, y, this.button_x2, this.button_y) && this.cancel_down) {
                current_dialog = null;
                ((ViewGroup) getParent()).removeView(this);
                this.listener.on_dialog_finished(false);
                show = true;
                int i = 0;
                while (i < bitmaps.size()) {
                    ((Bitmap) bitmaps.get(i)).recycle();
                    i++;
                }
                bitmaps.clear();
            }
            this.cancel_down = false;
            this.confirm_down = false;
            invalidate();
        }
        if (motionEvent.getAction() == 0) {
            if (buttonContains(x, y, this.button_x1, this.button_y)) {
                this.confirm_down = true;
                invalidate();
            } else if (buttonContains(x, y, this.button_x2, this.button_y)) {
                this.cancel_down = true;
                invalidate();
            }
        }
        return true;
    }
}