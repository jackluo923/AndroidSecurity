package com.jirbo.adcolony;

import android.graphics.Canvas;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.google.android.gms.cast.Cast;

class ADCSkipVideoDialog extends ADCDialog {
    static ADCSkipVideoDialog current;
    static boolean skip_dialog;
    boolean cancel_down;
    boolean confirm_down;
    ADCVideo video;

    public ADCSkipVideoDialog(ADCVideo aDCVideo, AdColonyV4VCAd adColonyV4VCAd) {
        this.video = aDCVideo;
        this.listener = adColonyV4VCAd;
        aDCVideo.video_view.pause();
        current = this;
        if (!isReady()) {
        }
    }

    void calculatePosition() {
        int i = this.video.display_width;
        int i2 = this.video.display_height;
        this.left_x = (i - this.img_bg.width) / 2;
        this.top_y = (i2 - this.img_bg.height) / 2;
        this.center_x = this.left_x + this.img_bg.width / 2;
        this.center_y = this.top_y + this.img_bg.height / 2;
        this.button_y = this.top_y + ((int) (((double) this.img_bg.height) - ((double) this.img_confirm_normal.height) + scale * 16.0d));
        this.button_x1 = this.left_x + ((int) (scale * 16.0d));
        this.button_x2 = this.left_x + ((int) (((double) this.img_bg.width) - ((double) this.img_confirm_normal.width) + scale * 16.0d));
    }

    public void onDraw(Canvas canvas) {
        int i = Cast.MAX_NAMESPACE_LENGTH;
        if (this.video.video_view != null) {
            skip_dialog = true;
            calculatePosition();
            int currentTimeMillis = (((int) (System.currentTimeMillis() - this.start_ms)) * 255) / 1000;
            if (currentTimeMillis <= 128) {
                i = currentTimeMillis;
            }
            canvas.drawARGB(i, 0, 0, 0);
            this.img_bg.draw(canvas, this.left_x, this.top_y);
            i = (fontHeight() * 3) / 2;
            drawEmbossedText("Completion is required to receive", this.center_x, (int) (((double) this.center_y) - ((double) i) * 2.75d), canvas);
            drawEmbossedText("your reward.", this.center_x, this.center_y - i * 2, canvas);
            drawEmbossedText("Are you sure you want to skip?", this.center_x, (int) (((double) this.center_y) - ((double) i) * 1.25d), canvas);
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
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.video.video_view != null && i == 4;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        ADCVideo aDCVideo = this.video;
        if (ADCVideo.video_finished) {
            current = null;
            return this.video.hud.onTouchEvent(motionEvent);
        } else {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 1) {
                if (buttonContains(x, y, this.button_x1, this.button_y) && this.confirm_down) {
                    current = null;
                    skip_dialog = false;
                    show_post_popup = false;
                    end_card_finished_handler.notify_canceled();
                    this.video.finish();
                } else if (buttonContains(x, y, this.button_x2, this.button_y) && this.cancel_down) {
                    current = null;
                    skip_dialog = false;
                    this.video.video_view.start();
                }
                this.confirm_down = false;
                this.cancel_down = false;
                invalidate();
            }
            if (motionEvent.getAction() != 0) {
                return true;
            }
            if (buttonContains(x, y, this.button_x1, this.button_y)) {
                this.confirm_down = true;
                invalidate();
                return true;
            } else if (!buttonContains(x, y, this.button_x2, this.button_y)) {
                return true;
            } else {
                this.cancel_down = true;
                invalidate();
                return true;
            }
        }
    }
}